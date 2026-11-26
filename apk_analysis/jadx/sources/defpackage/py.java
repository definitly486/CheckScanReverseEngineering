package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class py extends gr1 {
    public final wy a;
    public final gr1.a b;

    public py(wy wyVar, gr1.a aVar) {
        this.a = wyVar;
        this.b = aVar;
    }

    @Override // defpackage.gr1
    public final z43 a() {
        return this.a;
    }

    @Override // defpackage.gr1
    public final gr1.a b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gr1)) {
            return false;
        }
        gr1 gr1Var = (gr1) obj;
        wy wyVar = this.a;
        if (wyVar == null) {
            if (gr1Var.a() != null) {
                return false;
            }
        } else if (!wyVar.equals(gr1Var.a())) {
            return false;
        }
        gr1.a aVar = this.b;
        if (aVar == null) {
            return gr1Var.b() == null;
        }
        return aVar.equals(gr1Var.b());
    }

    public final int hashCode() {
        wy wyVar = this.a;
        int iHashCode = ((wyVar == null ? 0 : wyVar.hashCode()) ^ 1000003) * 1000003;
        gr1.a aVar = this.b;
        return iHashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        return "ComplianceData{privacyContext=" + this.a + ", productIdOrigin=" + this.b + "}";
    }
}
