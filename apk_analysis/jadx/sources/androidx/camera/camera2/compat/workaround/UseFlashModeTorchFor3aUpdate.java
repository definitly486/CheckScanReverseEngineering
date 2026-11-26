package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.TorchFlashRequiredFor3aUpdateQuirk;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public interface UseFlashModeTorchFor3aUpdate {
    boolean shouldUseFlashModeTorch();

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final UseFlashModeTorchFor3aUpdate provideUseFlashModeTorchFor3aUpdate(CameraQuirks cameraQuirks) {
                cameraQuirks.getClass();
                return cameraQuirks.getQuirks().contains(TorchFlashRequiredFor3aUpdateQuirk.class) ? UseFlashModeTorchFor3aUpdateImpl.INSTANCE : NotUseFlashModeTorchFor3aUpdate.INSTANCE;
            }

            private Companion() {
            }
        }
    }
}
