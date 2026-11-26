package androidx.camera.camera2.pipe.compat;

/* JADX INFO: loaded from: classes.dex */
public final class ObjectUnavailableException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObjectUnavailableException(Throwable th) {
        super(th);
        th.getClass();
    }
}
