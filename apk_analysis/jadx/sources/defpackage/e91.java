package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public class e91<T> extends d91<T> {
    public final bm3<ug6<? super T>, e02<? super j59>, Object> e;

    /* JADX WARN: Multi-variable type inference failed */
    public e91(bm3<? super ug6<? super T>, ? super e02<? super j59>, ? extends Object> bm3Var, o22 o22Var, int i, cu0 cu0Var) {
        super(o22Var, i, cu0Var);
        this.e = bm3Var;
    }

    @Override // defpackage.d91
    public Object h(ug6<? super T> ug6Var, e02<? super j59> e02Var) {
        Object objInvoke = this.e.invoke(ug6Var, e02Var);
        return objInvoke == a32.COROUTINE_SUSPENDED ? objInvoke : j59.a;
    }

    @Override // defpackage.d91
    public d91<T> i(o22 o22Var, int i, cu0 cu0Var) {
        return new e91(this.e, o22Var, i, cu0Var);
    }

    @Override // defpackage.d91
    public final String toString() {
        return "block[" + this.e + "] -> " + super.toString();
    }
}
