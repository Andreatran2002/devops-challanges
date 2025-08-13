<template>
  <div class="contact-container">
    <div class="contact-content">
      <h2 class="section-title">Get In Touch</h2>
      
      <div class="contact-grid">
        <div class="contact-info">
          <h3>Let's Connect</h3>
          <p class="contact-description">
            I'm always interested in new opportunities and exciting projects. 
            Whether you have a question or just want to say hi, feel free to reach out!
          </p>
          
          <div class="contact-methods">
            <div class="contact-method" v-for="method in contactMethods" :key="method.type">
              <div class="method-icon">{{ method.icon }}</div>
              <div class="method-details">
                <h4>{{ method.title }}</h4>
                <a 
                  v-if="method.link" 
                  :href="method.link" 
                  target="_blank"
                  class="method-link"
                >
                  {{ method.value }}
                </a>
                <span v-else class="method-value">{{ method.value }}</span>
              </div>
            </div>
          </div>
          
          <div class="social-links">
            <h4>Follow Me</h4>
            <div class="social-icons">
              <a 
                v-for="social in socialLinks" 
                :key="social.name"
                :href="social.url" 
                target="_blank"
                class="social-icon"
                :title="social.name"
              >
                {{ social.icon }}
              </a>
            </div>
          </div>
        </div>
        
        <div class="contact-form">
          <h3>Send Message</h3>
          <form @submit.prevent="submitForm">
            <div class="form-group">
              <label for="name">Name</label>
              <input 
                type="text" 
                id="name" 
                v-model="form.name" 
                required
                placeholder="Your name"
              />
            </div>
            
            <div class="form-group">
              <label for="email">Email</label>
              <input 
                type="email" 
                id="email" 
                v-model="form.email" 
                required
                placeholder="your.email@example.com"
              />
            </div>
            
            <div class="form-group">
              <label for="subject">Subject</label>
              <input 
                type="text" 
                id="subject" 
                v-model="form.subject" 
                required
                placeholder="What's this about?"
              />
            </div>
            
            <div class="form-group">
              <label for="message">Message</label>
              <textarea 
                id="message" 
                v-model="form.message" 
                required
                rows="5"
                placeholder="Tell me about your project or opportunity..."
              ></textarea>
            </div>
            
            <button type="submit" class="submit-btn" :disabled="isSubmitting">
              <span v-if="isSubmitting">Sending...</span>
              <span v-else>Send Message</span>
            </button>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const isSubmitting = ref(false)
const form = ref({
  name: '',
  email: '',
  subject: '',
  message: ''
})

const contactMethods = ref([
  {
    type: 'email',
    icon: '📧',
    title: 'Email',
    value: 'diepphuongvy@example.com',
    link: 'mailto:diepphuongvy@example.com'
  },
  {
    type: 'phone',
    icon: '📱',
    title: 'Phone',
    value: '+84 123 456 789',
    link: 'tel:+84123456789'
  },
  {
    type: 'location',
    icon: '📍',
    title: 'Location',
    value: 'Ho Chi Minh City, Vietnam',
    link: null
  },
  {
    type: 'linkedin',
    icon: '💼',
    title: 'LinkedIn',
    value: 'linkedin.com/in/diepphuongvy',
    link: 'https://linkedin.com/in/diepphuongvy'
  }
])

const socialLinks = ref([
  {
    name: 'GitHub',
    icon: '🐙',
    url: 'https://github.com/diepphuongvy'
  },
  {
    name: 'LinkedIn',
    icon: '💼',
    url: 'https://linkedin.com/in/diepphuongvy'
  },
  {
    name: 'Twitter',
    icon: '🐦',
    url: 'https://twitter.com/diepphuongvy'
  },
  {
    name: 'Dev.to',
    icon: '📝',
    url: 'https://dev.to/diepphuongvy'
  }
])

