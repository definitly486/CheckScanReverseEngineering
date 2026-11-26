package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pa implements cs0 {
    public final long a;
    public final en1 b;

    public pa(long j, en1 en1Var) {
        this.a = j;
        this.b = en1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pa)) {
            return false;
        }
        pa paVar = (pa) obj;
        return this.a == paVar.a && this.b.equals(paVar.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (Long.hashCode(this.a) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Long.valueOf(this.a);
    }

    public final String toString() {
        return "AdultPreviewViewModel(id=" + this.a + ", content=" + this.b + ")";
    }
}
