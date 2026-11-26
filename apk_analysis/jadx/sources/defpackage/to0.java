package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class to0 implements pz3, f34 {
    public final no0.a a;

    public to0(no0.a aVar) {
        this.a = aVar;
    }

    @Override // defpackage.f34
    public final int d() {
        return this.a.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof to0) && this.a == ((to0) obj).a;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a.toString();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a.a);
    }

    public final String toString() {
        return "BonusPromoBannerViewModel(banner=" + this.a + ")";
    }
}
