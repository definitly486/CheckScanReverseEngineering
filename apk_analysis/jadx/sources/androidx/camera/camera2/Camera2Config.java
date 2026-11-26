package androidx.camera.camera2;

import android.content.Context;
import androidx.camera.camera2.adapter.CameraFactoryProvider;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.impl.CameraThreadConfig;
import defpackage.jh2;
import defpackage.jz0;
import defpackage.kz0;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2Config {
    public static final Companion Companion = new Companion(null);

    public static final class DefaultProvider implements CameraXConfig.Provider {
        @Override // androidx.camera.core.CameraXConfig.Provider
        public CameraXConfig getCameraXConfig() {
            return Camera2Config.Companion.defaultConfig();
        }
    }

    private Camera2Config() {
    }

    public static final CameraXConfig defaultConfig() {
        return Companion.defaultConfig();
    }

    public static final CameraXConfig from(CameraPipe cameraPipe, Context context, CameraThreadConfig cameraThreadConfig) {
        return Companion.from(cameraPipe, context, cameraThreadConfig);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ CameraXConfig from$default(Companion companion, CameraPipe cameraPipe, Context context, CameraThreadConfig cameraThreadConfig, int i, Object obj) {
            if ((i & 1) != 0) {
                cameraPipe = null;
            }
            if ((i & 2) != 0) {
                context = null;
            }
            if ((i & 4) != 0) {
                cameraThreadConfig = null;
            }
            return companion.from(cameraPipe, context, cameraThreadConfig);
        }

        public final CameraXConfig defaultConfig() {
            return from$default(this, null, null, null, 7, null);
        }

        public final CameraXConfig from(CameraPipe cameraPipe, Context context, CameraThreadConfig cameraThreadConfig) {
            CameraXConfig cameraXConfigBuild = new CameraXConfig.Builder().setCameraFactoryProvider(new CameraFactoryProvider(cameraPipe, context, cameraThreadConfig)).setDeviceSurfaceManagerProvider(new jz0()).setUseCaseConfigFactoryProvider(new kz0()).setRepeatingStreamForced(true).build();
            cameraXConfigBuild.getClass();
            return cameraXConfigBuild;
        }

        private Companion() {
        }
    }
}
