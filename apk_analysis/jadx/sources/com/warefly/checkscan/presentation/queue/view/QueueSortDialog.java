package com.warefly.checkscan.presentation.queue.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogSortQueueBinding;
import com.warefly.checkscan.presentation.queue.view.QueueSortDialog;
import defpackage.bs6;
import defpackage.iw6;
import defpackage.jz7;
import defpackage.lw6;
import defpackage.mz6;
import defpackage.u96;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class QueueSortDialog extends BaseBottomSheetDialog<DialogSortQueueBinding> {
    public static final /* synthetic */ ze4<Object>[] f;
    public final QueueFragment.a d;
    public final ud9 e;

    static {
        bs6 bs6Var = new bs6(QueueSortDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogSortQueueBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    public QueueSortDialog(Context context, QueueFragment.a aVar) {
        super(context, R.style.BottomSheetDialogTheme);
        this.d = aVar;
        this.e = new ud9(DialogSortQueueBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object>[] ze4VarArr = f;
        ze4<Object> ze4Var = ze4VarArr[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        ((DialogSortQueueBinding) ud9Var.d).btnClose.setOnClickListener(new View.OnClickListener() { // from class: hw6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ze4<Object>[] ze4VarArr2 = QueueSortDialog.f;
                this.b.dismiss();
            }
        });
        ze4<Object> ze4Var2 = ze4VarArr[0];
        ud9Var.getClass();
        ze4Var2.getClass();
        RecyclerView recyclerView = ((DialogSortQueueBinding) ud9Var.d).rvDateFilters;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setAdapter(new jz7(R.layout.item_sort_dialog, u96.i(mz6.SORT_BY_DATE, mz6.SORT_BY_CREATION), null, iw6.f, new lw6(this), 4));
        recyclerView.setNestedScrollingEnabled(false);
    }
}
