package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class h91<S, T> extends d91<T> {
    public final hd3<S> e;

    public h91(int i, cu0 cu0Var, o22 o22Var, hd3 hd3Var) {
        super(o22Var, i, cu0Var);
        this.e = hd3Var;
    }

    @Override // defpackage.d91, defpackage.hd3
    public final Object collect(id3<? super T> id3Var, e02<? super j59> e02Var) {
        if (this.c == -3) {
            o22 context = e02Var.getContext();
            Boolean bool = Boolean.FALSE;
            it1 it1Var = new it1(1);
            o22 o22Var = this.b;
            o22 o22VarPlus = !((Boolean) o22Var.fold(bool, it1Var)).booleanValue() ? context.plus(o22Var) : q22.a(context, o22Var, false);
            if (aa4.e(o22VarPlus, context)) {
                Object objL = l(id3Var, e02Var);
                return objL == a32.COROUTINE_SUSPENDED ? objL : j59.a;
            }
            g02.a aVar = g02.a.b;
            if (aa4.e(o22VarPlus.get(aVar), context.get(aVar))) {
                o22 context2 = e02Var.getContext();
                if (!(id3Var instanceof yo7) && !(id3Var instanceof lo5)) {
                    id3Var = new g59(id3Var, context2);
                }
                Object objA = f91.a(o22VarPlus, id3Var, lt8.b(o22VarPlus), new g91(this, null), e02Var);
                return objA == a32.COROUTINE_SUSPENDED ? objA : j59.a;
            }
        }
        Object objCollect = super.collect(id3Var, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    @Override // defpackage.d91
    public final Object h(ug6<? super T> ug6Var, e02<? super j59> e02Var) {
        Object objL = l(new yo7(ug6Var), e02Var);
        return objL == a32.COROUTINE_SUSPENDED ? objL : j59.a;
    }

    public abstract Object l(id3<? super T> id3Var, e02<? super j59> e02Var);

    @Override // defpackage.d91
    public final String toString() {
        return this.e + " -> " + super.toString();
    }
}
