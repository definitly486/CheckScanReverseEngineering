package androidx.camera.camera2.pipe;

import defpackage.hd3;
import defpackage.tb7;

/* JADX INFO: loaded from: classes.dex */
public final class CameraDevicesKt {
    /* JADX INFO: renamed from: find-Ohbb9yk, reason: not valid java name */
    public static final hd3<CameraMetadata> m274findOhbb9yk(CameraDevices cameraDevices, String str, boolean z) {
        cameraDevices.getClass();
        return new tb7(new CameraDevicesKt$find$1(cameraDevices, str, z, null));
    }

    /* JADX INFO: renamed from: find-Ohbb9yk$default, reason: not valid java name */
    public static /* synthetic */ hd3 m275findOhbb9yk$default(CameraDevices cameraDevices, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return m274findOhbb9yk(cameraDevices, str, z);
    }
}
