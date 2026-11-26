package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.ExtendableBuilder;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import defpackage.jh2;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ImplConfig extends CaptureRequestOptions {
    public static final String CAPTURE_REQUEST_ID_STEM = "camera2.captureRequest.option.";
    public static final Config.Option<Object> CAPTURE_REQUEST_TAG_OPTION;
    public static final Companion Companion = new Companion(null);
    public static final Config.Option<CameraDevice.StateCallback> DEVICE_STATE_CALLBACK_OPTION;
    public static final Config.Option<CameraCaptureSession.CaptureCallback> SESSION_CAPTURE_CALLBACK_OPTION;
    public static final Config.Option<String> SESSION_PHYSICAL_CAMERA_ID_OPTION;
    public static final Config.Option<CameraCaptureSession.StateCallback> SESSION_STATE_CALLBACK_OPTION;
    public static final Config.Option<Long> STREAM_USE_CASE_OPTION;
    public static final Config.Option<Long> STREAM_USE_HINT_OPTION;
    public static final Config.Option<Integer> TEMPLATE_TYPE_OPTION;

    public static final class Builder implements ExtendableBuilder<Camera2ImplConfig> {
        private final MutableOptionsBundle mutableOptionsBundle;

        public Builder() {
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            mutableOptionsBundleCreate.getClass();
            this.mutableOptionsBundle = mutableOptionsBundleCreate;
        }

        public final Builder addAllCaptureRequestOptionsWithPriority(Map<CaptureRequest.Key<?>, ? extends Object> map, Config.OptionPriority optionPriority) {
            map.getClass();
            optionPriority.getClass();
            for (Map.Entry<CaptureRequest.Key<?>, ? extends Object> entry : map.entrySet()) {
                CaptureRequest.Key<?> key = entry.getKey();
                Object value = entry.getValue();
                this.mutableOptionsBundle.insertOption(Camera2ImplConfigKt.createCaptureRequestOption(key), optionPriority, value);
            }
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.ExtendableBuilder
        public Camera2ImplConfig build() {
            OptionsBundle optionsBundleFrom = OptionsBundle.from(this.mutableOptionsBundle);
            optionsBundleFrom.getClass();
            return new Camera2ImplConfig(optionsBundleFrom);
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableConfig getMutableConfig() {
            return this.mutableOptionsBundle;
        }

        public final Builder insertAllOptions(Config config) {
            config.getClass();
            for (Config.Option<?> option : config.listOptions()) {
                option.getClass();
                this.mutableOptionsBundle.insertOption(option, config.getOptionPriority(option), config.retrieveOption(option));
            }
            return this;
        }

        public final Builder removeCaptureRequestOptions(List<? extends CaptureRequest.Key<?>> list) {
            list.getClass();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                this.mutableOptionsBundle.removeOption(Camera2ImplConfigKt.createCaptureRequestOption((CaptureRequest.Key) it.next()));
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <ValueT> Builder setCaptureRequestOption(CaptureRequest.Key<ValueT> key, ValueT valuet) {
            key.getClass();
            this.mutableOptionsBundle.insertOption(Camera2ImplConfigKt.createCaptureRequestOption(key), valuet);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <ValueT> Builder setCaptureRequestOptionWithPriority(CaptureRequest.Key<ValueT> key, ValueT valuet, Config.OptionPriority optionPriority) {
            key.getClass();
            optionPriority.getClass();
            this.mutableOptionsBundle.insertOption(Camera2ImplConfigKt.createCaptureRequestOption(key), optionPriority, valuet);
            return this;
        }
    }

    static {
        Class cls = Integer.TYPE;
        cls.getClass();
        Config.Option<Integer> optionCreate = Config.Option.create("camera2.captureRequest.templateType", cls);
        optionCreate.getClass();
        TEMPLATE_TYPE_OPTION = optionCreate;
        Config.Option<CameraDevice.StateCallback> optionCreate2 = Config.Option.create("camera2.cameraDevice.stateCallback", CameraDevice.StateCallback.class);
        optionCreate2.getClass();
        DEVICE_STATE_CALLBACK_OPTION = optionCreate2;
        Config.Option<CameraCaptureSession.StateCallback> optionCreate3 = Config.Option.create("camera2.cameraCaptureSession.stateCallback", CameraCaptureSession.StateCallback.class);
        optionCreate3.getClass();
        SESSION_STATE_CALLBACK_OPTION = optionCreate3;
        Config.Option<CameraCaptureSession.CaptureCallback> optionCreate4 = Config.Option.create("camera2.cameraCaptureSession.captureCallback", CameraCaptureSession.CaptureCallback.class);
        optionCreate4.getClass();
        SESSION_CAPTURE_CALLBACK_OPTION = optionCreate4;
        Class cls2 = Long.TYPE;
        cls2.getClass();
        Config.Option<Long> optionCreate5 = Config.Option.create("camera2.cameraCaptureSession.streamUseCase", cls2);
        optionCreate5.getClass();
        STREAM_USE_CASE_OPTION = optionCreate5;
        cls2.getClass();
        Config.Option<Long> optionCreate6 = Config.Option.create("camera2.cameraCaptureSession.streamUseHint", cls2);
        optionCreate6.getClass();
        STREAM_USE_HINT_OPTION = optionCreate6;
        Config.Option<Object> optionCreate7 = Config.Option.create("camera2.captureRequest.tag", Object.class);
        optionCreate7.getClass();
        CAPTURE_REQUEST_TAG_OPTION = optionCreate7;
        Config.Option<String> optionCreate8 = Config.Option.create("camera2.cameraCaptureSession.physicalCameraId", String.class);
        optionCreate8.getClass();
        SESSION_PHYSICAL_CAMERA_ID_OPTION = optionCreate8;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2ImplConfig(Config config) {
        super(config);
        config.getClass();
    }

    public static /* synthetic */ Object getCaptureRequestTag$default(Camera2ImplConfig camera2ImplConfig, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return camera2ImplConfig.getCaptureRequestTag(obj);
    }

    public static /* synthetic */ CameraDevice.StateCallback getDeviceStateCallback$default(Camera2ImplConfig camera2ImplConfig, CameraDevice.StateCallback stateCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            stateCallback = null;
        }
        return camera2ImplConfig.getDeviceStateCallback(stateCallback);
    }

    public static /* synthetic */ String getPhysicalCameraId$default(Camera2ImplConfig camera2ImplConfig, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return camera2ImplConfig.getPhysicalCameraId(str);
    }

    public static /* synthetic */ CameraCaptureSession.CaptureCallback getSessionCaptureCallback$default(Camera2ImplConfig camera2ImplConfig, CameraCaptureSession.CaptureCallback captureCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            captureCallback = null;
        }
        return camera2ImplConfig.getSessionCaptureCallback(captureCallback);
    }

    public static /* synthetic */ CameraCaptureSession.StateCallback getSessionStateCallback$default(Camera2ImplConfig camera2ImplConfig, CameraCaptureSession.StateCallback stateCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            stateCallback = null;
        }
        return camera2ImplConfig.getSessionStateCallback(stateCallback);
    }

    public static /* synthetic */ Long getStreamUseCase$default(Camera2ImplConfig camera2ImplConfig, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        return camera2ImplConfig.getStreamUseCase(l);
    }

    public static /* synthetic */ Long getStreamUseHint$default(Camera2ImplConfig camera2ImplConfig, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        return camera2ImplConfig.getStreamUseHint(l);
    }

    public final CaptureRequestOptions getCaptureRequestOptions() {
        return CaptureRequestOptions.Builder.Companion.from(getConfig()).build();
    }

    public final Object getCaptureRequestTag(Object obj) {
        return getConfig().retrieveOption(CAPTURE_REQUEST_TAG_OPTION, obj);
    }

    public final int getCaptureRequestTemplate(int i) {
        Object objRetrieveOption = getConfig().retrieveOption(TEMPLATE_TYPE_OPTION, Integer.valueOf(i));
        objRetrieveOption.getClass();
        return ((Number) objRetrieveOption).intValue();
    }

    public final CameraDevice.StateCallback getDeviceStateCallback(CameraDevice.StateCallback stateCallback) {
        return (CameraDevice.StateCallback) getConfig().retrieveOption(DEVICE_STATE_CALLBACK_OPTION, stateCallback);
    }

    public final String getPhysicalCameraId(String str) {
        return (String) getConfig().retrieveOption(SESSION_PHYSICAL_CAMERA_ID_OPTION, str);
    }

    public final CameraCaptureSession.CaptureCallback getSessionCaptureCallback(CameraCaptureSession.CaptureCallback captureCallback) {
        return (CameraCaptureSession.CaptureCallback) getConfig().retrieveOption(SESSION_CAPTURE_CALLBACK_OPTION, captureCallback);
    }

    public final CameraCaptureSession.StateCallback getSessionStateCallback(CameraCaptureSession.StateCallback stateCallback) {
        return (CameraCaptureSession.StateCallback) getConfig().retrieveOption(SESSION_STATE_CALLBACK_OPTION, stateCallback);
    }

    public final Long getStreamUseCase(Long l) {
        return (Long) getConfig().retrieveOption(STREAM_USE_CASE_OPTION, l);
    }

    public final Long getStreamUseHint(Long l) {
        return (Long) getConfig().retrieveOption(STREAM_USE_HINT_OPTION, l);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
