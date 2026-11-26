package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.graph.GraphListener;
import defpackage.j59;
import defpackage.mk2;
import defpackage.n1;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface Camera2DeviceManager {
    static /* synthetic */ mk2 closeAll$default(Camera2DeviceManager camera2DeviceManager, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: closeAll");
            return null;
        }
        if ((i & 1) != 0) {
            z = false;
        }
        return camera2DeviceManager.closeAll(z);
    }

    /* JADX INFO: renamed from: close-EfqyGwQ, reason: not valid java name */
    mk2<j59> mo766closeEfqyGwQ(String str);

    mk2<j59> closeAll(boolean z);

    /* JADX INFO: renamed from: open-zDSwpeU, reason: not valid java name */
    VirtualCamera mo767openzDSwpeU(String str, List<CameraId> list, GraphListener graphListener, boolean z, nl3<? super j59, Boolean> nl3Var);

    /* JADX INFO: renamed from: prewarm-EfqyGwQ, reason: not valid java name */
    void mo768prewarmEfqyGwQ(String str);
}
