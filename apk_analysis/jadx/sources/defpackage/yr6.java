package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class yr6 extends es6 implements af4 {
    public yr6() {
    }

    @Override // defpackage.qy0
    public me4 computeReflected() {
        x07.a.getClass();
        return this;
    }

    @Override // defpackage.af4
    public Object getDelegate() {
        return ((af4) getReflected()).getDelegate();
    }

    @Override // defpackage.af4
    public af4.a getGetter() {
        ((af4) getReflected()).getGetter();
        return null;
    }

    @Override // defpackage.ll3
    public Object invoke() {
        return get();
    }

    public yr6(Object obj) {
        super(obj);
    }

    public yr6(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    /* JADX INFO: renamed from: getGetter, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ ze4.a m9537getGetter() {
        getGetter();
        return null;
    }
}
