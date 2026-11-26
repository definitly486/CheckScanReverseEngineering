package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class is2 extends Throwable {
    public final String b;

    public is2(int i) {
        this.b = kv2.b(i, "Drawable with id: ", " , not found");
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.b;
    }
}
