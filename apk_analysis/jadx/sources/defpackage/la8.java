package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class la8 implements pz3 {
    public final String a;

    public la8(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof la8) && aa4.e(this.a, ((la8) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        dx6.b.getClass();
        return Integer.valueOf(dx6.c.d());
    }

    public final String toString() {
        return me0.c("StringViewModel(text=", this.a, ")");
    }
}
