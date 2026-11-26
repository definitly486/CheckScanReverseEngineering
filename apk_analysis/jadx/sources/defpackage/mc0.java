package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class mc0 implements pz3, f34 {
    public final hc0.b a;

    public mc0(hc0.b bVar) {
        bVar.getClass();
        this.a = bVar;
    }

    @Override // defpackage.f34
    public final int d() {
        return this.a.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof mc0) && aa4.e(this.a, ((mc0) obj).a);
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
        return Integer.valueOf(this.a.e);
    }

    public final String toString() {
        return "BannerViewModel(banner=" + this.a + ")";
    }
}
