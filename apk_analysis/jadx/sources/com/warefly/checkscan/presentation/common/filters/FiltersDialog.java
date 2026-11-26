package com.warefly.checkscan.presentation.common.filters;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogFiltersBinding;
import com.warefly.checkscan.presentation.operations.allOperations.view.AllOperationsFragment;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.ls3;
import defpackage.nl3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.xg1;
import defpackage.ze4;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class FiltersDialog extends BaseBottomSheetDialog<DialogFiltersBinding> {
    public static final /* synthetic */ ze4<Object>[] h;
    public final String d;
    public final AllOperationsFragment.b e;
    public final ArrayList f;
    public final ud9 g;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            FiltersDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(FiltersDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogFiltersBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    public FiltersDialog(Context context, String str, AllOperationsFragment.b bVar, ArrayList arrayList) {
        super(context, R.style.BottomSheetDialogTheme);
        this.d = str;
        this.e = bVar;
        this.f = arrayList;
        this.g = new ud9(DialogFiltersBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes != null) {
            attributes.windowAnimations = R.style.FloatingDialogTheme;
        }
        ze4<Object>[] ze4VarArr = h;
        ze4<Object> ze4Var = ze4VarArr[0];
        ud9 ud9Var = this.g;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogFiltersBinding dialogFiltersBinding = (DialogFiltersBinding) ud9Var.d;
        dialogFiltersBinding.tvTitle.setText(this.d);
        ImageView imageView = dialogFiltersBinding.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        ze4<Object> ze4Var2 = ze4VarArr[0];
        ud9Var.getClass();
        ze4Var2.getClass();
        RecyclerView recyclerView = ((DialogFiltersBinding) ud9Var.d).rvCategories;
        recyclerView.setAdapter(new ls3(this.f, new xg1(this, 1)));
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
    }
}
