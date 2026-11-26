package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class cs6 extends es6 implements cf4 {
    @Override // defpackage.qy0
    public final me4 computeReflected() {
        x07.a.getClass();
        return this;
    }

    @Override // defpackage.cf4
    public final void getGetter() {
        ((cf4) getReflected()).getGetter();
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        ((ds6) this).getGetter();
        throw null;
    }
}
