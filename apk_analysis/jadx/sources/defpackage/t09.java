package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class t09 implements pz3 {
    public final boolean a;

    public t09(boolean z) {
        this.a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t09) && this.a == ((t09) obj).a;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return "button" + this.a + false;
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + (Boolean.hashCode(this.a) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return "button";
    }

    public final String toString() {
        return l2.c("TransferSBPButtonViewModel(isEnabled=", ", isLoading=false)", this.a);
    }

    public t09() {
        this(false);
    }
}
