package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class kd4 extends pc4 {
    public final xq4<String, pc4> b;

    public kd4() {
        xq4.a aVar = xq4.j;
        this.b = new xq4<>(false);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof kd4) && ((kd4) obj).b.equals(this.b);
        }
        return true;
    }

    public final pc4 h(String str) {
        return this.b.get(str);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
