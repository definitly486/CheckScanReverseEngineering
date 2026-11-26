package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sf5 implements pz3 {
    public final String a;

    public sf5(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sf5) && this.a.equals(((sf5) obj).a);
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
        return me0.c("MultiTaskCounterViewModel(counterText=", this.a, ")");
    }
}
