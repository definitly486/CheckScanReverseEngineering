package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public class yq1 {
    public static final /* synthetic */ long b = pz0.a.objectFieldOffset(yq1.class.getDeclaredField("_handled$volatile"));
    private volatile /* synthetic */ int _handled$volatile;
    public final Throwable a;

    public yq1(Throwable th, boolean z) {
        this.a = th;
        this._handled$volatile = z ? 1 : 0;
    }

    public final String toString() {
        return getClass().getSimpleName() + '[' + this.a + ']';
    }
}
