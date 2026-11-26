package com.warefly.checkscan.shared.infoBottomSheet.presentation;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.shared.infoBottomSheet.databinding.BottomSheetLayoutInfoBinding;
import defpackage.bs6;
import defpackage.eu1;
import defpackage.f54;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.pl2;
import defpackage.sg;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class InfoBottomSheet extends BaseBottomSheetDialog<BottomSheetLayoutInfoBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> d;
    public final boolean e;
    public final ud9 f;

    public static final class a extends RecyclerView.ItemDecoration {
        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            sg.e(rect, view, recyclerView, state);
            super.getItemOffsets(rect, view, recyclerView, state);
            rect.top = pl2.e(16);
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            InfoBottomSheet.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(InfoBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/BottomSheetLayoutInfoBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfoBottomSheet(Context context, List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list, boolean z) {
        super(context, R.style.BottomSheetDialogTheme);
        list.getClass();
        this.d = list;
        this.e = z;
        this.f = new ud9(BottomSheetLayoutInfoBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        BottomSheetLayoutInfoBinding bottomSheetLayoutInfoBinding = (BottomSheetLayoutInfoBinding) ud9Var.d;
        TextView textView = bottomSheetLayoutInfoBinding.tvTitle;
        textView.getClass();
        textView.setVisibility(this.e ? 0 : 8);
        ImageView imageView = bottomSheetLayoutInfoBinding.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        RecyclerView recyclerView = bottomSheetLayoutInfoBinding.rvBody;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setItemAnimator(null);
        recyclerView.addItemDecoration(new a());
        eu1 eu1Var = new eu1(new c(f54.c));
        eu1Var.submitList(this.d);
        recyclerView.setAdapter(eu1Var);
    }
}
