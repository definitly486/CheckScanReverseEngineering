package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class k76 extends RuntimeException {
    public k76(String str, Exception exc, int i) {
        super((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : exc);
    }

    public k76(String str, Throwable th) {
        super(str, th);
    }
}
