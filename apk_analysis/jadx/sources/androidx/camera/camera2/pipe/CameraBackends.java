package androidx.camera.camera2.pipe;

import defpackage.e02;
import defpackage.j59;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface CameraBackends {
    /* JADX INFO: renamed from: get-SG3A4s8, reason: not valid java name */
    CameraBackend mo194getSG3A4s8(String str);

    Set<CameraBackendId> getActiveIds();

    Set<CameraBackendId> getAllIds();

    CameraBackend getDefault();

    Object shutdown(e02<? super j59> e02Var);
}
