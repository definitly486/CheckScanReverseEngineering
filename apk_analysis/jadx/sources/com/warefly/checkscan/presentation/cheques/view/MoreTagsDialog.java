package com.warefly.checkscan.presentation.cheques.view;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogMoreTagsBinding;
import defpackage.bs6;
import defpackage.dk8;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class MoreTagsDialog extends BaseBottomSheetDialog<DialogMoreTagsBinding> {
    public static final /* synthetic */ ze4<Object>[] f;
    public final List<dk8.a> d;
    public final ud9 e;

    static {
        bs6 bs6Var = new bs6(MoreTagsDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogMoreTagsBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MoreTagsDialog(FragmentActivity fragmentActivity, ArrayList arrayList) {
        super(fragmentActivity, R.style.BottomSheetDialogTheme);
        arrayList.getClass();
        this.d = arrayList;
        this.e = new ud9(DialogMoreTagsBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        dk8 dk8Var = new dk8();
        List<dk8.a> list = this.d;
        list.getClass();
        dk8Var.i.addAll(list);
        dk8Var.notifyDataSetChanged();
        ze4<Object> ze4Var = f[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        RecyclerView recyclerView = ((DialogMoreTagsBinding) ud9Var.d).rvChips;
        recyclerView.setAdapter(dk8Var);
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView.getContext());
        flexboxLayoutManager.C(1);
        flexboxLayoutManager.A(0);
        recyclerView.setLayoutManager(flexboxLayoutManager);
    }
}
