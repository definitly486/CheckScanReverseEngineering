package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.core.impl.Config;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ImplConfigKt {
    public static final Config.Option<Object> createCaptureRequestOption(CaptureRequest.Key<?> key) {
        key.getClass();
        Config.Option<Object> optionCreate = Config.Option.create(Camera2ImplConfig.CAPTURE_REQUEST_ID_STEM + key.getName(), Object.class, key);
        optionCreate.getClass();
        return optionCreate;
    }

    public static final Map<CaptureRequest.Key<?>, Object> toParameters(Config config) {
        Object objRetrieveOption;
        config.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Config.Option<?> option : config.listOptions()) {
            Object token = option.getToken();
            CaptureRequest.Key key = token instanceof CaptureRequest.Key ? (CaptureRequest.Key) token : null;
            if (key != null && (objRetrieveOption = config.retrieveOption(option)) != null) {
                linkedHashMap.put(key, objRetrieveOption);
            }
        }
        return linkedHashMap;
    }
}
