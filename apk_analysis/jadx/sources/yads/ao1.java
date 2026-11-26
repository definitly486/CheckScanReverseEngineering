package yads;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import com.monetization.ads.core.divkit.DivKitFeature;
import com.yandex.mobile.ads.R$style;
import java.util.Iterator;
import java.util.List;
import yads.ao1;

/* JADX INFO: loaded from: classes6.dex */
public final class ao1 {
    public final pg4 a;
    public final m2 b;
    public final q84 c;
    public Dialog d;

    public ao1(pg4 pg4Var, m2 m2Var, q84 q84Var) {
        this.a = pg4Var;
        this.b = m2Var;
        this.c = q84Var;
    }

    public final void a(Activity activity) {
        fo1 fo1Var;
        Object next;
        String str;
        if (!DivKitFeature.isEnabled()) {
            this.b.e();
            return;
        }
        try {
            List listF = this.a.f();
            vn1 vn1Var = null;
            if (listF != null) {
                Iterator it = listF.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        str = ((fo1) next).a;
                        un0[] un0VarArr = un0.b;
                    }
                } while (!defpackage.aa4.e(str, "close_dialog"));
                fo1Var = (fo1) next;
            } else {
                fo1Var = null;
            }
            if (fo1Var == null) {
                this.b.e();
                return;
            }
            vq0 vq0VarA = rh2.a(activity, (c81) new eo1(activity, vn1Var, 6).d.getValue(), null, "");
            Dialog dialog = new Dialog(activity, R$style.MonetizationAdsInternal_FullscreenDialog);
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: vn9
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    ao1.a(this.b, dialogInterface);
                }
            });
            vq0VarA.setActionHandler(new n10(new m10(dialog, this.b)));
            vq0VarA.a(fo1Var.e, fo1Var.f);
            dialog.setContentView(vq0VarA);
            fo0.a(dialog);
            this.d = dialog;
            dialog.show();
        } catch (Throwable th) {
            this.c.reportError("Failed to show DivKit close dialog", th);
        }
    }

    public static final void a(ao1 ao1Var, DialogInterface dialogInterface) {
        ao1Var.d = null;
    }
}
