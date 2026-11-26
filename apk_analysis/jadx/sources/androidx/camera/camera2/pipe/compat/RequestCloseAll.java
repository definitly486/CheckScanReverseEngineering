package androidx.camera.camera2.pipe.compat;

import defpackage.j59;
import defpackage.xp1;
import defpackage.yp1;

/* JADX INFO: loaded from: classes.dex */
public final class RequestCloseAll extends CameraRequest {
    private final xp1<j59> deferred;

    public RequestCloseAll() {
        super(null);
        this.deferred = new yp1();
    }

    public final xp1<j59> getDeferred() {
        return this.deferred;
    }

    public String toString() {
        return "RequestCloseAll";
    }
}
