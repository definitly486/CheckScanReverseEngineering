package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public class af7<T> extends a0<T> implements b32 {
    public final e02<T> f;

    public af7(e02 e02Var, o22 o22Var) {
        super(o22Var, true, true);
        this.f = e02Var;
    }

    @Override // defpackage.sb4
    public final boolean S() {
        return true;
    }

    @Override // defpackage.b32
    public final b32 getCallerFrame() {
        e02<T> e02Var = this.f;
        if (e02Var instanceof b32) {
            return (b32) e02Var;
        }
        return null;
    }

    public void n0() {
    }

    @Override // defpackage.sb4
    public void s(Object obj) {
        go2.f(zya.b(this.f), oe0.b(obj));
    }

    @Override // defpackage.sb4
    public void t(Object obj) {
        this.f.resumeWith(oe0.b(obj));
    }
}
