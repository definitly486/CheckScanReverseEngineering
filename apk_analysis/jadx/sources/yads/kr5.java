package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class kr5 {
    public abstract String a();

    public final Object b() {
        if (this instanceof gr5) {
            return ((gr5) this).b;
        }
        if (this instanceof fr5) {
            return Long.valueOf(((fr5) this).b);
        }
        if (this instanceof br5) {
            return Boolean.valueOf(((br5) this).b);
        }
        if (this instanceof er5) {
            return Double.valueOf(((er5) this).b);
        }
        if (this instanceof cr5) {
            return new l20(((cr5) this).b);
        }
        if (this instanceof jr5) {
            return new q46(((jr5) this).b);
        }
        if (this instanceof ar5) {
            return ((ar5) this).b;
        }
        if (this instanceof dr5) {
            return ((dr5) this).b;
        }
        defpackage.me0.e();
        return null;
    }
}
