package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class qd8 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ rd8 f;
    public final /* synthetic */ sd8 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qd8(rd8 rd8Var, sd8 sd8Var) {
        super(1);
        this.f = rd8Var;
        this.g = sd8Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onQuestionActionClicked(this.g.b.b);
        return j59.a;
    }
}
