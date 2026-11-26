package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fc {
    public final boolean a;
    public final long b;

    public fc(boolean z, long j) {
        this.a = z;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fc)) {
            return false;
        }
        fc fcVar = (fc) obj;
        return this.a == fcVar.a && this.b == fcVar.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "AlfaBankFeatures(isTest=" + this.a + ", minRegisterAmount=" + this.b + ")";
    }
}
