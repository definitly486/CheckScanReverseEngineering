package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class as6 extends es6 implements bf4 {
    public as6() {
    }

    @Override // defpackage.qy0
    public me4 computeReflected() {
        x07.a.getClass();
        return this;
    }

    @Override // defpackage.bf4
    public Object getDelegate(Object obj) {
        return ((bf4) getReflected()).getDelegate(obj);
    }

    @Override // defpackage.bf4
    public bf4.a getGetter() {
        ((bf4) getReflected()).getGetter();
        return null;
    }

    @Override // defpackage.nl3
    public Object invoke(Object obj) {
        return get(obj);
    }

    public as6(Object obj) {
        super(obj);
    }

    public as6(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    /* JADX INFO: renamed from: getGetter, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ ze4.a m9500getGetter() {
        getGetter();
        return null;
    }
}
