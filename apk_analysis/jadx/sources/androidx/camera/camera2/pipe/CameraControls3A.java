package androidx.camera.camera2.pipe;

import android.hardware.camera2.params.MeteringRectangle;
import defpackage.mk2;
import defpackage.n1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CameraControls3A {
    /* JADX INFO: renamed from: setTorchOff-NqN7i0k$default, reason: not valid java name */
    static /* synthetic */ mk2 m230setTorchOffNqN7i0k$default(CameraControls3A cameraControls3A, AeMode aeMode, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: setTorchOff-NqN7i0k");
            return null;
        }
        if ((i & 1) != 0) {
            aeMode = null;
        }
        return cameraControls3A.mo233setTorchOffNqN7i0k(aeMode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: submit3A-ydBZfZg$default, reason: not valid java name */
    static /* synthetic */ mk2 m231submit3AydBZfZg$default(CameraControls3A cameraControls3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: submit3A-ydBZfZg");
            return null;
        }
        if ((i & 1) != 0) {
            aeMode = null;
        }
        if ((i & 2) != 0) {
            afMode = null;
        }
        if ((i & 4) != 0) {
            awbMode = null;
        }
        if ((i & 8) != 0) {
            list = null;
        }
        if ((i & 16) != 0) {
            list2 = null;
        }
        if ((i & 32) != 0) {
            list3 = null;
        }
        return cameraControls3A.mo234submit3AydBZfZg(aeMode, afMode, awbMode, list, list2, list3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: update3A-ydBZfZg$default, reason: not valid java name */
    static /* synthetic */ mk2 m232update3AydBZfZg$default(CameraControls3A cameraControls3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: update3A-ydBZfZg");
            return null;
        }
        if ((i & 1) != 0) {
            aeMode = null;
        }
        if ((i & 2) != 0) {
            afMode = null;
        }
        if ((i & 4) != 0) {
            awbMode = null;
        }
        if ((i & 8) != 0) {
            list = null;
        }
        if ((i & 16) != 0) {
            list2 = null;
        }
        if ((i & 32) != 0) {
            list3 = null;
        }
        return cameraControls3A.mo235update3AydBZfZg(aeMode, afMode, awbMode, list, list2, list3);
    }

    /* JADX INFO: renamed from: setTorchOff-NqN7i0k, reason: not valid java name */
    mk2<Result3A> mo233setTorchOffNqN7i0k(AeMode aeMode);

    mk2<Result3A> setTorchOn();

    /* JADX INFO: renamed from: submit3A-ydBZfZg, reason: not valid java name */
    mk2<Result3A> mo234submit3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3);

    /* JADX INFO: renamed from: update3A-ydBZfZg, reason: not valid java name */
    mk2<Result3A> mo235update3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3);
}
