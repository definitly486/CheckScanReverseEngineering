package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class bz extends hm5 {
    public final hm5.b a;
    public final hm5.a b;

    public bz(hm5.b bVar, hm5.a aVar) {
        this.a = bVar;
        this.b = aVar;
    }

    @Override // defpackage.hm5
    public final hm5.a a() {
        return this.b;
    }

    @Override // defpackage.hm5
    public final hm5.b b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof hm5)) {
            return false;
        }
        hm5 hm5Var = (hm5) obj;
        hm5.b bVar = this.a;
        if (bVar == null) {
            if (hm5Var.b() != null) {
                return false;
            }
        } else if (!bVar.equals(hm5Var.b())) {
            return false;
        }
        hm5.a aVar = this.b;
        if (aVar == null) {
            return hm5Var.a() == null;
        }
        return aVar.equals(hm5Var.a());
    }

    public final int hashCode() {
        hm5.b bVar = this.a;
        int iHashCode = ((bVar == null ? 0 : bVar.hashCode()) ^ 1000003) * 1000003;
        hm5.a aVar = this.b;
        return iHashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.a + ", mobileSubtype=" + this.b + "}";
    }
}
