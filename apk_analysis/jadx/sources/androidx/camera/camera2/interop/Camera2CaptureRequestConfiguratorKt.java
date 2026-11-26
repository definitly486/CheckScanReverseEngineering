package androidx.camera.camera2.interop;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.impl.Config;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CaptureRequestConfiguratorKt {
    private static final Config.Option<Camera2CaptureRequestConfigurator> OPTION_CAPTURE_REQUEST_CONFIGURATOR;

    static {
        Config.Option<Camera2CaptureRequestConfigurator> optionCreate = Config.Option.create("camerax.core.appConfig.captureRequestConfigurator", Camera2CaptureRequestConfigurator.class);
        optionCreate.getClass();
        OPTION_CAPTURE_REQUEST_CONFIGURATOR = optionCreate;
    }

    public static final void configureWithUnchecked(Camera2CaptureRequestConfigurator camera2CaptureRequestConfigurator, Map<Object, ? extends Object> map) {
        camera2CaptureRequestConfigurator.getClass();
        map.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Object, ? extends Object> entry : map.entrySet()) {
            if (entry.getKey() instanceof CaptureRequest.Key) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        camera2CaptureRequestConfigurator.configureWith(linkedHashMap);
    }

    public static final Camera2CaptureRequestConfigurator getCamera2CaptureRequestConfigurator(CameraXConfig cameraXConfig) {
        cameraXConfig.getClass();
        return (Camera2CaptureRequestConfigurator) cameraXConfig.getConfig().retrieveOption(OPTION_CAPTURE_REQUEST_CONFIGURATOR, null);
    }

    public static final Config.Option<Camera2CaptureRequestConfigurator> getOPTION_CAPTURE_REQUEST_CONFIGURATOR() {
        return OPTION_CAPTURE_REQUEST_CONFIGURATOR;
    }

    public static final CameraXConfig.Builder setCamera2CaptureRequestConfigurator(CameraXConfig.Builder builder, Camera2CaptureRequestConfigurator camera2CaptureRequestConfigurator) {
        builder.getClass();
        camera2CaptureRequestConfigurator.getClass();
        builder.getMutableConfig().insertOption(OPTION_CAPTURE_REQUEST_CONFIGURATOR, camera2CaptureRequestConfigurator);
        return builder;
    }
}
