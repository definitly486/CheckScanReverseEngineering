package com.warefly.checkscan.presentation.balance.transferCashback.sbp.view;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.DialogSbpTransferBinding;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.dialogs.TransferPhoneFailBottomSheet;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.dialogs.TransferPhoneSuccessBottomSheet;
import com.warefly.checkscan.presentation.balance.transferCashback.sbp.presenter.TransferSBPPresenter;
import com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPDialog;
import defpackage.a19;
import defpackage.aa4;
import defpackage.b19;
import defpackage.bs6;
import defpackage.d19;
import defpackage.d83;
import defpackage.eu1;
import defpackage.f19;
import defpackage.g19;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.h09;
import defpackage.j59;
import defpackage.kk4;
import defpackage.lb7;
import defpackage.m2;
import defpackage.mk4;
import defpackage.nl3;
import defpackage.og4;
import defpackage.p09;
import defpackage.s09;
import defpackage.s47;
import defpackage.u09;
import defpackage.v09;
import defpackage.vo7;
import defpackage.w09;
import defpackage.x07;
import defpackage.xz8;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferSBPDialog extends FullScreenDialog<DialogSbpTransferBinding> implements TransferSBPView {
    public static final a g;
    public static final /* synthetic */ ze4<Object>[] h;
    public final gl4 c;
    public eu1 d;
    public TransferPhoneFailBottomSheet e;
    public TransferPhoneSuccessBottomSheet f;
    public TransferSBPPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TransferSBPDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(TransferSBPDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogSbpTransferBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
        g = new a();
    }

    public TransferSBPDialog() {
        super(R.layout.dialog_sbp_transfer);
        this.c = new gl4(DialogSbpTransferBinding.class);
    }

    public final DialogSbpTransferBinding e() {
        return (DialogSbpTransferBinding) this.c.getValue(this, h[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = e().rvContent;
        TransferSBPPresenter transferSBPPresenter = this.presenter;
        if (transferSBPPresenter == null) {
            aa4.j("presenter");
            throw null;
        }
        h09 h09Var = new h09(transferSBPPresenter);
        TransferSBPPresenter transferSBPPresenter2 = this.presenter;
        if (transferSBPPresenter2 == null) {
            aa4.j("presenter");
            throw null;
        }
        p09 p09Var = new p09(transferSBPPresenter2);
        TransferSBPPresenter transferSBPPresenter3 = this.presenter;
        if (transferSBPPresenter3 == null) {
            aa4.j("presenter");
            throw null;
        }
        eu1 eu1Var = new eu1(h09Var, p09Var, new s09(transferSBPPresenter3), new w09(v09.c), new kk4(b19.c, 2), new mk4(d19.c, 1), new g19(f19.c));
        this.d = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        recyclerView.addItemDecoration(new a19());
        recyclerView.setItemAnimator(null);
        ImageView imageView = e().btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        e().tvTitle.setText(requireArguments().getString("TITLE_KEY"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TransferSBPPresenter providePresenter() {
        boolean z = this instanceof og4;
        return new TransferSBPPresenter((d83) (z ? m2.c(d83.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(d83.class), null, null)), (vo7) (z ? m2.c(vo7.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(vo7.class), null, null)), (s47) (z ? m2.c(s47.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(s47.class), null, null)));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView
    public final void showContent(u09 u09Var) {
        u09Var.getClass();
        eu1 eu1Var = this.d;
        if (eu1Var != null) {
            eu1Var.submitList(u09Var.a);
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView
    public final void showLoading(boolean z) {
        ConstraintLayout root = e().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView
    public final void showTransferFailedBottomSheet(xz8.a aVar) {
        aVar.getClass();
        TransferPhoneFailBottomSheet transferPhoneFailBottomSheet = this.e;
        if (transferPhoneFailBottomSheet != null) {
            transferPhoneFailBottomSheet.dismiss();
        }
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        TransferPhoneFailBottomSheet transferPhoneFailBottomSheet2 = new TransferPhoneFailBottomSheet(contextRequireContext, aVar);
        transferPhoneFailBottomSheet2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: z09
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                TransferSBPDialog.a aVar2 = TransferSBPDialog.g;
                this.b.dismiss();
            }
        });
        this.e = transferPhoneFailBottomSheet2;
        transferPhoneFailBottomSheet2.show();
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView
    public final void showTransferMoneyError(String str) {
        j59 j59Var;
        if (str != null) {
            Toast.makeText(getContext(), str, 1).show();
            j59Var = j59.a;
        } else {
            j59Var = null;
        }
        if (j59Var == null) {
            Toast.makeText(getContext(), R.string.transfer_cashback_transfer_failed, 1).show();
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView
    public final void showTransferSuccessBottomSheet(String str, String str2) {
        str2.getClass();
        TransferPhoneSuccessBottomSheet transferPhoneSuccessBottomSheet = this.f;
        if (transferPhoneSuccessBottomSheet != null) {
            transferPhoneSuccessBottomSheet.dismiss();
        }
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        TransferPhoneSuccessBottomSheet transferPhoneSuccessBottomSheet2 = new TransferPhoneSuccessBottomSheet(contextRequireContext, str, str2);
        transferPhoneSuccessBottomSheet2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: y09
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                TransferSBPDialog.a aVar = TransferSBPDialog.g;
                this.b.dismiss();
            }
        });
        this.f = transferPhoneSuccessBottomSheet2;
        transferPhoneSuccessBottomSheet2.show();
    }
}
