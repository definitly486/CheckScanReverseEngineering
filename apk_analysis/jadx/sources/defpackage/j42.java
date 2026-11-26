package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class j42 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ k42 f;
    public final /* synthetic */ ao1 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j42(k42 k42Var, ao1 ao1Var) {
        super(1);
        this.f = k42Var;
        this.g = ao1Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.invoke(Long.valueOf(this.g.a));
        return j59.a;
    }
}
