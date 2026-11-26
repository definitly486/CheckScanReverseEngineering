package androidx.camera.camera2.impl;

import android.graphics.SurfaceTexture;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.impl.MeteringRepeating;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.TargetConfig;
import defpackage.j59;
import defpackage.ku;
import defpackage.u96;

/* JADX INFO: loaded from: classes.dex */
public final class MeteringRepeating extends UseCase {
    private final CameraProperties cameraProperties;
    private SessionConfig.CloseableErrorListener closeableErrorListener;
    private DeferrableSurface deferrableSurface;
    private final Object deferrableSurfaceLock;
    private final DisplayInfoManager displayInfoManager;
    private final Size meteringSurfaceSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeteringRepeating(CameraProperties cameraProperties, MeteringRepeatingConfig meteringRepeatingConfig, DisplayInfoManager displayInfoManager) {
        super(meteringRepeatingConfig);
        cameraProperties.getClass();
        meteringRepeatingConfig.getClass();
        displayInfoManager.getClass();
        this.cameraProperties = cameraProperties;
        this.displayInfoManager = displayInfoManager;
        this.meteringSurfaceSize = MeteringRepeatingKt.getProperPreviewSize(cameraProperties, displayInfoManager);
        this.deferrableSurfaceLock = new Object();
    }

