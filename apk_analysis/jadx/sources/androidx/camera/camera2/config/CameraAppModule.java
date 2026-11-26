package androidx.camera.camera2.config;

import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraPipe;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraAppModule {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final CameraDevices provideCameraDevices(CameraPipe cameraPipe) {
            cameraPipe.getClass();
            return cameraPipe.cameras();
        }

        private Companion() {
        }
    }
}
