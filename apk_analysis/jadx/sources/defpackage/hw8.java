package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class hw8 implements pz3 {
    public final String a;

    public hw8(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hw8) && this.a.equals(((hw8) obj).a);
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
        return me0.c("TitleViewModel(title=", this.a, ")");
    }
}
