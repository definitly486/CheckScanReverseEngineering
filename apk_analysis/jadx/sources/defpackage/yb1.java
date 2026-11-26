package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class yb1 implements pz3 {
    public final String a;

    public yb1(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof yb1) && this.a.equals(((yb1) obj).a);
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
        return me0.c("CheckboxTaskStepsDescriptionViewModel(description=", this.a, ")");
    }
}
