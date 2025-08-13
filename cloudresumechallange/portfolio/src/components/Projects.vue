<template>
  <div class="projects-container">
    <div class="projects-content">
      <h2 class="section-title">Featured Projects</h2>
      
      <div class="projects-grid">
        <div 
          class="project-card" 
          v-for="project in projects" 
          :key="project.id"
          @click="openProject(project)"
        >
          <div class="project-image">
            <div class="project-icon">{{ project.icon }}</div>
          </div>
          <div class="project-content">
            <h3 class="project-title">{{ project.title }}</h3>
            <p class="project-description">{{ project.description }}</p>
            <div class="project-tech">
              <span 
                v-for="tech in project.technologies" 
                :key="tech" 
                class="tech-badge"
              >
                {{ tech }}
              </span>
            </div>
            <div class="project-links">
              <a 
                v-if="project.github" 
                :href="project.github" 
                target="_blank" 
                class="project-link"
                @click.stop
              >
                <span>GitHub</span>
              </a>
              <a 
                v-if="project.demo" 
                :href="project.demo" 
                target="_blank" 
                class="project-link"
                @click.stop
              >
                <span>Live Demo</span>
              </a>
            </div>
          </div>
          <div class="project-overlay">
            <span>Click to view details</span>
          </div>
        </div>
      </div>

      <!-- Project Modal -->
      <div v-if="selectedProject" class="modal-overlay" @click="closeModal">
        <div class="modal-content" @click.stop>
          <div class="modal-header">
            <h3>{{ selectedProject.title }}</h3>
            <button class="close-btn" @click="closeModal">&times;</button>
          </div>
          <div class="modal-body">
            <div class="project-details">
              <div class="detail-section">
                <h4>Description</h4>
                <p>{{ selectedProject.description }}</p>
              </div>
              <div class="detail-section">
                <h4>Key Features</h4>
                <ul>
                  <li v-for="feature in selectedProject.features" :key="feature">
                    {{ feature }}
                  </li>
                </ul>
              </div>
              <div class="detail-section">
                <h4>Technologies Used</h4>
                <div class="tech-list">
                  <span 
                    v-for="tech in selectedProject.technologies" 
                    :key="tech" 
                    class="tech-badge"
                  >
                    {{ tech }}
                  </span>
                </div>
              </div>
              <div class="detail-section">
                <h4>Challenges & Solutions</h4>
                <p>{{ selectedProject.challenges }}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const selectedProject = ref(null)

const projects = ref([
  {
    id: 1,
    title: "Cloud Resume Challenge",
    description: "A comprehensive DevOps project showcasing CI/CD pipeline, infrastructure as code, and cloud deployment.",
    icon: "☁️",
    technologies: ["AWS", "Terraform", "GitHub Actions", "Docker", "Python"],
    github: "https://github.com/yourusername/cloud-resume-challenge",
    demo: "https://your-resume.aws.com",
    features: [
      "Automated CI/CD pipeline with GitHub Actions",
      "Infrastructure as Code using Terraform",
      "Serverless architecture with AWS Lambda",
      "Custom domain with SSL certificate",
      "Monitoring and analytics integration"
    ],
    challenges: "Implemented a complete DevOps workflow from code to production, including infrastructure automation, testing, and monitoring. The challenge involved setting up a fully automated deployment pipeline that builds, tests, and deploys the resume website to AWS."
  },
  {
    id: 2,
    title: "Kubernetes Cluster Management",
    description: "Enterprise-grade Kubernetes cluster with monitoring, logging, and security best practices.",
    icon: "⚓",
    technologies: ["Kubernetes", "Helm", "Prometheus", "Grafana", "Istio"],
    github: "https://github.com/yourusername/k8s-cluster",
    demo: null,
    features: [
      "Multi-node Kubernetes cluster setup",
      "Service mesh with Istio",
      "Monitoring stack with Prometheus & Grafana",
      "Centralized logging with ELK stack",
      "RBAC and network policies"
    ],
    challenges: "Designed and implemented a production-ready Kubernetes cluster with comprehensive monitoring, security policies, and service mesh capabilities. The project required deep understanding of container orchestration, networking, and observability patterns."
  },
  {
    id: 3,
    title: "Infrastructure Automation Platform",
    description: "Self-service platform for infrastructure provisioning and management using Terraform and Ansible.",
    icon: "🤖",
    technologies: ["Terraform", "Ansible", "Python", "FastAPI", "PostgreSQL"],
    github: "https://github.com/yourusername/infra-automation",
    demo: "https://infra-platform.company.com",
    features: [
      "Self-service infrastructure provisioning",
      "Multi-cloud support (AWS, Azure, GCP)",
      "Approval workflows and cost controls",
      "Real-time infrastructure monitoring",
      "Automated cleanup and cost optimization"
    ],
    challenges: "Built a comprehensive infrastructure automation platform that enables developers to provision resources through a web interface while maintaining security and cost controls. The system handles complex approval workflows and integrates with multiple cloud providers."
  },
  {
    id: 4,
    title: "DevOps Monitoring Dashboard",
    description: "Centralized monitoring and alerting system for DevOps metrics and application performance.",
    icon: "📊",
    technologies: ["Prometheus", "Grafana", "AlertManager", "Python", "Docker"],
    github: "https://github.com/yourusername/devops-dashboard",
    demo: "https://monitoring.company.com",
    features: [
      "Real-time application metrics",
      "Custom alerting rules",
      "Performance trend analysis",
      "Integration with Slack/Teams",
      "Automated incident response"
    ],
    challenges: "Created a comprehensive monitoring solution that provides real-time visibility into application performance, infrastructure health, and business metrics. The system includes intelligent alerting and automated incident response capabilities."
  },
  {
    id: 5,
    title: "Container Security Scanner",
    description: "Automated security scanning and vulnerability assessment for Docker containers and Kubernetes deployments.",
    icon: "🔒",
    technologies: ["Docker", "Kubernetes", "Trivy", "Python", "PostgreSQL"],
    github: "https://github.com/yourusername/container-security",
    demo: null,
    features: [
      "Automated vulnerability scanning",
      "Integration with CI/CD pipelines",
      "Security policy enforcement",
      "Compliance reporting",
      "Real-time security alerts"
    ],
    challenges: "Developed a comprehensive container security solution that integrates seamlessly with existing CI/CD pipelines. The system provides automated vulnerability scanning, policy enforcement, and compliance reporting for containerized applications."
  },
  {
    id: 6,
    title: "Multi-Cloud Migration Tool",
    description: "Automated tool for migrating applications and data between different cloud providers.",
    icon: "🔄",
    technologies: ["Python", "AWS SDK", "Azure SDK", "Terraform", "Docker"],
    github: "https://github.com/yourusername/cloud-migration",
    demo: null,
    features: [
      "Automated application migration",
      "Data transfer optimization",
      "Configuration mapping",
      "Rollback capabilities",
      "Migration progress tracking"
    ],
    challenges: "Built a sophisticated migration tool that automates the complex process of moving applications between cloud providers. The tool handles configuration mapping, data transfer optimization, and provides rollback capabilities for safe migrations."
  }
])