const submitForm = async () => {
  isSubmitting.value = true
  
  // Simulate form submission
  await new Promise(resolve => setTimeout(resolve, 2000))
  
  // Here you would typically send the form data to your backend
  console.log('Form submitted:', form.value)
  
  // Reset form
  form.value = {
    name: '',
    email: '',
    subject: '',
    message: ''
  }
  
  isSubmitting.value = false
  
  // Show success message (you could add a toast notification here)
  alert('Thank you for your message! I\'ll get back to you soon.')
}
</script>

<style scoped>
.contact-container {
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
}

.contact-content {
  background: rgba(255, 255, 255, 0.95);
  border-radius: 20px;
  padding: 3rem;
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
  backdrop-filter: blur(10px);
}

.section-title {
  text-align: center;
  font-size: 2.5rem;
  font-weight: 700;
  color: #333;
  margin-bottom: 3rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.contact-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 3rem;
}

.contact-info h3,
.contact-form h3 {
  font-size: 1.8rem;
  font-weight: 600;
  color: #333;
  margin-bottom: 1.5rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.contact-description {
  color: #555;
  line-height: 1.6;
  margin-bottom: 2rem;
  font-size: 1.1rem;
}

.contact-methods {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  margin-bottom: 2rem;
}

.contact-method {
  display: flex;
  align-items: center;
  gap: 1rem;
  padding: 1rem;
  background: #f8f9fa;
  border-radius: 15px;
  transition: transform 0.3s ease;
}

.contact-method:hover {
  transform: translateY(-2px);
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.method-icon {
  font-size: 1.5rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.method-details h4 {
  font-size: 1rem;
  font-weight: 600;
  color: #333;
  margin: 0 0 0.3rem 0;
}

.method-link,
.method-value {
  color: #667eea;
  text-decoration: none;
  font-size: 0.9rem;
}

.method-link:hover {
  text-decoration: underline;
}

.social-links h4 {
  font-size: 1.2rem;
  font-weight: 600;
  color: #333;
  margin-bottom: 1rem;
}

.social-icons {
  display: flex;
  gap: 1rem;
}

.social-icon {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 50px;
  height: 50px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  border-radius: 50%;
  text-decoration: none;
  font-size: 1.2rem;
  transition: transform 0.3s ease;
}

.social-icon:hover {
  transform: translateY(-3px);
  box-shadow: 0 10px 20px rgba(102, 126, 234, 0.3);
}

/* Form Styles */
.contact-form {
  background: #f8f9fa;
  border-radius: 15px;
  padding: 2rem;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.form-group {
  margin-bottom: 1.5rem;
}

.form-group label {
  display: block;
  font-weight: 600;
  color: #333;
  margin-bottom: 0.5rem;
}

.form-group input,
.form-group textarea {
  width: 100%;
  padding: 0.8rem;
  border: 2px solid #e9ecef;
  border-radius: 10px;
  font-size: 1rem;
  transition: border-color 0.3s ease;
  background: white;
}

.form-group input:focus,
.form-group textarea:focus {
  outline: none;
  border-color: #667eea;
  box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
}

.form-group textarea {
  resize: vertical;
  min-height: 120px;
}

.submit-btn {
  width: 100%;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  border: none;
  padding: 1rem 2rem;
  border-radius: 25px;
  font-size: 1.1rem;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
}

.submit-btn:hover:not(:disabled) {
  transform: translateY(-2px);
  box-shadow: 0 10px 20px rgba(102, 126, 234, 0.3);
}

.submit-btn:disabled {
  opacity: 0.7;
  cursor: not-allowed;
}

@media (max-width: 768px) {
  .contact-content {
    padding: 2rem;
  }
  
  .section-title {
    font-size: 2rem;
  }
  
  .contact-grid {
    grid-template-columns: 1fr;
    gap: 2rem;
  }
  
  .contact-form {
    padding: 1.5rem;
  }
  
  .social-icons {
    justify-content: center;
  }
}
</style> 