package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class oy extends wl1 {
    public final wl1.a a;
    public final ky b;

    public oy(wl1.a aVar, ky kyVar) {
        this.a = aVar;
        this.b = kyVar;
    }

    @Override // defpackage.wl1
    public final hh a() {
        return this.b;
    }

    @Override // defpackage.wl1
    public final wl1.a b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wl1)) {
            return false;
        }
        wl1 wl1Var = (wl1) obj;
        wl1.a aVar = this.a;
        if (aVar == null) {
            if (wl1Var.b() != null) {
                return false;
            }
        } else if (!aVar.equals(wl1Var.b())) {
            return false;
        }
        ky kyVar = this.b;
        if (kyVar == null) {
            return wl1Var.a() == null;
        }
        return kyVar.equals(wl1Var.a());
    }

    public final int hashCode() {
        wl1.a aVar = this.a;
        int iHashCode = ((aVar == null ? 0 : aVar.hashCode()) ^ 1000003) * 1000003;
        ky kyVar = this.b;
        return iHashCode ^ (kyVar != null ? kyVar.hashCode() : 0);
    }

    public final String toString() {
        return "ClientInfo{clientType=" + this.a + ", androidClientInfo=" + this.b + "}";
    }
}
