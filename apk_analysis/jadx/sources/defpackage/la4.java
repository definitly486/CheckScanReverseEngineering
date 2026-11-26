package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class la4 {
    public final fc a;

    public la4(fc fcVar) {
        this.a = fcVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof la4) && this.a.equals(((la4) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "IsExperimentLimitUser(alfaBank=" + this.a + ")";
    }
}
