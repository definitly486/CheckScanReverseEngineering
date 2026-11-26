package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sg4 implements sy0<Object> {
    public final /* synthetic */ c31 a;

    public sg4(c31 c31Var) {
        this.a = c31Var;
    }

    @Override // defpackage.sy0
    public final void a(fy0<Object> fy0Var, Throwable th) {
        th.getClass();
        this.a.resumeWith(new k57.a(th));
    }

    @Override // defpackage.sy0
    public final void b(fy0<Object> fy0Var, a57<Object> a57Var) {
        this.a.resumeWith(a57Var);
    }
}
