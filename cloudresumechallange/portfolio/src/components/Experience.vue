<template>
  <div class="experience-container">
    <div class="experience-content">
      <h2 class="section-title">Professional Experience</h2>
      <div class="timeline">
        <div class="timeline-item" v-for="(job, index) in jobs" :key="index">
          <div class="timeline-marker"></div>
          <div class="timeline-content">
            <div class="job-header">
              <h3 class="job-title">{{ job.title }}</h3>
              <span class="job-company">{{ job.company }}</span>
              <span class="job-period">{{ job.period }}</span>
            </div>
            <p class="job-description">{{ job.description }}</p>
            <div class="job-achievements">
              <h4>Key Achievements:</h4>
              <ul>
                <li v-for="achievement in job.achievements" :key="achievement">
                  {{ achievement }}
                </li>
              </ul>
            </div>
            <div class="job-technologies">
              <span 
                v-for="tech in job.technologies" 
                :key="tech" 
                class="tech-tag"
              >
                {{ tech }}
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const jobs = [
  {
    title: "DevOps Engineer",
    company: "Tech Company",
    period: "2022 - Present",
    description: "Leading DevOps initiatives and cloud infrastructure management for enterprise applications.",
    achievements: [
      "Implemented CI/CD pipelines reducing deployment time by 70%",
      "Managed AWS infrastructure serving 1M+ users",
      "Automated infrastructure provisioning using Terraform",
      "Reduced infrastructure costs by 30% through optimization"
    ],
    technologies: ["AWS", "Docker", "Kubernetes", "Jenkins", "Terraform", "Ansible"]
  },
  {
    title: "Cloud Infrastructure Engineer",
    company: "Previous Company",
    period: "2021 - 2022",
    description: "Focused on cloud migration and infrastructure automation for legacy systems.",
    achievements: [
      "Successfully migrated 50+ applications to AWS",
      "Implemented monitoring and alerting systems",
      "Created disaster recovery procedures",
      "Mentored junior team members"
    ],
    technologies: ["AWS", "Docker", "Python", "Shell Scripting", "Prometheus", "Grafana"]
  },
  {
    title: "System Administrator",
    company: "First Company",
    period: "2020 - 2021",
    description: "Managed on-premise infrastructure and began cloud migration journey.",
    achievements: [
      "Maintained 99.9% uptime for critical systems",
      "Implemented backup and recovery solutions",
      "Started cloud migration planning",
      "Improved system performance by 40%"
    ],
    technologies: ["Linux", "VMware", "Bash", "Python", "MySQL", "Nginx"]
  }
]
</script>

<style scoped>
.experience-container {
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
}

.experience-content {
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

.timeline {
  position: relative;
  padding-left: 2rem;
}

.timeline::before {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  width: 2px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

.timeline-item {
  position: relative;
  margin-bottom: 3rem;
  padding-left: 2rem;
}

.timeline-marker {
  position: absolute;
  left: -1.5rem;
  top: 0.5rem;
  width: 1rem;
  height: 1rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border-radius: 50%;
  border: 3px solid white;
  box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.2);
}

.timeline-content {
  background: #f8f9fa;
  border-radius: 15px;
  padding: 2rem;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

.timeline-content:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
}

.job-header {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  gap: 1rem;
  margin-bottom: 1rem;
}

.job-title {
  font-size: 1.5rem;
  font-weight: 600;
  color: #333;
  margin: 0;
}

.job-company {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 0.3rem 1rem;
  border-radius: 20px;
  font-size: 0.9rem;
  font-weight: 500;
}

.job-period {
  color: #666;
  font-size: 0.9rem;
  font-weight: 500;
}

.job-description {
  color: #555;
  line-height: 1.6;
  margin-bottom: 1.5rem;
}

.job-achievements h4 {
  color: #333;
  font-size: 1.1rem;
  margin-bottom: 0.8rem;
}

.job-achievements ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.job-achievements li {
  position: relative;
  padding-left: 1.5rem;
  margin-bottom: 0.5rem;
  color: #555;
  line-height: 1.5;
}

.job-achievements li::before {
  content: '✓';
  position: absolute;
  left: 0;
  color: #667eea;
  font-weight: bold;
}

.job-technologies {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-top: 1.5rem;
}

.tech-tag {
  background: rgba(102, 126, 234, 0.1);
  color: #667eea;
  padding: 0.3rem 0.8rem;
  border-radius: 15px;
  font-size: 0.8rem;
  font-weight: 500;
  border: 1px solid rgba(102, 126, 234, 0.2);
}

@media (max-width: 768px) {
  .experience-content {
    padding: 2rem;
  }
  
  .section-title {
    font-size: 2rem;
  }
  
  .timeline {
    padding-left: 1rem;
  }
  
  .timeline-item {
    padding-left: 1rem;
  }
  
  .timeline-marker {
    left: -0.5rem;
  }
  
  .job-header {
    flex-direction: column;
    align-items: flex-start;
    gap: 0.5rem;
  }
  
  .timeline-content {
    padding: 1.5rem;
  }
}
</style> 