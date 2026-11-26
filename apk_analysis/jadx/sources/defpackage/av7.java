package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class av7 implements cs0 {
    public final String a;

    public av7(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof av7) && this.a.equals(((av7) obj).a);
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
        return me0.c("ShopsButtonMoreViewModel(title=", this.a, ")");
    }
}
