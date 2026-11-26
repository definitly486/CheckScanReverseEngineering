package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class c61 extends gh4 implements nl3<a57<b57>, c18<? extends l89>> {
    public final /* synthetic */ d61 f;
    public final /* synthetic */ long g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c61(d61 d61Var, long j) {
        super(1);
        this.f = d61Var;
        this.g = j;
    }

    @Override // defpackage.nl3
    public final c18<? extends l89> invoke(a57<b57> a57Var) {
        a57<b57> a57Var2 = a57Var;
        a57Var2.getClass();
        int i = a57Var2.a.e;
        if (200 > i || i >= 400) {
            return new oz7(new lg(2));
        }
        final d61 d61Var = this.f;
        qp1 qp1VarB = d61Var.b.b(this.g);
        Callable callable = new Callable() { // from class: b61
            @Override // java.util.concurrent.Callable
            public final Object call() {
                d61Var.e.onNext(Boolean.TRUE);
                return l89.b.a;
            }
        };
        qp1VarB.getClass();
        return new vq1(qp1VarB, callable);
    }
}
