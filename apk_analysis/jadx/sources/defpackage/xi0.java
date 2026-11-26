package defpackage;

import android.content.res.Resources;

/* JADX INFO: loaded from: classes5.dex */
public final class xi0 implements v47, mq1 {
    public final Object b;

    public /* synthetic */ xi0(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.v47
    public e47 a(e47 e47Var, xz5 xz5Var) {
        Resources resources = (Resources) this.b;
        if (e47Var == null) {
            return null;
        }
        return new dl4(resources, e47Var);
    }

    @Override // defpackage.mq1
    public void onComplete() {
        ((c31) this.b).resumeWith(j59.a);
    }

    @Override // defpackage.mq1
    public void onError(Throwable th) {
        ((c31) this.b).resumeWith(r57.a(th));
    }

    @Override // defpackage.mq1
    public void onSubscribe(cp2 cp2Var) {
        ((c31) this.b).n(new om4(cp2Var, 1));
    }
}
