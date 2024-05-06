[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/qPD8ugtn)
# Week 2 (1/3) - Resolve Conflict and PR 

* __Classwork 1__
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/mvc_hw2_1.png" width="600" />
<br/><br/>

## Prepare Environment

### Local:
<!-- 这是一个隐藏的注释，不会在 Markdown 渲染的结果中显示 -->
- Download the repository and rename it to `git_practice_wsl`.（從week2 雲端）

### GitLab:
<!-- 这里也是一个注释 -->
- 建立gitlab帳號，並fork :
  [https://gitlab.com/frakw/git_practice](https://gitlab.com/frakw/git_practice).
<br/><br/>
## Set SSH Connection

### Local:
<!-- 生成 SSH 键的注释 -->
- 產生一對 SSH keys (the public key will have the extension `.pub`).
- Add the private key to SSH.
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-06%20at%2000.54.06%402x.png" width="600" />

<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-06%20at%2001.04.50%402x.png" width="600" />

### GitLab:
- Settings >> SSH Key (add your public key).
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-06%20at%2001.01.11%402x.png" width="600" />

<br/><br/>
## Conflict

### Local:
- Encounter conflict.
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-06%20at%2001.23.10%402x.png" width="600" />

<br/><br/>
## Solve

### Local:
<!-- 使用 VSCode 解决冲突的详细说明 -->
- Resolve using Visual Studio Code (VSCode).
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-05%20at%2017.39.03%402x.png" width="600" />
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-05%20at%2017.41.06%402x.png" width="600" />

<br/><br/>
## Error During Submission
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-06%20at%2001.31.20%402x.png" width="600" />

<!-- 解释错误原因和修改方法 -->
- **Error**: 使用SSH連線，url卻設定成http連線。
<br/><br/>

**Resolution**:
- Modify
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-06%20at%2001.35.35%402x.png" width="600" />

<br/><br/>
## Final Steps

### Local:
- Upload changes to GitLab.
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-06%20at%2001.39.39%402x.png" width="600" />

### GitLab:
- Create a merge request.
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-05%20at%2018.00.49%402x.png" width="600" />
<br/><br/>

# Week 2 (2/3) - write Dockerfile and docker-compose.yaml
* __Classwork 2-1__
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-06%20at%2011.30.37%402x.png" width="400" />
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-06%20at%2011.31.28%402x.png" width="400" />

* __Classwork 2-2__
  * image traefik 無法開啟
  * docker_compose.yml 將 ```traefik``` 修改成 ```traefik:v1.7``` 可以開啟 ‘http://localhost:8080'
  * 但 glances-monitor還是無法開啟 'http://localhost:61208'
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-07%20at%2003.58.35%402x.png" width="600" />

## Dockerfile
- filename 'Dockfile', 注意不需要任何副檔名
  - 在Dockerfile目錄下 run docker build -t my-yolo .```
  - 建立image name 'my-yolo'
  - ```docker run -it --rm my-yolo``` (創建container並運行)
<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-07%20at%2004.15.32%402x.png" width="600" />

- 在container中，openCV-python 因為容器缺少GUI介面無法顯示'cv2.imshow()'


- ```pip install requirements.txt``` 後還有其他需要的依賴，做成 'docker-compose.yaml'

- ```python detect.py --view-img --nosave --weights yolov5x.pt --source video/argoverse/argoverse.mp4  --run-liteMono --run-bev --classes 2 5 7``` 沒有成功運行，就沒有做 'docker-compose.yaml' 。



# Week 2 (3/3) - use CVAT to label dataset
- Export format 'COCO1.0', and name 'car_50.zip'

<img src="https://github.com/mvclab-ntust-course/homework2-wsl5300/blob/main/photos/CleanShot%202024-05-07%20at%2003.34.12%402x.png" width="600" />
