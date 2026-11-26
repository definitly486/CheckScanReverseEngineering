package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ag8 implements pz3 {
    public final wf8 a;

    public ag8(wf8 wf8Var) {
        this.a = wf8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ag8) && this.a.equals(((ag8) obj).a);
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
        return Integer.valueOf(this.a.a);
    }

    public final String toString() {
        return "SupportSectionViewModel(section=" + this.a + ")";
    }
}
