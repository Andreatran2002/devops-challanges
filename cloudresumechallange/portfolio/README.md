# Diep Phuong Vy - Portfolio

A modern, responsive portfolio website built with Vue 3 and Vite, showcasing DevOps engineering skills and projects.

## 🚀 Features

- **Modern Design**: Clean, professional design with gradient backgrounds and smooth animations
- **Responsive**: Fully responsive design that works on all devices
- **Interactive**: Smooth scrolling navigation and interactive project cards
- **Performance**: Optimized with Vue 3 and Vite for fast loading
- **SEO Ready**: Proper meta tags and structured content

## 📋 Sections

1. **About**: Personal introduction and quick info
2. **Experience**: Professional work history with timeline
3. **Skills**: Technical skills with progress indicators and certifications
4. **Projects**: Featured projects with detailed modals
5. **Contact**: Contact form and social links

## 🛠️ Technologies Used

- **Frontend**: Vue 3, Vite
- **Styling**: CSS3 with modern features (Grid, Flexbox, CSS Variables)
- **Icons**: Emoji icons for simplicity
- **Fonts**: Inter font family from Google Fonts

## 🚀 Getting Started

### Prerequisites

- Node.js (version 20.19.0 or higher)
- npm or pnpm

### Installation

1. Clone the repository:
```bash
git clone <your-repo-url>
cd portfolio
```

2. Install dependencies:
```bash
npm install
# or
pnpm install
```

3. Start the development server:
```bash
npm run dev
# or
pnpm dev
```

4. Open your browser and navigate to `http://localhost:5173`

### Building for Production

```bash
npm run build
# or
pnpm build
```

The built files will be in the `dist` directory.

## 📁 Project Structure

```
src/
├── components/
│   ├── About.vue          # About section component
│   ├── Experience.vue     # Experience timeline component
│   ├── Skills.vue         # Skills and certifications component
│   ├── Projects.vue       # Projects showcase component
│   └── Contact.vue        # Contact form component
├── assets/
│   ├── main.css          # Global styles
│   └── base.css          # Base CSS reset
├── App.vue               # Main app component
└── main.js              # App entry point
```

## 🎨 Customization

### Personal Information

Update the following files with your information:

1. **About.vue**: Update name, title, description, and quick info
2. **Experience.vue**: Update job history in the `jobs` array
3. **Skills.vue**: Update skills and certifications
4. **Projects.vue**: Update projects with your actual projects
5. **Contact.vue**: Update contact information and social links

### Styling

The portfolio uses a consistent color scheme with gradients. You can customize the colors by updating the CSS variables in the components or the main.css file.

### Adding New Sections

To add a new section:

1. Create a new component in `src/components/`
2. Import and add it to `App.vue`
3. Add the section to the navigation array
4. Update the routing logic

## 📱 Responsive Design

The portfolio is fully responsive and includes:

- Mobile-first design approach
- Flexible grid layouts
- Responsive typography
- Touch-friendly interactions
- Optimized for all screen sizes

## 🔧 Development

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build

### Code Style

- Use Vue 3 Composition API
- Follow Vue.js style guide
- Use semantic HTML
- Write clean, maintainable CSS

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📞 Contact

For any questions or suggestions, please reach out:

- Email: diepphuongvy@example.com
- LinkedIn: [linkedin.com/in/diepphuongvy](https://linkedin.com/in/diepphuongvy)
- GitHub: [github.com/diepphuongvy](https://github.com/diepphuongvy)

---

Made with ❤️ by Diep Phuong Vy
