package yads;

import android.view.View;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class ch1 extends u71 {
    public final ug1 f;
    public final w41 g;

    public ch1(tt ttVar, ug1 ug1Var, w41 w41Var, qh2 qh2Var) {
        super(ug1Var, ttVar, w41Var, qh2Var);
        this.f = ug1Var;
        this.g = w41Var;
    }

    @Override // yads.u71
    public final void a(tt ttVar, br0 br0Var, int i, n32 n32Var) {
        super.a(ttVar, br0Var, i, n32Var);
        this.f.setTag(R$id.monetization_ads_divkit_div_gallery_item_index, Integer.valueOf(i));
        this.g.a();
    }

    @Override // yads.u71
    public final void a(View view) {
        this.f.setLayoutParams(view.getLayoutParams());
    }

    @Override // yads.u71
    public final void a() {
        int i = cr3.a;
        vj5[] vj5VarArr = vj5.b;
        int i2 = rv3.a;
    }
}
