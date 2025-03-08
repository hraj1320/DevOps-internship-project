 
# 🚀 DevOps Internship Project  
> **Jenkins + GitHub + Maven + Tomcat Deployment on AWS EC2**

![Jenkins + Tomcat Deployment](https://user-images.githubusercontent.com/your-image.png)  

## 📌 Project Overview  
This project demonstrates the **CI/CD pipeline setup using Jenkins, GitHub, Maven, and Tomcat on AWS EC2**.  
It includes **automated builds, unit testing, and deployment** of a Maven-based Java web application.  

## 🛠️ Tech Stack  
- **CI/CD Tool:** Jenkins  
- **Source Code Management:** Git & GitHub  
- **Build Tool:** Maven  
- **Application Server:** Apache Tomcat 9  
- **Cloud Platform:** AWS (EC2)  
- **Operating System:** Amazon Linux 2  

---


---

## 🔥 Key Features  
✔️ **Fully Automated CI/CD Pipeline** - End-to-end automation from code push to deployment  
✔️ **GitHub Integration with Jenkins** - Auto-trigger build on commit  
✔️ **Maven Build & Unit Testing** - Compile & test before deployment  
✔️ **Tomcat Deployment on AWS EC2** - Host application using Apache Tomcat  

---

## 🛠️ Setup Instructions  
### **1️⃣ Install Required Tools on AWS EC2**  
Run the following commands to install **Git, Java (JDK), Maven, and Jenkins** on your AWS EC2 instance:
```bash
sudo yum update -y
sudo yum install git -y
sudo amazon-linux-extras enable corretto8
sudo yum install java-1.8.0-amazon-corretto-devel -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y
```
Start Jenkins service:
```bash
sudo systemctl start jenkins
sudo systemctl enable jenkins
```

### **2️⃣ Configure Jenkins & Install Required Plugins**  
- Install the following plugins in **Jenkins → Manage Plugins**  
  ✅ Git Plugin  
  ✅ Maven Integration Plugin  
  ✅ Deploy to Container Plugin  

### **3️⃣ Configure Jenkins Global Tools**  
- **Jenkins → Manage Jenkins → Global Tool Configuration**  
- Set paths for:
  - **JDK Path:** `/usr/lib/jvm/java-1.8.0-amazon-corretto.x86_64`
  - **Maven Path:** `/usr/bin/mvn`
  - **Git Path:** `/usr/bin/git`

### **4️⃣ Configure Jenkins Job for CI/CD**  
- **Jenkins → New Item → Freestyle Project**
- Set **GitHub Repository URL**  
- **Build Triggers:** `Poll SCM (* * * * *)`  
- **Build Steps:** `mvn clean package`  
- **Post Build Action:** Deploy `.war` to Tomcat  

### **5️⃣ Deploy to Tomcat (Apache Tomcat 9 Setup)**  
```bash
cd ~
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.102/bin/apache-tomcat-9.0.102.tar.gz
tar -xvf apache-tomcat-9.0.102.tar.gz
cd apache-tomcat-9.0.102/bin
chmod +x *.sh
./startup.sh
```
Tomcat will be accessible at:  
```
http://<Public-IP>:9090/
```

### **6️⃣ Check Running Application**  
Once deployed, access the application via:  
```
http://<Public-IP>:9090/Kastro-app
```
---

## 📸 Screenshots  
| Jenkins Job Success | Tomcat Manager | Application Running |
|--------------------|----------------|------------------|
| ![Jenkins Success](https://user-images.githubusercontent.com/your-image1.png) | ![Tomcat Manager](https://user-images.githubusercontent.com/your-image2.png) | ![App Running](https://user-images.githubusercontent.com/your-image3.png) |

---

## 📜 CI/CD Pipeline Workflow  
✔️ **Code Commit on GitHub** → Jenkins Auto-build → Maven Compile & Test → WAR File Generation → Deployment on Tomcat  

---

## 📌 References  
- [Jenkins Official Docs](https://www.jenkins.io/doc/)  
- [Tomcat 9 Documentation](https://tomcat.apache.org/tomcat-9.0-doc/)  
- [AWS EC2 User Guide](https://docs.aws.amazon.com/ec2/)  

---

## 📢 Contact  
**Himanshu Kumar**  
📧 hraj000123@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/himanshukumar1320/)  

---

 
