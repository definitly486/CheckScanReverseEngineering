package com.warefly.checkscan.presentation.bonuses.behaviors;

import android.content.Context;
import android.os.Bundle;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.DialogDoneBinding;
import com.warefly.checkscan.ui.AutoCancellableDialog;
import defpackage.bn2;
import defpackage.bs6;
import defpackage.oz1;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class RemovedFromFavesDialog extends AutoCancellableDialog<DialogDoneBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final boolean e;
    public final bn2 f;

    static {
        bs6 bs6Var = new bs6(RemovedFromFavesDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogDoneBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    public RemovedFromFavesDialog(Context context, boolean z) {
        super(context);
        this.e = z;
        this.f = new bn2(DialogDoneBinding.class, this);
    }

    @Override // com.warefly.checkscan.ui.AutoCancellableDialog, com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        bn2 bn2Var = this.f;
        bn2Var.getClass();
        ze4Var.getClass();
        DialogDoneBinding dialogDoneBinding = (DialogDoneBinding) ((ViewBinding) bn2Var.d);
        ImageView imageView = dialogDoneBinding.ivIcon;
        boolean z = this.e;
        imageView.setImageDrawable(oz1.b(dialogDoneBinding, z ? R.drawable.ic_done_white : R.drawable.ic_close));
        dialogDoneBinding.tvTitle.setVisibility(8);
        dialogDoneBinding.tvSubtitle.setText(getContext().getString(z ? R.string.favorite_card_removed : R.string.favorite_card_remove_fail));
    }
}
