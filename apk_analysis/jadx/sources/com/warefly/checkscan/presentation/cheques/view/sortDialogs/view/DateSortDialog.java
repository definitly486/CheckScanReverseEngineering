package com.warefly.checkscan.presentation.cheques.view.sortDialogs.view;

import android.content.Context;
import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DateSortDialogLayoutBinding;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;
import defpackage.bs6;
import defpackage.jz7;
import defpackage.lb2;
import defpackage.ob2;
import defpackage.s48;
import defpackage.u96;
import defpackage.ud9;
import defpackage.x07;
import defpackage.z61;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class DateSortDialog extends BaseBottomSheetDialog<DateSortDialogLayoutBinding> {
    public static final /* synthetic */ ze4<Object>[] f;
    public final ChequesFragment.e d;
    public final ud9 e;

    static {
        bs6 bs6Var = new bs6(DateSortDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DateSortDialogLayoutBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    public DateSortDialog(Context context, ChequesFragment.e eVar) {
        super(context, R.style.BottomSheetDialogTheme);
        this.d = eVar;
        this.e = new ud9(DateSortDialogLayoutBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object>[] ze4VarArr = f;
        ze4<Object> ze4Var = ze4VarArr[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        RecyclerView recyclerView = ((DateSortDialogLayoutBinding) ud9Var.d).rvDateFilters;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setAdapter(new jz7(R.layout.item_sort_dialog, u96.i(s48.PURCHASE_DATE, s48.SCAN_DATE), null, lb2.f, new ob2(this), 4));
        recyclerView.setNestedScrollingEnabled(false);
        ze4<Object> ze4Var2 = ze4VarArr[0];
        ud9Var.getClass();
        ze4Var2.getClass();
        ((DateSortDialogLayoutBinding) ud9Var.d).btnClose.setOnClickListener(new z61(this, 1));
    }
}
