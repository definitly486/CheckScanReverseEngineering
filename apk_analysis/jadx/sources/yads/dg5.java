package yads;

import com.monetization.ads.nativeads.CustomizableMediaView;

/* JADX INFO: loaded from: classes6.dex */
public final class dg5 extends defpackage.sr5 {
    public final /* synthetic */ eg5 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dg5(z14 z14Var, eg5 eg5Var) {
        super(z14Var);
        this.a = eg5Var;
    }

    @Override // defpackage.sr5
    public final void afterChange(defpackage.ze4 ze4Var, Object obj, Object obj2) {
        ze4Var.getClass();
        z14 z14Var = (z14) obj2;
        z14 z14Var2 = (z14) obj;
        if (defpackage.aa4.e(z14Var, z14Var2)) {
            return;
        }
        e55 e55Var = this.a.g;
        defpackage.ze4[] ze4VarArr = eg5.k;
        defpackage.ze4 ze4Var2 = ze4VarArr[0];
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) e55Var.a.get();
        if (customizableMediaView == null) {
            return;
        }
        e55 e55Var2 = this.a.h;
        defpackage.ze4 ze4Var3 = ze4VarArr[1];
        v14 v14Var = (v14) e55Var2.a.get();
        if (v14Var == null) {
            return;
        }
        z14Var2.a(customizableMediaView);
        customizableMediaView.post(new cg5(z14Var, customizableMediaView, v14Var));
    }
}
