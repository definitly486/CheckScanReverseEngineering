package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class cz extends u46 {
    public final long a;
    public final s29 b;
    public final z03 c;

    public cz(long j, s29 s29Var, z03 z03Var) {
        this.a = j;
        if (s29Var == null) {
            o2.d("Null transportContext");
            throw null;
        }
        this.b = s29Var;
        if (z03Var != null) {
            this.c = z03Var;
        } else {
            o2.d("Null event");
            throw null;
        }
    }

    @Override // defpackage.u46
    public final z03 a() {
        return this.c;
    }

    @Override // defpackage.u46
    public final long b() {
        return this.a;
    }

    @Override // defpackage.u46
    public final s29 c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof u46)) {
            return false;
        }
        u46 u46Var = (u46) obj;
        return this.a == u46Var.b() && this.b.equals(u46Var.c()) && this.c.equals(u46Var.a());
    }

    public final int hashCode() {
        long j = this.a;
        return this.c.hashCode() ^ ((((((int) ((j >>> 32) ^ j)) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.a + ", transportContext=" + this.b + ", event=" + this.c + "}";
    }
}
