# 🏎️ Curvature-Integrated MPCC Local Trajectory Planning

Deploy and visualize the trajectory planner from ITSC 2024 paper "[Reduce Lap Time for Autonomous Racing with Curvature-Integrated MPCC Local Trajectory Planning Method](https://arxiv.org/abs/2502.03695v1)". The main branch contains the F1tenth simulator and the CiMPCC planner.

<div style="display: flex; justify-content: space-between; align-items: center;">
  <img src="./media/teaser.jpg" alt="teaser" width="440" />
  <img src="./media/cimpcc.gif" alt="teaser" width="360" />
</div>

**Update**:

  The ROS environment for the current branch is neotic under Ubuntu 20.04. For the version of melodic, please see the branch `melodic_py27`.

## 🪄 Quickstart

Two methods are provided to configure the runtime environment:

1. Run directly using the pre-built Docker image.
2. Reconfigure from scratch using Docker.

Start by cloning this repository to the host:

```bash
git clone https://github.com/zhouhengli/CiMPCC.git f1tenth_ws
```

## 🛠️ Configure

Either of the following two methods can be used to deploy the environment.

### ✅ Run directly using the pre-built Docker image

Alternatively, the Docker configuration can be pulled from [Google Drive](https://drive.google.com/file/d/1pk2MK0nKocj3GiwBniOZNmhHBxJ0LjpT/view?usp=drive_link). Simply download it to your Linux system.

**[1/2]** Import the `prebuilt_cimpcc_v1.0.tar` file as a new image using Docker import:

```
docker import prebuilt_cimpcc_v1.0.tar prebuilt_cimpcc_v1.0
```

**[2/2]** Now, you can use the imported image to create and launch a new container:

```
sudo docker run -it \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=$DISPLAY \
  -v /home/ddrx/f1tenth_ws:/home/ddrx/f1tenth_ws \
  -w /home/ddrx/f1tenth_ws \
  prebuilt_cimpcc_v1.0 \
  /bin/bash
```
### ✅ [Optional] Reconfigure from scratch using Docker

**[1/3]** Pull Docker image:

```bash
sudo docker pull ros:noetic-robot-focal
```

**[2/3]** Set up a container:

```bash
sudo docker run -it \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=$DISPLAY \
  -v <host_path>/f1tenth_ws:/home/ddrx/f1tenth_ws \
  ros:noetic-robot-focal \
  /bin/bash
```

**[3/3]** Set up the necessary dependencies in the corresponding container using the bash script:

``` bash
cd /home/ddrx/f1tenth_ws/
chmod +x setup_env.sh
./setup_env.sh
```

### 🚀 Planning

**[1/3]** Set up a container and enter the following commands. After the final command, the map should pop up:

```bash
source /opt/ros/noetic/setup.bash && source /home/ddrx/f1tenth_ws/devel/setup.bash
./toolkit/sim_setup.sh -n map416
```

[Optional] If the RViz interface does not appear and there is an error `qt.qpa.xcb: could not connect to display :0`, it may be because Docker does not have access to the display server.
Try the following command in the host machine: `xhost +local:docker`.

**[2/3]** Start a new container and run the CiMPCC planner:

```bash
sudo docker exec -it <CONTAINER ID> /bin/bash
export PYTHONPATH=$PYTHONPATH:/home/ddrx/f1tenth_ws/toolkit/casadi/
source /opt/ros/noetic/setup.bash && source /home/ddrx/f1tenth_ws/devel/setup.bash
roslaunch nonlinear_mpc_casadi ddrx_sim_nmpcc.launch
```

[Optional] For a real vehicle, use the command: `roslaunch nonlinear_mpc_casadi ddrx_nmpcc.launch`.

**[3/3]** Use the '2D Nav Goal' as the starting signal for racing.

<div style="display: flex; justify-content: space-between; align-items: center;">
  <img src="./media/3Dcur.jpg" alt="teaser" width="430" />
  <img src="./media/sim.gif" alt="teaser" width="340" />
</div>

## 💻 Customization

This project allows for the customization of the map and track files used by the CiMPCC method, as well as the parameters. Adjustments can be made according to specific needs.

Before modifying them, replace the `root_path` in `./toolkit/params/*.yaml` with the path to the track files. 

### ✏️ Customized map and track

Maps files can be found in `toolkit/maps/`, and the map in this project is generated using Cartographer.

Track files are located in `toolkit/tracks/`, where path and boundaries are defined as a closed curve, and `<track_name>_center_derivates.csv` defines the deviations in the x and y directions.

### ✏️ Parameter Tuning

Parameter files are saved in `toolkit/params/`, where the parameter definitions are consistent with those described in the paper. Try tuning the parameters to improve the performance (reduce the lap time) of the planner 🏁.

Feel that parameter tuning is troublesome? Check out my [latest work](https://arxiv.org/pdf/2410.11570), which uses Bayesian optimization for automatic parameter tuning.

## 🤗 Acknowledgments

Many thanks to the excellent open-source repositories listed below:

- [Nonlinear_MPCC_for_autonomous_racing](https://github.com/nirajbasnet/Nonlinear_MPCC_for_autonomous_racing)
- [f1tenth_system](https://github.com/f1tenth/f1tenth_system)
- [Cartographer](https://github.com/cartographer-project/cartographer)
- [CasADi](https://web.casadi.org/)

Please contact [Zhouheng Li](https://zhouhengli.github.io) if you have any questions or suggestions.

## 📑 Citations

If you find our work useful, please consider citing:

```
@misc{li2025reducelaptimeautonomous,
      title={Reduce Lap Time for Autonomous Racing with Curvature-Integrated MPCC Local Trajectory Planning Method}, 
      author={Zhouheng Li and Lei Xie and Cheng Hu and Hongye Su},
      year={2025},
      eprint={2502.03695},
      archivePrefix={arXiv},
      primaryClass={cs.RO},
      url={https://arxiv.org/abs/2502.03695}, 
}
```

