package yads;

import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class ym3 implements defpackage.id3 {
    public final /* synthetic */ IntegrationInspectorActivity a;

    public ym3(IntegrationInspectorActivity integrationInspectorActivity) {
        this.a = integrationInspectorActivity;
    }

    @Override // defpackage.id3
    public final Object emit(Object obj, defpackage.e02 e02Var) {
        ih0 ih0Var = (ih0) obj;
        jh0 jh0VarB = IntegrationInspectorActivity.b(this.a);
        jh0VarB.getClass();
        if (ih0Var.c) {
            jh0VarB.a.submitList(defpackage.kx2.b);
            jh0VarB.c.setVisibility(0);
        } else {
            jh0VarB.a.submitList(ih0Var.d);
            jh0VarB.c.setVisibility(8);
        }
        jh0VarB.b.setText(ih0Var.b.a);
        return j59.a;
    }
}
