package yads;

import android.view.View;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class t41 extends gh4 implements nl3 {
    public final /* synthetic */ View b;
    public final /* synthetic */ zh2 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t41(View view, zh2 zh2Var) {
        super(1);
        this.b = view;
        this.c = zh2Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        this.b.setNextFocusUpId(this.c.a((String) obj));
        return j59.a;
    }
}
