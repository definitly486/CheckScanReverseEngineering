package com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew;
import com.warefly.checkscan.databinding.DialogTransferBonusesBinding;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramFragment;
import defpackage.aa4;
import defpackage.bn2;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.io0;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferPointsDialog extends BaseDialogNew<DialogTransferBonusesBinding> implements TransferPointsView {
    public static final /* synthetic */ ze4<Object>[] f;
    public final long c;
    public final PointsProgramFragment.a d;
    public final bn2 e;
    public TransferPointsPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TransferPointsDialog.this.dismiss();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TransferPointsPresenter transferPointsPresenter = TransferPointsDialog.this.presenter;
            if (transferPointsPresenter != null) {
                transferPointsPresenter.onLoadCodeClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(TransferPointsDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogTransferBonusesBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    public TransferPointsDialog(Context context, long j, PointsProgramFragment.a aVar) {
        super(context);
        this.c = j;
        this.d = aVar;
        this.e = new bn2(DialogTransferBonusesBinding.class, this);
    }

    public final DialogTransferBonusesBinding a() {
        ze4<Object> ze4Var = f[0];
        bn2 bn2Var = this.e;
        bn2Var.getClass();
        ze4Var.getClass();
        return (DialogTransferBonusesBinding) ((ViewBinding) bn2Var.d);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: zz8
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.b.d.invoke();
            }
        });
        ImageView imageView = a().btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        TransferPointsPresenter transferPointsPresenter = this.presenter;
        if (transferPointsPresenter != null) {
            transferPointsPresenter.onOpened(this.c);
        } else {
            aa4.j("presenter");
            throw null;
        }
    }

    public final TransferPointsPresenter providePresenter() {
        return new TransferPointsPresenter((io0) b().c.d.e(x07.a(io0.class), null, null));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public final void setLoadCodeEnabled(boolean z) {
        DialogTransferBonusesBinding dialogTransferBonusesBindingA = a();
        if (!z) {
            dialogTransferBonusesBindingA.btnLoadCode.setBackground(new ColorDrawable(ContextCompat.getColor(getContext(), R.color.almostThereMoon)));
            dialogTransferBonusesBindingA.btnLoadCode.setOnClickListener(null);
        } else {
            TextView textView = dialogTransferBonusesBindingA.btnLoadCode;
            textView.getClass();
            textView.setOnClickListener(new lb7(new b()));
            dialogTransferBonusesBindingA.btnLoadCode.setBackground(new ColorDrawable(ContextCompat.getColor(getContext(), R.color.readilyBlue)));
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public final void showCode(String str) {
        str.getClass();
        a().tvCode.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public final void showCodeExpired() {
        DialogTransferBonusesBinding dialogTransferBonusesBindingA = a();
        dialogTransferBonusesBindingA.tvCode.setText(new String());
        dialogTransferBonusesBindingA.tvTimeExpire.setText(getContext().getString(R.string.bonuses_temp_code_expired));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public final void showCodeExpiringTime(long j, long j2) {
        a().tvTimeExpire.setText(getContext().getString(R.string.bonuses_temp_code_time, Long.valueOf(j), Long.valueOf(j2)));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public final void showCouldntLoadCode() {
        DialogTransferBonusesBinding dialogTransferBonusesBindingA = a();
        dialogTransferBonusesBindingA.tvCode.setText(new String());
        dialogTransferBonusesBindingA.tvTimeExpire.setText(getContext().getString(R.string.bonuses_temp_code_load_error));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public final void showLoading(boolean z) {
        DialogTransferBonusesBinding dialogTransferBonusesBindingA = a();
        if (!z) {
            dialogTransferBonusesBindingA.pbLoadingCode.setVisibility(4);
            dialogTransferBonusesBindingA.tvCode.setVisibility(0);
            dialogTransferBonusesBindingA.tvTimeExpire.setVisibility(0);
            j59 j59Var = j59.a;
            return;
        }
        dialogTransferBonusesBindingA.pbLoadingCode.setVisibility(0);
        dialogTransferBonusesBindingA.tvCode.setVisibility(4);
        TextView textView = dialogTransferBonusesBindingA.tvTimeExpire;
        textView.setText("");
        textView.setVisibility(4);
    }
}
