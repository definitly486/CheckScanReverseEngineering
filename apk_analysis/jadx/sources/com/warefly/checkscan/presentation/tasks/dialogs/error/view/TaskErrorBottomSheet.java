package com.warefly.checkscan.presentation.tasks.dialogs.error.view;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.error.presenter.TaskErrorPresenter;
import com.warefly.checkscan.tasks.databinding.DialogTaskErrorBinding;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.hn8;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class TaskErrorBottomSheet extends BaseBottomSheetDialog<DialogTaskErrorBinding> implements TaskErrorView {
    public static final /* synthetic */ ze4<Object>[] f;
    public final hn8 d;
    public final ud9 e;
    public TaskErrorPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TaskErrorPresenter taskErrorPresenter = TaskErrorBottomSheet.this.presenter;
            if (taskErrorPresenter != null) {
                taskErrorPresenter.onActionClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(TaskErrorBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/tasks/databinding/DialogTaskErrorBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskErrorBottomSheet(Context context, hn8 hn8Var) {
        super(context, R.style.BottomSheetDialogTheme);
        hn8Var.getClass();
        this.d = hn8Var;
        this.e = new ud9(DialogTaskErrorBinding.class, this);
    }

    public final TaskErrorPresenter providePresenter() {
        return new TaskErrorPresenter(this.d);
    }

    @Override // com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorView
    public final void showError(hn8 hn8Var) {
        hn8Var.getClass();
        ze4<Object> ze4Var = f[0];
        ud9 ud9Var = this.e;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogTaskErrorBinding dialogTaskErrorBinding = (DialogTaskErrorBinding) ud9Var.d;
        com.bumptech.glide.a.d(getContext()).f(Integer.valueOf(R.drawable.ic_circle_error)).L(dialogTaskErrorBinding.ivLogo);
        dialogTaskErrorBinding.tvTitle.setText(hn8Var.b);
        dialogTaskErrorBinding.tvDescription.setText(hn8Var.c);
        dialogTaskErrorBinding.btnOk.setText(hn8Var.d);
        TextView textView = dialogTaskErrorBinding.btnOk;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
    }
}
