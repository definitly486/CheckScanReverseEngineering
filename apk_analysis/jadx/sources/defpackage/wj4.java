package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wj4 implements pz3 {
    public final String a;

    public wj4(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof wj4) && this.a.equals(((wj4) obj).a);
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
        return me0.c("LandingSubtitleViewModel(subtitle=", this.a, ")");
    }
}
