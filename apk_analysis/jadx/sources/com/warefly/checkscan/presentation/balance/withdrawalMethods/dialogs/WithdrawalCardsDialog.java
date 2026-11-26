package com.warefly.checkscan.presentation.balance.withdrawalMethods.dialogs;

import android.content.Context;
import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogWithdrawalCardsBinding;
import defpackage.bs6;
import defpackage.eu1;
import defpackage.fj9;
import defpackage.gj9;
import defpackage.hj9;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ud9;
import defpackage.w76;
import defpackage.wi9;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class WithdrawalCardsDialog extends BaseBottomSheetDialog<DialogWithdrawalCardsBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final List<gj9> d;
    public final nl3<wi9, j59> e;
    public final ud9 f;

    static {
        bs6 bs6Var = new bs6(WithdrawalCardsDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogWithdrawalCardsBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WithdrawalCardsDialog(Context context, List<gj9> list, nl3<? super wi9, j59> nl3Var) {
        super(context, R.style.BottomSheetDialogTheme);
        list.getClass();
        nl3Var.getClass();
        this.d = list;
        this.e = nl3Var;
        this.f = new ud9(DialogWithdrawalCardsBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        RecyclerView recyclerView = ((DialogWithdrawalCardsBinding) ud9Var.d).rvCards;
        eu1 eu1Var = new eu1(new fj9(new w76(this, 2)));
        eu1Var.submitList(this.d);
        recyclerView.setAdapter(eu1Var);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.addItemDecoration(new hj9());
    }
}
