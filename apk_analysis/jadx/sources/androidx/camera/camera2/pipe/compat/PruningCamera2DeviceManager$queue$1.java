package androidx.camera.camera2.pipe.compat;

import defpackage.j59;
import defpackage.nl3;
import defpackage.qm3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class PruningCamera2DeviceManager$queue$1 extends qm3 implements nl3<List<CameraRequest>, j59> {
    public PruningCamera2DeviceManager$queue$1(Object obj) {
        super(1, obj, PruningCamera2DeviceManager.class, "prune", "prune$camera_camera2_pipe(Ljava/util/List;)V", 0);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(List<CameraRequest> list) {
        list.getClass();
        ((PruningCamera2DeviceManager) this.receiver).prune$camera_camera2_pipe(list);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(List<CameraRequest> list) {
        invoke2(list);
        return j59.a;
    }
}
