package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class my extends f00 {
    public final f00.a a;
    public final long b;

    public my(f00.a aVar, long j) {
        if (aVar == null) {
            o2.d("Null status");
            throw null;
        }
        this.a = aVar;
        this.b = j;
    }

    @Override // defpackage.f00
    public final long a() {
        return this.b;
    }

    @Override // defpackage.f00
    public final f00.a b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f00)) {
            return false;
        }
        f00 f00Var = (f00) obj;
        return this.a.equals(f00Var.b()) && this.b == f00Var.a();
    }

    public final int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        return ((int) ((j >>> 32) ^ j)) ^ iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        sb.append(this.a);
        sb.append(", nextRequestWaitMillis=");
        return k2.b(this.b, "}", sb);
    }
}
