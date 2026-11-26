package yads;

import android.app.Dialog;
import android.content.DialogInterface;
import com.yandex.mobile.ads.R$style;
import defpackage.z7a;

/* JADX INFO: loaded from: classes6.dex */
public final class rn1 {
    public static boolean d;
    public final do0 a;
    public final qn1 b;
    public final go0 c;

    public rn1() {
        do0 do0Var = new do0();
        qn1 qn1Var = new qn1(new on1(do0Var));
        go0 go0Var = new go0();
        this.a = do0Var;
        this.b = qn1Var;
        this.c = go0Var;
    }

    public final void a(vq0 vq0Var) {
        go0 go0Var = this.c;
        pq0 pq0Var = vq0Var.l;
        int i = R$style.MonetizationAdsInternal_FullscreenDialog;
        go0Var.getClass();
        Dialog dialog = new Dialog(pq0Var, i);
        this.a.a(dialog);
        dialog.setContentView(vq0Var);
        dialog.setOnDismissListener(new z7a());
        fo0.a(dialog);
        d = true;
        dialog.show();
    }

    public static final void a(DialogInterface dialogInterface) {
        d = false;
    }
}
