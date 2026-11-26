package com.warefly.checkscan.presentation.electrocheque.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew;
import com.warefly.checkscan.databinding.DialogElectrochequeCongratulationsBinding;
import defpackage.bn2;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class CongratulationDialog extends BaseDialogNew<DialogElectrochequeCongratulationsBinding> {
    public static final /* synthetic */ ze4<Object>[] e;
    public final String c;
    public final bn2 d;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            CongratulationDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(CongratulationDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogElectrochequeCongratulationsBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
    }

    public CongratulationDialog(Context context, String str) {
        super(context);
        this.c = str;
        this.d = new bn2(DialogElectrochequeCongratulationsBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = e[0];
        bn2 bn2Var = this.d;
        bn2Var.getClass();
        ze4Var.getClass();
        DialogElectrochequeCongratulationsBinding dialogElectrochequeCongratulationsBinding = (DialogElectrochequeCongratulationsBinding) ((ViewBinding) bn2Var.d);
        dialogElectrochequeCongratulationsBinding.tvNowYouWill.setText(this.c);
        ImageView imageView = dialogElectrochequeCongratulationsBinding.ivCloseBtnElectro;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
    }
}
