package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class sg5 extends ug5 implements xe4 {
    public sg5() {
    }

    @Override // defpackage.qy0
    public me4 computeReflected() {
        x07.a.getClass();
        return this;
    }

    @Override // defpackage.bf4
    public Object getDelegate(Object obj) {
        return ((xe4) getReflected()).getDelegate(obj);
    }

    @Override // defpackage.bf4
    public bf4.a getGetter() {
        ((xe4) getReflected()).getGetter();
        return null;
    }

    @Override // defpackage.xe4
    /* JADX INFO: renamed from: getSetter, reason: collision with other method in class */
    public xe4.a mo9536getSetter() {
        ((xe4) getReflected()).mo9536getSetter();
        return null;
    }

    @Override // defpackage.nl3
    public Object invoke(Object obj) {
        return get(obj);
    }

    public sg5(Object obj) {
        super(obj);
    }

    public sg5(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    /* JADX INFO: renamed from: getGetter, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ ze4.a m9535getGetter() {
        getGetter();
        return null;
    }

    public /* bridge */ /* synthetic */ ve4 getSetter() {
        mo9536getSetter();
        return null;
    }
}
