package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class dj9 implements pz3 {
    public final String a;

    public dj9(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof dj9) && aa4.e(this.a, ((dj9) obj).a);
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
        return me0.c("WithdrawalBlockTitleViewModel(title=", this.a, ")");
    }
}
