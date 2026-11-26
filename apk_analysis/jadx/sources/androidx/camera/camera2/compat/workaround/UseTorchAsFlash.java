package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.UseTorchAsFlashQuirk;
import androidx.camera.camera2.internal.IntrinsicZoomCalculator;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.FrameMetadata;
import defpackage.e02;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface UseTorchAsFlash {
    boolean shouldDisableAePrecapture();

    Object shouldUseTorchAsFlash(nl3<? super e02<? super FrameMetadata>, ? extends Object> nl3Var, e02<? super Boolean> e02Var);

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final UseTorchAsFlash provideUseTorchAsFlash(CameraQuirks cameraQuirks, CameraDevices cameraDevices, IntrinsicZoomCalculator intrinsicZoomCalculator) {
                cameraQuirks.getClass();
                cameraDevices.getClass();
                intrinsicZoomCalculator.getClass();
                return cameraQuirks.getQuirks().contains(UseTorchAsFlashQuirk.class) ? new UseTorchAsFlashImpl(cameraQuirks, cameraDevices, intrinsicZoomCalculator) : NotUseTorchAsFlash.INSTANCE;
            }

            private Companion() {
            }
        }
    }
}
