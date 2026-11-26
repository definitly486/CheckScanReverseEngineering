package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class hr3 implements mn2 {
    public final vs3.g b;

    public hr3(vs3.g gVar) {
        if (gVar != null) {
            this.b = gVar;
        } else {
            o2.d("Http2Error cannot be null for GOAWAY");
            throw null;
        }
    }

    @Override // defpackage.mn2
    public final String a() {
        return "GOAWAY " + this.b.name();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && hr3.class == obj.getClass() && this.b == ((hr3) obj).b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
