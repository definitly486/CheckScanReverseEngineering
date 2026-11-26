package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class mw2 {
    public final rd3 a;

    public mw2(rd3 rd3Var) {
        this.a = rd3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof mw2) && defpackage.aa4.e(this.a, ((mw2) obj).a);
    }

    public final int hashCode() {
        rd3 rd3Var = this.a;
        if (rd3Var == null) {
            return 0;
        }
        return rd3Var.hashCode();
    }

    public final String toString() {
        return "FeedbackValue(imageValue=" + this.a + ")";
    }
}
