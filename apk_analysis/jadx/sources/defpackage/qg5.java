package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class qg5 extends ug5 implements we4 {
    public qg5() {
    }

    @Override // defpackage.qy0
    public me4 computeReflected() {
        x07.a.getClass();
        return this;
    }

    @Override // defpackage.af4
    public Object getDelegate() {
        return ((we4) getReflected()).getDelegate();
    }

    @Override // defpackage.af4
    public af4.a getGetter() {
        ((we4) getReflected()).getGetter();
        return null;
    }

    @Override // defpackage.we4
    /* JADX INFO: renamed from: getSetter, reason: collision with other method in class */
    public we4.a mo9534getSetter() {
        ((we4) getReflected()).mo9534getSetter();
        return null;
    }

    @Override // defpackage.ll3
    public Object invoke() {
        return get();
    }

    public qg5(Object obj) {
        super(obj);
    }

    public qg5(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    /* JADX INFO: renamed from: getGetter, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ ze4.a m9533getGetter() {
        getGetter();
        return null;
    }

    public /* bridge */ /* synthetic */ ve4 getSetter() {
        mo9534getSetter();
        return null;
    }
}
