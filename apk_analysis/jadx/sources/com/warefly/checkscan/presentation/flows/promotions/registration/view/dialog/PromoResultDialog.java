package com.warefly.checkscan.presentation.flows.promotions.registration.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogPromoResultBinding;
import defpackage.aa4;
import defpackage.bo6;
import defpackage.bs6;
import defpackage.co6;
import defpackage.do6;
import defpackage.eo6;
import defpackage.fo6;
import defpackage.j59;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.ta8;
import defpackage.ud9;
import defpackage.ur6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class PromoResultDialog extends BaseBottomSheetDialog<DialogPromoResultBinding> {
    public static final /* synthetic */ ze4<Object>[] i;
    public final ll3<j59> d;
    public final ur6 e;
    public final int f;
    public final ud9 g;
    public CountDownTimer h;

    static {
        bs6 bs6Var = new bs6(PromoResultDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
    }

    public PromoResultDialog() {
        throw null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromoResultDialog(Context context, ur6 ur6Var, int i2) {
        super(context, R.style.BottomSheetDialogTheme);
        do6 do6Var = do6.f;
        do6Var.getClass();
        ur6Var.getClass();
        this.d = do6Var;
        this.e = ur6Var;
        this.f = i2;
        this.g = new ud9(DialogPromoResultBinding.class, this);
    }

    public final DialogPromoResultBinding e() {
        ze4<Object> ze4Var = i[0];
        ud9 ud9Var = this.g;
        ud9Var.getClass();
        ze4Var.getClass();
        return (DialogPromoResultBinding) ud9Var.d;
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ur6.b bVar = ur6.b.a;
        ur6 ur6Var = this.e;
        int i2 = 0;
        if (aa4.e(ur6Var, bVar)) {
            DialogPromoResultBinding dialogPromoResultBindingE = e();
            dialogPromoResultBindingE.tvTitle.setText(getContext().getString(R.string.fragment_registration_result_error_title));
            dialogPromoResultBindingE.tvSubtitle.setText(getContext().getString(R.string.fragment_registration_result_error_description));
            dialogPromoResultBindingE.btnChange.setOnClickListener(new bo6(this, i2));
            a.d(getContext()).e(ContextCompat.getDrawable(getContext(), R.drawable.ic_circle_error)).L(dialogPromoResultBindingE.ivIcon);
            return;
        }
        if (ur6Var instanceof ur6.a) {
            ur6.a aVar = (ur6.a) ur6Var;
            String str = aVar.a;
            String str2 = aVar.b;
            DialogPromoResultBinding dialogPromoResultBindingE2 = e();
            dialogPromoResultBindingE2.tvTitle.setText(str);
            dialogPromoResultBindingE2.tvSubtitle.setText(str2);
            dialogPromoResultBindingE2.btnChange.setOnClickListener(new co6(this, i2));
            a.d(getContext()).e(ContextCompat.getDrawable(getContext(), R.drawable.ic_circle_error)).L(dialogPromoResultBindingE2.ivIcon);
            return;
        }
        if (!(ur6Var instanceof ur6.d)) {
            if (ur6Var instanceof ur6.c) {
                ur6.c cVar = (ur6.c) ur6Var;
                DialogPromoResultBinding dialogPromoResultBindingE3 = e();
                dialogPromoResultBindingE3.btnChange.setText(cVar.c);
                dialogPromoResultBindingE3.tvTitle.setText(cVar.a);
                dialogPromoResultBindingE3.tvSubtitle.setText(cVar.b);
                TextView textView = dialogPromoResultBindingE3.btnChange;
                textView.getClass();
                textView.setOnClickListener(new lb7(new eo6(this, cVar)));
                a.d(getContext()).f(Integer.valueOf(R.drawable.ic_circle_error)).L(dialogPromoResultBindingE3.ivIcon);
                return;
            }
            return;
        }
        ur6.d dVar = (ur6.d) ur6Var;
        DialogPromoResultBinding dialogPromoResultBindingE4 = e();
        dialogPromoResultBindingE4.tvTitle.setText(dVar.a);
        TextView textView2 = dialogPromoResultBindingE4.tvSubtitle;
        textView2.getClass();
        String str3 = dVar.b;
        textView2.setVisibility(ta8.M(str3) ? 8 : 0);
        dialogPromoResultBindingE4.tvSubtitle.setText(str3);
        TextView textView3 = dialogPromoResultBindingE4.btnChange;
        textView3.getClass();
        textView3.setVisibility(8);
        this.d.invoke();
        a.d(getContext()).e(ContextCompat.getDrawable(getContext(), R.drawable.ic_blue_alice_done)).L(dialogPromoResultBindingE4.ivIcon);
        this.h = new fo6(this).start();
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        CountDownTimer countDownTimer = this.h;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }
}
