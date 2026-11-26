package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class hv7 implements cs0 {
    public final String a;

    public hv7(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hv7) && this.a.equals(((hv7) obj).a);
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
        return this.a;
    }

    public final String toString() {
        return me0.c("ShopsHeaderViewModel(title=", this.a, ")");
    }
}
