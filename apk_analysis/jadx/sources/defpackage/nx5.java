package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class nx5 {
    public final String a;
    public final String b;

    public nx5(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nx5)) {
            return false;
        }
        nx5 nx5Var = (nx5) obj;
        return aa4.e(this.a, nx5Var.a) && this.b.equals(nx5Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return n2.d("OnlineShopButton(title=", this.a, ", url=", this.b, ")");
    }
}
