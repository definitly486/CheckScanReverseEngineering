package com.warefly.checkscan.presentation.balance.transferCashback.coupons.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogNewFeatureAppBinding;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.i72;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class PromoCodeCopiedDialog extends BaseBottomSheetDialog<DialogNewFeatureAppBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final String d;
    public final String e;
    public final ud9 f;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PromoCodeCopiedDialog promoCodeCopiedDialog = PromoCodeCopiedDialog.this;
            promoCodeCopiedDialog.dismiss();
            Context context = promoCodeCopiedDialog.getContext();
            String str = promoCodeCopiedDialog.d;
            if (str == null) {
                str = promoCodeCopiedDialog.e;
            }
            i72.b(context, str);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(PromoCodeCopiedDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogNewFeatureAppBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    public PromoCodeCopiedDialog(Context context, String str, String str2) {
        super(context, R.style.BottomSheetDialogTheme);
        this.d = str;
        this.e = str2;
        this.f = new ud9(DialogNewFeatureAppBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogNewFeatureAppBinding dialogNewFeatureAppBinding = (DialogNewFeatureAppBinding) ud9Var.d;
        dialogNewFeatureAppBinding.btnClose.setVisibility(4);
        String str = this.d;
        if (str == null || str.length() == 0) {
            dialogNewFeatureAppBinding.tvTitle.setText(getContext().getString(R.string.new_balance_copied_copied_failed));
            dialogNewFeatureAppBinding.tvDescription.setText(getContext().getText(R.string.new_balance_copied_deciding_problem));
            dialogNewFeatureAppBinding.btnUpdate.setText(getContext().getString(R.string.new_balance_copied_flow_card));
        } else {
            dialogNewFeatureAppBinding.tvTitle.setText(getContext().getString(R.string.new_balance_copied_coupon_copied));
            dialogNewFeatureAppBinding.tvDescription.setText(getContext().getText(R.string.new_balance_copied_indicate_coupon));
            dialogNewFeatureAppBinding.btnUpdate.setText(getContext().getString(R.string.new_balance_copied_continue));
        }
        AppCompatButton appCompatButton = dialogNewFeatureAppBinding.btnUpdate;
        appCompatButton.getClass();
        appCompatButton.setOnClickListener(new lb7(new a()));
    }
}