const openProject = (project) => {
  selectedProject.value = project
}

const closeModal = () => {
  selectedProject.value = null
}
</script>

<style scoped>
.projects-container {
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
}

.projects-content {
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

.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 2rem;
}

.project-card {
  background: #f8f9fa;
  border-radius: 15px;
  padding: 2rem;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}

.project-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
}

.project-image {
  text-align: center;
  margin-bottom: 1.5rem;
}

.project-icon {
  font-size: 3rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.project-content {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.project-title {
  font-size: 1.3rem;
  font-weight: 600;
  color: #333;
  margin: 0;
}

.project-description {
  color: #555;
  line-height: 1.6;
  margin: 0;
}

.project-tech {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.tech-badge {
  background: rgba(102, 126, 234, 0.1);
  color: #667eea;
  padding: 0.3rem 0.8rem;
  border-radius: 15px;
  font-size: 0.8rem;
  font-weight: 500;
  border: 1px solid rgba(102, 126, 234, 0.2);
}

.project-links {
  display: flex;
  gap: 1rem;
  margin-top: 1rem;
}

.project-link {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 0.5rem 1rem;
  border-radius: 20px;
  text-decoration: none;
  font-size: 0.9rem;
  font-weight: 500;
  transition: transform 0.3s ease;
}

.project-link:hover {
  transform: translateY(-2px);
}

.project-overlay {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(102, 126, 234, 0.9);
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  opacity: 0;
  transition: opacity 0.3s ease;
  font-weight: 600;
}

.project-card:hover .project-overlay {
  opacity: 1;
}

/* Modal Styles */
.modal-overlay {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0, 0, 0, 0.8);
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 1000;
  padding: 2rem;
}

.modal-content {
  background: white;
  border-radius: 20px;
  max-width: 800px;
  width: 100%;
  max-height: 90vh;
  overflow-y: auto;
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
}

.modal-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 2rem 2rem 1rem 2rem;
  border-bottom: 1px solid #eee;
}

.modal-header h3 {
  margin: 0;
  color: #333;
  font-size: 1.5rem;
}

.close-btn {
  background: none;
  border: none;
  font-size: 2rem;
  cursor: pointer;
  color: #666;
  padding: 0;
  width: 40px;
  height: 40px;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 50%;
  transition: background 0.3s ease;
}

.close-btn:hover {
  background: #f0f0f0;
}

.modal-body {
  padding: 2rem;
}

.detail-section {
  margin-bottom: 2rem;
}

.detail-section h4 {
  color: #333;
  font-size: 1.2rem;
  margin-bottom: 1rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.detail-section p {
  color: #555;
  line-height: 1.6;
  margin: 0;
}

.detail-section ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.detail-section li {
  position: relative;
  padding-left: 1.5rem;
  margin-bottom: 0.5rem;
  color: #555;
  line-height: 1.5;
}

.detail-section li::before {
  content: '✓';
  position: absolute;
  left: 0;
  color: #667eea;
  font-weight: bold;
}

.tech-list {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

@media (max-width: 768px) {
  .projects-content {
    padding: 2rem;
  }
  
  .section-title {
    font-size: 2rem;
  }
  
  .projects-grid {
    grid-template-columns: 1fr;
  }
  
  .project-card {
    padding: 1.5rem;
  }
  
  .modal-overlay {
    padding: 1rem;
  }
  
  .modal-content {
    max-height: 95vh;
  }
  
  .modal-header,
  .modal-body {
    padding: 1.5rem;
  }
}
</style> 