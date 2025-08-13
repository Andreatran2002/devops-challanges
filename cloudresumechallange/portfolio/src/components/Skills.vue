<template>
  <div class="skills-container">
    <div class="skills-content">
      <h2 class="section-title">Technical Skills</h2>
      
      <div class="skills-grid">
        <div class="skill-category" v-for="category in skillCategories" :key="category.name">
          <h3 class="category-title">{{ category.name }}</h3>
          <div class="skills-list">
            <div 
              class="skill-item" 
              v-for="skill in category.skills" 
              :key="skill.name"
              @mouseenter="skill.hovered = true"
              @mouseleave="skill.hovered = false"
            >
              <div class="skill-info">
                <span class="skill-name">{{ skill.name }}</span>
                <span class="skill-level">{{ skill.level }}%</span>
              </div>
              <div class="skill-bar">
                <div 
                  class="skill-progress" 
                  :style="{ width: skill.level + '%' }"
                  :class="{ 'animate': skill.hovered }"
                ></div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="certifications-section">
        <h3 class="certifications-title">Certifications</h3>
        <div class="certifications-grid">
          <div class="certification-card" v-for="cert in certifications" :key="cert.name">
            <div class="cert-icon">🏆</div>
            <div class="cert-info">
              <h4>{{ cert.name }}</h4>
              <p>{{ cert.issuer }}</p>
              <span class="cert-date">{{ cert.date }}</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const skillCategories = ref([
  {
    name: "Cloud & Infrastructure",
    skills: [
      { name: "AWS", level: 90, hovered: false },
      { name: "Docker", level: 85, hovered: false },
      { name: "Kubernetes", level: 80, hovered: false },
      { name: "Terraform", level: 85, hovered: false },
      { name: "Ansible", level: 75, hovered: false }
    ]
  },
  {
    name: "CI/CD & Automation",
    skills: [
      { name: "Jenkins", level: 85, hovered: false },
      { name: "GitLab CI", level: 80, hovered: false },
      { name: "GitHub Actions", level: 75, hovered: false },
      { name: "ArgoCD", level: 70, hovered: false },
      { name: "Helm", level: 75, hovered: false }
    ]
  },
  {
    name: "Programming & Scripting",
    skills: [
      { name: "Python", level: 85, hovered: false },
      { name: "Bash/Shell", level: 90, hovered: false },
      { name: "JavaScript", level: 70, hovered: false },
      { name: "Go", level: 65, hovered: false },
      { name: "YAML/JSON", level: 95, hovered: false }
    ]
  },
  {
    name: "Monitoring & Observability",
    skills: [
      { name: "Prometheus", level: 80, hovered: false },
      { name: "Grafana", level: 75, hovered: false },
      { name: "ELK Stack", level: 70, hovered: false },
      { name: "Jaeger", level: 65, hovered: false },
      { name: "Datadog", level: 70, hovered: false }
    ]
  }
])

const certifications = ref([
  {
    name: "AWS Certified Solutions Architect",
    issuer: "Amazon Web Services",
    date: "2023"
  },
  {
    name: "Certified Kubernetes Administrator",
    issuer: "Cloud Native Computing Foundation",
    date: "2023"
  },
  {
    name: "HashiCorp Certified Terraform Associate",
    issuer: "HashiCorp",
    date: "2022"
  },
  {
    name: "Docker Certified Associate",
    issuer: "Docker Inc.",
    date: "2022"
  }
])
</script>

<style scoped>
.skills-container {
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
}

.skills-content {
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

.skills-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin-bottom: 3rem;
}

.skill-category {
  background: #f8f9fa;
  border-radius: 15px;
  padding: 2rem;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

.skill-category:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
}

.category-title {
  font-size: 1.3rem;
  font-weight: 600;
  color: #333;
  margin-bottom: 1.5rem;
  text-align: center;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.skills-list {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.skill-item {
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
}

.skill-info {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.skill-name {
  font-weight: 500;
  color: #333;
}

.skill-level {
  font-size: 0.9rem;
  color: #667eea;
  font-weight: 600;
}

.skill-bar {
  height: 8px;
  background: #e9ecef;
  border-radius: 4px;
  overflow: hidden;
}

.skill-progress {
  height: 100%;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border-radius: 4px;
  transition: width 0.8s ease;
}

.skill-progress.animate {
  animation: pulse 1s ease-in-out;
}

@keyframes pulse {
  0% { opacity: 1; }
  50% { opacity: 0.7; }
  100% { opacity: 1; }
}

.certifications-section {
  margin-top: 3rem;
}

.certifications-title {
  font-size: 1.8rem;
  font-weight: 600;
  color: #333;
  margin-bottom: 2rem;
  text-align: center;
}

.certifications-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
}

.certification-card {
  display: flex;
  align-items: center;
  gap: 1rem;
  background: #f8f9fa;
  border-radius: 15px;
  padding: 1.5rem;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

.certification-card:hover {
  transform: translateY(-3px);
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
}

.cert-icon {
  font-size: 2rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.cert-info h4 {
  font-size: 1rem;
  font-weight: 600;
  color: #333;
  margin: 0 0 0.3rem 0;
}

.cert-info p {
  font-size: 0.9rem;
  color: #666;
  margin: 0 0 0.3rem 0;
}

.cert-date {
  font-size: 0.8rem;
  color: #667eea;
  font-weight: 500;
}

@media (max-width: 768px) {
  .skills-content {
    padding: 2rem;
  }
  
  .section-title {
    font-size: 2rem;
  }
  
  .skills-grid {
    grid-template-columns: 1fr;
  }
  
  .certifications-grid {
    grid-template-columns: 1fr;
  }
  
  .skill-category {
    padding: 1.5rem;
  }
}
</style> 