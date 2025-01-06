# xauth --- 
if [[ -f /dot.Xauthority ]]; then
    xauth merge /dot.Xauthority
fi
# ----------

# ROS ---
source /opt/ros/humble/setup.bash
# ----------

# for Rviz ---
export LIBGL_ALWAYS_SOFTWARE=1
# ----------

# PS1 ---
export PS1='🤖​  \[\033[1;36m\][$(echo -n "$container_name")] \[\033[1;34m\]\W\[\033[0;35m\] \[\033[1;36m\]# \[\033[0m\]'
# ----------

# Welcome message ---
echo ""
echo "--- Welcome in the projet_indus_docker environment ---"
echo ""
# ----------
