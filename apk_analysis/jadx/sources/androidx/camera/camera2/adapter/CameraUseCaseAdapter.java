package androidx.camera.camera2.adapter;

import android.app.Application;
import android.content.Context;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.PreviewUnderExposureQuirk;
import androidx.camera.camera2.compat.workaround.ImageCapturePixelHDRPlusKt;
import androidx.camera.camera2.compat.workaround.PreviewPixelHDRnetKt;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import defpackage.fg;
import defpackage.jh2;
import defpackage.me0;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraUseCaseAdapter implements UseCaseConfigFactory {
    private final DisplayInfoManager displayInfoManager;

    public static final class DefaultSessionOptionsUnpacker implements SessionConfig.OptionUnpacker {
        public static final DefaultSessionOptionsUnpacker INSTANCE = new DefaultSessionOptionsUnpacker();

        private DefaultSessionOptionsUnpacker() {
        }

        @Override // androidx.camera.core.impl.SessionConfig.OptionUnpacker
        public void unpack(Size size, UseCaseConfig<?> useCaseConfig, SessionConfig.Builder builder) {
            size.getClass();
            useCaseConfig.getClass();
            builder.getClass();
            SessionConfig defaultSessionConfig = useCaseConfig.getDefaultSessionConfig(null);
            Config configEmptyBundle = OptionsBundle.emptyBundle();
            configEmptyBundle.getClass();
            int templateType = SessionConfig.defaultEmptySessionConfig().getTemplateType();
            if (defaultSessionConfig != null) {
                templateType = defaultSessionConfig.getTemplateType();
                builder.addAllDeviceStateCallbacks(defaultSessionConfig.getDeviceStateCallbacks());
                builder.addAllSessionStateCallbacks(defaultSessionConfig.getSessionStateCallbacks());
                builder.addAllRepeatingCameraCaptureCallbacks(defaultSessionConfig.getRepeatingCameraCaptureCallbacks());
                configEmptyBundle = defaultSessionConfig.getImplementationOptions();
                configEmptyBundle.getClass();
            }
            builder.setImplementationOptions(configEmptyBundle);
            if (useCaseConfig instanceof PreviewConfig) {
                PreviewPixelHDRnetKt.setupHDRnet(builder, size);
            }
            Camera2ImplConfig camera2ImplConfig = new Camera2ImplConfig(useCaseConfig);
            builder.setTemplateType(camera2ImplConfig.getCaptureRequestTemplate(templateType));
            CameraDevice.StateCallback deviceStateCallback$default = Camera2ImplConfig.getDeviceStateCallback$default(camera2ImplConfig, null, 1, null);
            if (deviceStateCallback$default != null) {
                builder.addDeviceStateCallback(deviceStateCallback$default);
            }
            CameraCaptureSession.StateCallback sessionStateCallback$default = Camera2ImplConfig.getSessionStateCallback$default(camera2ImplConfig, null, 1, null);
            if (sessionStateCallback$default != null) {
                builder.addSessionStateCallback(sessionStateCallback$default);
            }
            CameraCaptureSession.CaptureCallback sessionCaptureCallback$default = Camera2ImplConfig.getSessionCaptureCallback$default(camera2ImplConfig, null, 1, null);
            if (sessionCaptureCallback$default != null) {
                builder.addCameraCaptureCallback(CaptureCallbackContainer.Companion.create(sessionCaptureCallback$default));
            }
            builder.setPreviewStabilization(useCaseConfig.getPreviewStabilizationMode());
            builder.setVideoStabilization(useCaseConfig.getVideoStabilizationMode());
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            String physicalCameraId$default = Camera2ImplConfig.getPhysicalCameraId$default(camera2ImplConfig, null, 1, null);
            if (physicalCameraId$default != null) {
                mutableOptionsBundleCreate.insertOption(Camera2ImplConfig.SESSION_PHYSICAL_CAMERA_ID_OPTION, physicalCameraId$default);
            }
            Long streamUseCase$default = Camera2ImplConfig.getStreamUseCase$default(camera2ImplConfig, null, 1, null);
            if (streamUseCase$default != null) {
                mutableOptionsBundleCreate.insertOption(Camera2ImplConfig.STREAM_USE_CASE_OPTION, Long.valueOf(streamUseCase$default.longValue()));
            }
            mutableOptionsBundleCreate.getClass();
            builder.addImplementationOptions(mutableOptionsBundleCreate);
            builder.addImplementationOptions(camera2ImplConfig.getCaptureRequestOptions());
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UseCaseConfigFactory.CaptureType.values().length];
            try {
                iArr[UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.PREVIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.STREAM_SHARING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.METERING_REPEATING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CameraUseCaseAdapter(Context context) {
        context.getClass();
        this.displayInfoManager = DisplayInfoManager.Companion.getInstance(context);
        if (context instanceof Application) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isInfoEnabled(Log.TAG)) {
                android.util.Log.i(Camera2Logger.TRUNCATED_TAG, "The provided context (" + context + ") is application scoped and will be used to infer the default display for computing the default preview size, orientation, and default aspect ratio for UseCase outputs.");
            }
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Created UseCaseConfigurationMap");
        }
    }

    @Override // androidx.camera.core.impl.UseCaseConfigFactory
    public Config getConfig(UseCaseConfigFactory.CaptureType captureType, int i) {
        captureType.getClass();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Creating config for " + captureType);
        }
        MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
        mutableOptionsBundleCreate.getClass();
        SessionConfig.Builder builder = new SessionConfig.Builder();
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        switch (iArr[captureType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                builder.setTemplateType(1);
                break;
            case 6:
                builder.setTemplateType(DeviceQuirks.INSTANCE.get(PreviewUnderExposureQuirk.class) != null ? 1 : 3);
                break;
            default:
                me0.e();
                return null;
        }
        mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_DEFAULT_SESSION_CONFIG, builder.build());
        CaptureConfig.Builder builder2 = new CaptureConfig.Builder();
        switch (iArr[captureType.ordinal()]) {
            case 1:
                builder2.setTemplateType(i == 2 ? 5 : 2);
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                builder2.setTemplateType(1);
                break;
            case 6:
                builder2.setTemplateType(DeviceQuirks.INSTANCE.get(PreviewUnderExposureQuirk.class) != null ? 1 : 3);
                break;
            default:
                me0.e();
                return null;
        }
        mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_DEFAULT_CAPTURE_CONFIG, builder2.build());
        mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_CAPTURE_CONFIG_UNPACKER, captureType == UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE ? ImageCaptureOptionUnpacker.Companion.getINSTANCE() : DefaultCaptureOptionsUnpacker.Companion.getINSTANCE());
        mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, DefaultSessionOptionsUnpacker.INSTANCE);
        if (captureType == UseCaseConfigFactory.CaptureType.PREVIEW) {
            mutableOptionsBundleCreate.insertOption(ImageOutputConfig.OPTION_MAX_RESOLUTION, this.displayInfoManager.getPreviewSize());
        }
        mutableOptionsBundleCreate.insertOption(ImageOutputConfig.OPTION_TARGET_ROTATION, Integer.valueOf(DisplayInfoManager.getMaxSizeDisplay$default(this.displayInfoManager, false, 1, null).getRotation()));
        OptionsBundle optionsBundleFrom = OptionsBundle.from(mutableOptionsBundleCreate);
        optionsBundleFrom.getClass();
        return optionsBundleFrom;
    }

    public static final class CaptureCallbackContainer extends CameraCaptureCallback {
        public static final Companion Companion = new Companion(null);
        private final CameraCaptureSession.CaptureCallback captureCallback;

        private CaptureCallbackContainer(CameraCaptureSession.CaptureCallback captureCallback) {
            this.captureCallback = captureCallback;
        }

        public final CameraCaptureSession.CaptureCallback getCaptureCallback() {
            return this.captureCallback;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final CaptureCallbackContainer create(CameraCaptureSession.CaptureCallback captureCallback) {
                captureCallback.getClass();
                return new CaptureCallbackContainer(captureCallback, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ CaptureCallbackContainer(CameraCaptureSession.CaptureCallback captureCallback, jh2 jh2Var) {
            this(captureCallback);
        }
    }

    public static class DefaultCaptureOptionsUnpacker implements CaptureConfig.OptionUnpacker {
        public static final Companion Companion = new Companion(null);
        private static final DefaultCaptureOptionsUnpacker INSTANCE = new DefaultCaptureOptionsUnpacker();

        @Override // androidx.camera.core.impl.CaptureConfig.OptionUnpacker
        public void unpack(UseCaseConfig<?> useCaseConfig, CaptureConfig.Builder builder) {
            useCaseConfig.getClass();
            builder.getClass();
            CaptureConfig defaultCaptureConfig = useCaseConfig.getDefaultCaptureConfig(null);
            Config configEmptyBundle = OptionsBundle.emptyBundle();
            configEmptyBundle.getClass();
            int templateType = CaptureConfig.defaultEmptyCaptureConfig().getTemplateType();
            if (defaultCaptureConfig != null) {
                templateType = defaultCaptureConfig.getTemplateType();
                builder.addAllCameraCaptureCallbacks(defaultCaptureConfig.getCameraCaptureCallbacks());
                configEmptyBundle = defaultCaptureConfig.getImplementationOptions();
                configEmptyBundle.getClass();
                builder.setUseRepeatingSurface(defaultCaptureConfig.isUseRepeatingSurface());
                builder.addAllTags(defaultCaptureConfig.getTagBundle());
                List<DeferrableSurface> surfaces = defaultCaptureConfig.getSurfaces();
                surfaces.getClass();
                Iterator<T> it = surfaces.iterator();
                while (it.hasNext()) {
                    builder.addSurface((DeferrableSurface) it.next());
                }
            }
            builder.setImplementationOptions(configEmptyBundle);
            Camera2ImplConfig camera2ImplConfig = new Camera2ImplConfig(useCaseConfig);
            builder.setTemplateType(camera2ImplConfig.getCaptureRequestTemplate(templateType));
            CameraCaptureSession.CaptureCallback sessionCaptureCallback$default = Camera2ImplConfig.getSessionCaptureCallback$default(camera2ImplConfig, null, 1, null);
            if (sessionCaptureCallback$default != null) {
                builder.addCameraCaptureCallback(CaptureCallbackContainer.Companion.create(sessionCaptureCallback$default));
            }
            builder.addImplementationOptions(camera2ImplConfig.getCaptureRequestOptions());
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final DefaultCaptureOptionsUnpacker getINSTANCE() {
                return DefaultCaptureOptionsUnpacker.INSTANCE;
            }

            private Companion() {
            }
        }
    }

    public static final class ImageCaptureOptionUnpacker extends DefaultCaptureOptionsUnpacker {
        public static final Companion Companion = new Companion(null);
        private static final ImageCaptureOptionUnpacker INSTANCE = new ImageCaptureOptionUnpacker();

        @Override // androidx.camera.camera2.adapter.CameraUseCaseAdapter.DefaultCaptureOptionsUnpacker, androidx.camera.core.impl.CaptureConfig.OptionUnpacker
        public void unpack(UseCaseConfig<?> useCaseConfig, CaptureConfig.Builder builder) {
            useCaseConfig.getClass();
            builder.getClass();
            super.unpack(useCaseConfig, builder);
            if (!(useCaseConfig instanceof ImageCaptureConfig)) {
                fg.c("config is not ImageCaptureConfig");
                return;
            }
            Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
            ImageCapturePixelHDRPlusKt.toggleHDRPlus(builder2, (ImageCaptureConfig) useCaseConfig);
            builder.addImplementationOptions(builder2.build());
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final ImageCaptureOptionUnpacker getINSTANCE() {
                return ImageCaptureOptionUnpacker.INSTANCE;
            }

            private Companion() {
            }
        }
    }
}
