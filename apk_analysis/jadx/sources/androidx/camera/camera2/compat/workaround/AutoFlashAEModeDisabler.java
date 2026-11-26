package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ImageCaptureFailWithAutoFlashQuirk;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public interface AutoFlashAEModeDisabler {
    int getCorrectedAeMode(int i);

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final AutoFlashAEModeDisabler provideAEModeDisabler(CameraQuirks cameraQuirks) {
                cameraQuirks.getClass();
                return (DeviceQuirks.INSTANCE.get(CrashWhenTakingPhotoWithAutoFlashAEModeQuirk.class) == null && !cameraQuirks.getQuirks().contains(ImageCaptureFailWithAutoFlashQuirk.class)) ? NoOpAutoFlashAEModeDisabler.INSTANCE : AutoFlashAEModeDisablerImpl.INSTANCE;
            }

            private Companion() {
            }
        }
    }
}
