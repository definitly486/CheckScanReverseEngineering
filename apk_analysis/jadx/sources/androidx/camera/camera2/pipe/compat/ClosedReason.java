package androidx.camera.camera2.pipe.compat;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes.dex */
public enum ClosedReason {
    APP_CLOSED,
    APP_DISCONNECTED,
    CAMERA2_CLOSED,
    CAMERA2_DISCONNECTED,
    CAMERA2_ERROR,
    CAMERA2_EXCEPTION;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<ClosedReason> getEntries() {
        return $ENTRIES;
    }
}
