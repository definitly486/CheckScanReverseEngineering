package androidx.camera.extensions;

import androidx.camera.core.CameraEffect;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.ViewPort;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.qn1;
import defpackage.yr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ExtensionSessionConfig extends SessionConfig {
    private final CameraFilter _cameraFilter;
    private final ExtensionsManager extensionsManager;
    private final int mode;

    public static final class Builder {
        private List<CameraEffect> effects;
        private final ExtensionsManager extensionsManager;
        private final int mode;
        private final List<UseCase> useCases;
        private ViewPort viewPort;

        public Builder(int i, ExtensionsManager extensionsManager) {
            extensionsManager.getClass();
            this.mode = i;
            this.extensionsManager = extensionsManager;
            this.useCases = new ArrayList();
            this.effects = new ArrayList();
        }

        public final Builder addEffect(CameraEffect cameraEffect) {
            cameraEffect.getClass();
            this.effects.add(cameraEffect);
            return this;
        }

        public final Builder addUseCase(UseCase useCase) {
            useCase.getClass();
            this.useCases.add(useCase);
            return this;
        }

        public final ExtensionSessionConfig build() {
            return new ExtensionSessionConfig(this.mode, this.extensionsManager, qn1.t0(this.useCases), this.viewPort, qn1.t0(this.effects));
        }

        public final Builder setViewPort(ViewPort viewPort) {
            viewPort.getClass();
            this.viewPort = viewPort;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExtensionSessionConfig(int i, ExtensionsManager extensionsManager, List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2) {
        super(list, viewPort, list2, null, null, null, 56, null);
        extensionsManager.getClass();
        list.getClass();
        list2.getClass();
        this.mode = i;
        this.extensionsManager = extensionsManager;
        this._cameraFilter = extensionsManager.getExtensionCameraFilterAndInjectCameraConfig$camera_extensions(i);
    }

    @Override // androidx.camera.core.SessionConfig
    public CameraFilter getCameraFilter() {
        return this._cameraFilter;
    }

    public final ExtensionsManager getExtensionsManager() {
        return this.extensionsManager;
    }

    public final int getMode() {
        return this.mode;
    }

    @Override // androidx.camera.core.SessionConfig
    public boolean getRequireNonEmptyUseCases() {
        return false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ExtensionSessionConfig(int i, ExtensionsManager extensionsManager, List<? extends UseCase> list) {
        this(i, extensionsManager, list, null, null, 24, null);
        extensionsManager.getClass();
        list.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ExtensionSessionConfig(int i, ExtensionsManager extensionsManager, List<? extends UseCase> list, ViewPort viewPort) {
        this(i, extensionsManager, list, viewPort, null, 16, null);
        extensionsManager.getClass();
        list.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ExtensionSessionConfig(int i, ExtensionsManager extensionsManager) {
        this(i, extensionsManager, null, null, null, 28, null);
        extensionsManager.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ExtensionSessionConfig(int i, ExtensionsManager extensionsManager, List list, ViewPort viewPort, List list2, int i2, jh2 jh2Var) {
        int i3 = i2 & 4;
        kx2 kx2Var = kx2.b;
        this(i, extensionsManager, i3 != 0 ? kx2Var : list, (i2 & 8) != 0 ? null : viewPort, (i2 & 16) != 0 ? kx2Var : list2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ExtensionSessionConfig(int i, ExtensionsManager extensionsManager, UseCase... useCaseArr) {
        this(i, extensionsManager, yr.h0(useCaseArr), null, null, 24, null);
        extensionsManager.getClass();
        useCaseArr.getClass();
    }
}
