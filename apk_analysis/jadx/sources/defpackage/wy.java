package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class wy extends z43 {
    public final vy a;

    public wy(vy vyVar) {
        this.a = vyVar;
    }

    @Override // defpackage.z43
    public final y43 a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z43)) {
            return false;
        }
        z43 z43Var = (z43) obj;
        vy vyVar = this.a;
        if (vyVar == null) {
            return z43Var.a() == null;
        }
        return vyVar.equals(z43Var.a());
    }

    public final int hashCode() {
        vy vyVar = this.a;
        return (vyVar == null ? 0 : vyVar.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "ExternalPrivacyContext{prequest=" + this.a + "}";
    }
}
