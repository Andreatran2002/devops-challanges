<template>
  <div class="about-container">
    <div class="about-content">
      <div class="profile-section">
        <div class="profile-image">
          <div class="image-placeholder">
            <span>DPV</span>
          </div>
        </div>
        <div class="profile-info">
          <h1 class="name">Diep Phuong Vy</h1>
          <h2 class="title">DevOps Engineer & Cloud Specialist</h2>
          <p class="description">
            Passionate DevOps engineer with expertise in cloud infrastructure, CI/CD pipelines, 
            and automation. Dedicated to building scalable and reliable systems that drive 
            business success through modern DevOps practices.
          </p>
          <div class="quick-info">
            <div class="info-item">
              <span class="label">Location:</span>
              <span class="value">Ho Chi Minh City, Vietnam</span>
            </div>
            <div class="info-item">
              <span class="label">Experience:</span>
              <span class="value">3+ Years</span>
            </div>
            <div class="info-item">
              <span class="label">Specialization:</span>
              <span class="value">AWS, Docker, Kubernetes, CI/CD</span>
            </div>
          </div>
          <div class="cta-buttons">
            <button class="btn btn-primary">Download CV</button>
            <button class="btn btn-secondary">View Projects</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.about-container {
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
}

.about-content {
  background: rgba(255, 255, 255, 0.95);
  border-radius: 20px;
  padding: 3rem;
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
  backdrop-filter: blur(10px);
}

.profile-section {
  display: grid;
  grid-template-columns: 1fr 2fr;
  gap: 3rem;
  align-items: center;
}

.profile-image {
  display: flex;
  justify-content: center;
}

.image-placeholder {
  width: 200px;
  height: 200px;
  border-radius: 50%;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 3rem;
  font-weight: bold;
  color: white;
  box-shadow: 0 10px 30px rgba(102, 126, 234, 0.3);
}

.profile-info {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.name {
  font-size: 3rem;
  font-weight: 700;
  color: #333;
  margin: 0;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.title {
  font-size: 1.5rem;
  font-weight: 500;
  color: #666;
  margin: 0;
}

.description {
  font-size: 1.1rem;
  line-height: 1.6;
  color: #555;
  margin: 0;
}

.quick-info {
  display: flex;
  flex-direction: column;
  gap: 0.8rem;
}

.info-item {
  display: flex;
  align-items: center;
  gap: 1rem;
}

.label {
  font-weight: 600;
  color: #333;
  min-width: 120px;
}

.value {
  color: #666;
}

.cta-buttons {
  display: flex;
  gap: 1rem;
  margin-top: 1rem;
}

.btn {
  padding: 0.8rem 2rem;
  border: none;
  border-radius: 25px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
  text-decoration: none;
  display: inline-block;
}

.btn-primary {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
}

.btn-primary:hover {
  transform: translateY(-2px);
  box-shadow: 0 10px 20px rgba(102, 126, 234, 0.3);
}

.btn-secondary {
  background: transparent;
  color: #667eea;
  border: 2px solid #667eea;
}

.btn-secondary:hover {
  background: #667eea;
  color: white;
  transform: translateY(-2px);
}

@media (max-width: 768px) {
  .profile-section {
    grid-template-columns: 1fr;
    text-align: center;
  }
  
  .about-content {
    padding: 2rem;
  }
  
  .name {
    font-size: 2.5rem;
  }
  
  .cta-buttons {
    flex-direction: column;
    align-items: center;
  }
  
  .info-item {
    flex-direction: column;
    gap: 0.5rem;
  }
  
  .label {
    min-width: auto;
  }
}
</style> 