    private final DeferrableSurface createAndManageDeferrableSurface(Size size) {
        SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(size.getWidth(), size.getHeight());
        Surface surface = new Surface(surfaceTexture);
        DeferrableSurface deferrableSurface = this.deferrableSurface;
        if (deferrableSurface != null) {
            deferrableSurface.close();
        }
        ImmediateSurface immediateSurface = new ImmediateSurface(surface, size, getImageFormat());
        this.deferrableSurface = immediateSurface;
        immediateSurface.getTerminationFuture().addListener(new ku(2, surface, surfaceTexture), CameraXExecutors.directExecutor());
        return immediateSurface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createAndManageDeferrableSurface$lambda$1(Surface surface, SurfaceTexture surfaceTexture) {
        surface.release();
        surfaceTexture.release();
    }

    private final SessionConfig.Builder createPipeline(final Size size) {
        DeferrableSurface deferrableSurfaceCreateAndManageDeferrableSurface;
        synchronized (this.deferrableSurfaceLock) {
            deferrableSurfaceCreateAndManageDeferrableSurface = createAndManageDeferrableSurface(size);
        }
        SessionConfig.CloseableErrorListener closeableErrorListener = this.closeableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new SessionConfig.ErrorListener() { // from class: qa5
            @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
            public final void onError(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
                MeteringRepeating.createPipeline$lambda$1(this.a, size, sessionConfig, sessionError);
            }
        });
        this.closeableErrorListener = closeableErrorListener2;
        SessionConfig.Builder builderCreateFrom = SessionConfig.Builder.createFrom(new MeteringRepeatingConfig(), size);
        builderCreateFrom.getClass();
        builderCreateFrom.setTemplateType(1);
        builderCreateFrom.addSurface(deferrableSurfaceCreateAndManageDeferrableSurface);
        builderCreateFrom.setErrorListener(closeableErrorListener2);
        return builderCreateFrom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createPipeline$lambda$1(MeteringRepeating meteringRepeating, Size size, SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        sessionConfig.getClass();
        sessionError.getClass();
        meteringRepeating.updateSessionConfig(u96.h(meteringRepeating.createPipeline(size).build()));
        meteringRepeating.notifyReset();
    }

    @Override // androidx.camera.core.UseCase
    public MeteringRepeatingConfig getDefaultConfig(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        useCaseConfigFactory.getClass();
        return new Builder(this.cameraProperties, this.displayInfoManager).getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    public Builder getUseCaseConfigBuilder(Config config) {
        config.getClass();
        return new Builder(this.cameraProperties, this.displayInfoManager);
    }

    @Override // androidx.camera.core.UseCase
    public StreamSpec onSuggestedStreamSpecUpdated(StreamSpec streamSpec, StreamSpec streamSpec2) {
        streamSpec.getClass();
        updateSessionConfig(u96.h(createPipeline(this.meteringSurfaceSize).build()));
        StreamSpec streamSpecBuild = streamSpec.toBuilder().setResolution(this.meteringSurfaceSize).build();
        streamSpecBuild.getClass();
        return streamSpecBuild;
    }

    @Override // androidx.camera.core.UseCase
    public void onUnbind() {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.closeableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        this.closeableErrorListener = null;
        synchronized (this.deferrableSurfaceLock) {
            try {
                DeferrableSurface deferrableSurface = this.deferrableSurface;
                if (deferrableSurface != null) {
                    deferrableSurface.close();
                }
                this.deferrableSurface = null;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setupSession() {
        updateSuggestedStreamSpec(StreamSpec.builder(MeteringRepeatingKt.DEFAULT_PREVIEW_SIZE).build(), null);
    }

    public static final class Builder implements UseCaseConfig.Builder<MeteringRepeating, MeteringRepeatingConfig, Builder> {
        private final CameraProperties cameraProperties;
        private final DisplayInfoManager displayInfoManager;

        public Builder(CameraProperties cameraProperties, DisplayInfoManager displayInfoManager) {
            cameraProperties.getClass();
            displayInfoManager.getClass();
            this.cameraProperties = cameraProperties;
            this.displayInfoManager = displayInfoManager;
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MeteringRepeating build() {
            return new MeteringRepeating(this.cameraProperties, getUseCaseConfig(), this.displayInfoManager);
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableOptionsBundle getMutableConfig() {
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            mutableOptionsBundleCreate.getClass();
            return mutableOptionsBundleCreate;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public MeteringRepeatingConfig getUseCaseConfig() {
            return new MeteringRepeatingConfig();
        }

        @Override // androidx.camera.core.internal.TargetConfig.Builder
        public /* bridge */ /* synthetic */ Object setTargetClass(Class cls) {
            return setTargetClass((Class<MeteringRepeating>) cls);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public Builder setCaptureOptionUnpacker(CaptureConfig.OptionUnpacker optionUnpacker) {
            optionUnpacker.getClass();
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public Builder setCaptureType(UseCaseConfigFactory.CaptureType captureType) {
            captureType.getClass();
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public Builder setDefaultCaptureConfig(CaptureConfig captureConfig) {
            captureConfig.getClass();
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public Builder setDefaultSessionConfig(SessionConfig sessionConfig) {
            sessionConfig.getClass();
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public Builder setHighResolutionDisabled(boolean z) {
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public Builder setSessionOptionUnpacker(SessionConfig.OptionUnpacker optionUnpacker) {
            optionUnpacker.getClass();
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public Builder setStreamUseCase(StreamUseCase streamUseCase) {
            streamUseCase.getClass();
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public Builder setSurfaceOccupancyPriority(int i) {
            return this;
        }

        @Override // androidx.camera.core.internal.TargetConfig.Builder
        public Builder setTargetClass(Class<MeteringRepeating> cls) {
            cls.getClass();
            return this;
        }

        @Override // androidx.camera.core.internal.TargetConfig.Builder
        public Builder setTargetName(String str) {
            str.getClass();
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public Builder setZslDisabled(boolean z) {
            return this;
        }
    }

    public static final class MeteringRepeatingConfig implements UseCaseConfig<MeteringRepeating>, ImageInputConfig {
        private final MutableOptionsBundle config;

        public MeteringRepeatingConfig() {
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, CameraUseCaseAdapter.DefaultSessionOptionsUnpacker.INSTANCE);
            mutableOptionsBundleCreate.insertOption(TargetConfig.OPTION_TARGET_NAME, "MeteringRepeating");
            mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, UseCaseConfigFactory.CaptureType.METERING_REPEATING);
            this.config = mutableOptionsBundleCreate;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public UseCaseConfigFactory.CaptureType getCaptureType() {
            return UseCaseConfigFactory.CaptureType.METERING_REPEATING;
        }

        @Override // androidx.camera.core.impl.ImageInputConfig
        public int getInputFormat() {
            return 34;
        }

        @Override // androidx.camera.core.impl.ReadableConfig
        public MutableOptionsBundle getConfig() {
            return this.config;
        }
    }
}
