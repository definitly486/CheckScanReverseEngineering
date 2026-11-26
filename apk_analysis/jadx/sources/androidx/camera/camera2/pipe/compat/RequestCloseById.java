package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import defpackage.j59;
import defpackage.jh2;
import defpackage.xp1;
import defpackage.yp1;

/* JADX INFO: loaded from: classes.dex */
public final class RequestCloseById extends CameraRequest {
    private final String activeCameraId;
    private final xp1<j59> deferred;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private RequestCloseById(String str) {
        super(null);
        str.getClass();
        this.activeCameraId = str;
        this.deferred = new yp1();
    }

    /* JADX INFO: renamed from: getActiveCameraId-Dz_R5H8, reason: not valid java name */
    public final String m824getActiveCameraIdDz_R5H8() {
        return this.activeCameraId;
    }

    public final xp1<j59> getDeferred() {
        return this.deferred;
    }

    public String toString() {
        return "RequestCloseById(" + ((Object) CameraId.m357toStringimpl(this.activeCameraId)) + ')';
    }

    public /* synthetic */ RequestCloseById(String str, jh2 jh2Var) {
        this(str);
    }
}
