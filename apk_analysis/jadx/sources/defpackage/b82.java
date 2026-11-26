package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class b82 implements so8 {
    public final String a;

    public b82(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b82) && this.a.equals(((b82) obj).a);
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
        return me0.c("DailyTaskDescriptionViewModel(text=", this.a, ")");
    }
}
