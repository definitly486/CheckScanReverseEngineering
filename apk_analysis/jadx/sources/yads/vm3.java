package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vm3 extends RuntimeException {
    public final String b;
    public final String c;

    public vm3(String str) {
        super(str);
        this.b = str;
        this.c = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.b;
    }
}
