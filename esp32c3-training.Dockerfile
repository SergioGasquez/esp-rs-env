FROM sergiogasquez/esp-rs-env:espidf_v4.4-esp32c3
RUN $HOME/.cargo/bin/rustup default nightly-2022-03-30
RUN git clone -b feature/fetch-dependencies https://github.com/SergioGasquez/espressif-trainings.git && \
    # Hardware Check
    cd /home/vscode/espressif-trainings/intro/hardware-check && \
    $HOME/.cargo/bin/cargo fetch && \
    $HOME/.cargo/bin/cargo build && \
    $HOME/.cargo/bin/cargo clean && \
    # Http Client
    cd /home/vscode/espressif-trainings/intro/http-client/exercise && \
    $HOME/.cargo/bin/cargo fetch && \
    cd /home/vscode/espressif-trainings/intro/http-client/solution && \
    $HOME/.cargo/bin/cargo fetch && \
    # Http Server
    cd /home/vscode/espressif-trainings/intro/http-server/exercise && \
    $HOME/.cargo/bin/cargo fetch && \
    cd /home/vscode/espressif-trainings/intro/http-server/solution && \
    $HOME/.cargo/bin/cargo fetch && \
    # MQTT
    cd /home/vscode/espressif-trainings/intro/mqtt/exercise && \
    $HOME/.cargo/bin/cargo fetch && \
    cd /home/vscode/espressif-trainings/intro/mqtt/solution && \
    $HOME/.cargo/bin/cargo fetch && \
    cd /home/vscode/espressif-trainings/intro/mqtt/host-client && \
    $HOME/.cargo/bin/cargo fetch && \
     # Button Interrupt
    cd /home/vscode/espressif-trainings/advanced/button-interrupt/exercise && \
    $HOME/.cargo/bin/cargo fetch && \
    cd /home/vscode/espressif-trainings/advanced/button-interrupt/solution && \
    $HOME/.cargo/bin/cargo fetch && \
    # I2C Driver
    cd /home/vscode/espressif-trainings/advanced/i2c-driver/solution && \
    $HOME/.cargo/bin/cargo fetch && \
    # I2C Sensor Reading
    cd /home/vscode/espressif-trainings/advanced/i2c-sensor-reading/solution && \
    $HOME/.cargo/bin/cargo fetch && \
    # Delete the repository
    rm -rf /home/vscode/espressif-trainings
