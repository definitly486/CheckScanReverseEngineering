package com.warefly.checkscan.presentation.tasks.dialogs.success.view;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.core.ui.databinding.ConfettiLayoutBinding;
import com.warefly.checkscan.presentation.tasks.dialogs.success.presenter.TaskSuccessPresenter;
import com.warefly.checkscan.tasks.databinding.DialogTaskSuccessBinding;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.j59;
import defpackage.kv1;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.no8;
import defpackage.oo8;
import defpackage.pl8;
import defpackage.ql8;
import defpackage.r7;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class TaskSuccessBottomSheet extends BaseBottomSheetDialog<DialogTaskSuccessBinding> implements TaskSuccessView {
    public static final /* synthetic */ ze4<Object>[] h;
    public final int d;
    public final no8 e;
    public final ud9 f;
    public eu1 g;
    public TaskSuccessPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ no8.a f;
        public final /* synthetic */ TaskSuccessBottomSheet g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(no8.a aVar, TaskSuccessBottomSheet taskSuccessBottomSheet) {
            super(1);
            this.f = aVar;
            this.g = taskSuccessBottomSheet;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            String str = this.f.b;
            if (str != null) {
                TaskSuccessPresenter taskSuccessPresenter = this.g.presenter;
                if (taskSuccessPresenter == null) {
                    aa4.j("presenter");
                    throw null;
                }
                taskSuccessPresenter.openDeeplink(str);
            }
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
            TaskSuccessPresenter taskSuccessPresenter = TaskSuccessBottomSheet.this.presenter;
            if (taskSuccessPresenter != null) {
                taskSuccessPresenter.dismiss();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(TaskSuccessBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskSuccessBottomSheet(Context context, int i, no8 no8Var) {
        super(context, R.style.BottomSheetDialogTheme);
        no8Var.getClass();
        this.d = i;
        this.e = no8Var;
        this.f = new ud9(DialogTaskSuccessBinding.class, this);
    }

    public final DialogTaskSuccessBinding e() {
        ze4<Object> ze4Var = h[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        return (DialogTaskSuccessBinding) ud9Var.d;
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DialogTaskSuccessBinding dialogTaskSuccessBindingE = e();
        TextView textView = dialogTaskSuccessBindingE.tvTitle;
        no8 no8Var = this.e;
        textView.setText(no8Var.c);
        dialogTaskSuccessBindingE.tvSubtitle.setText(no8Var.d);
        dialogTaskSuccessBindingE.tvDescription.setText(no8Var.e);
        com.bumptech.glide.a.d(getContext()).h(no8Var.a).L(dialogTaskSuccessBindingE.ivLogo);
        DialogTaskSuccessBinding dialogTaskSuccessBindingE2 = e();
        RecyclerView recyclerView = dialogTaskSuccessBindingE2.rvBadges;
        eu1 eu1Var = new eu1(new ql8(pl8.c));
        this.g = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setLayoutManager(new TaskSuccessBottomSheet$setUpBadges$1$1$2(dialogTaskSuccessBindingE2.getRoot().getContext(), 1, false));
        recyclerView.addItemDecoration(new oo8());
        TextView textView2 = null;
        recyclerView.setItemAnimator(null);
        eu1 eu1Var2 = this.g;
        if (eu1Var2 != null) {
            eu1Var2.submitList(no8Var.b);
        }
        no8.a aVar = no8Var.g;
        if (aVar != null) {
            textView2 = dialogTaskSuccessBindingE.btnAbout;
            textView2.setText(aVar.a);
            textView2.setOnClickListener(new lb7(new a(aVar, this)));
        }
        if (textView2 == null) {
            TextView textView3 = dialogTaskSuccessBindingE.btnAbout;
            textView3.getClass();
            textView3.setVisibility(8);
        }
        TextView textView4 = dialogTaskSuccessBindingE.btnOk;
        textView4.setText(no8Var.f.a);
        textView4.setOnClickListener(new lb7(new b()));
    }

    public final TaskSuccessPresenter providePresenter() {
        return new TaskSuccessPresenter(this.d);
    }

    @Override // com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessView
    public final void showConfetti() {
        ConfettiLayoutBinding confettiLayoutBinding = e().incldConfetti;
        confettiLayoutBinding.getClass();
        kv1.a(confettiLayoutBinding);
    }

    @Override // com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessView
    public final void vibrate() {
        Activity ownerActivity = getOwnerActivity();
        if (ownerActivity != null) {
            r7.a(ownerActivity, 400L);
        }
    }
}
