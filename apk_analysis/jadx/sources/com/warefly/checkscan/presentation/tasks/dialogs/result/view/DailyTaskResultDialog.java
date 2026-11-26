package com.warefly.checkscan.presentation.tasks.dialogs.result.view;

import android.view.View;
import android.widget.Space;
import android.widget.TextView;
import androidx.core.os.BundleCompat;
import androidx.fragment.app.FragmentActivity;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.core.ui.databinding.ConfettiLayoutBinding;
import com.warefly.checkscan.presentation.tasks.dialogs.result.presenter.DailyTaskResultPresenter;
import com.warefly.checkscan.tasks.databinding.DialogDailyTaskResultBinding;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskResult;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.j59;
import defpackage.kv1;
import defpackage.lb7;
import defpackage.m2;
import defpackage.nl3;
import defpackage.r7;
import defpackage.up8;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class DailyTaskResultDialog extends FullScreenDialog<DialogDailyTaskResultBinding> implements DailyTaskResultView {
    public static final a d;
    public static final /* synthetic */ ze4<Object>[] e;
    public final gl4 c;
    public DailyTaskResultPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            DailyTaskResultPresenter dailyTaskResultPresenter = DailyTaskResultDialog.this.presenter;
            if (dailyTaskResultPresenter != null) {
                dailyTaskResultPresenter.onActionButtonClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            DailyTaskResultPresenter dailyTaskResultPresenter = DailyTaskResultDialog.this.presenter;
            if (dailyTaskResultPresenter != null) {
                dailyTaskResultPresenter.onSecondActionButtonClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(DailyTaskResultDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/tasks/databinding/DialogDailyTaskResultBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
        d = new a();
    }

    public DailyTaskResultDialog() {
        super(R.layout.dialog_daily_task_result);
        this.c = new gl4(DialogDailyTaskResultBinding.class);
    }

    public final DailyTaskResultPresenter providePresenter() throws Exception {
        int i = requireArguments().getInt("TASK_ID_KEY");
        DailyTaskResult dailyTaskResult = (DailyTaskResult) BundleCompat.getParcelable(requireArguments(), "TASK_RESULT_KEY", DailyTaskResult.class);
        if (dailyTaskResult != null) {
            return new DailyTaskResultPresenter(i, dailyTaskResult, (up8) m2.c(up8.class, e.e(this), null, null));
        }
        throw new Exception("Result is required");
    }

    @Override // com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultView
    public final void showConfetti() {
        ConfettiLayoutBinding confettiLayoutBinding = ((DialogDailyTaskResultBinding) this.c.getValue(this, e[0])).incldConfetti;
        confettiLayoutBinding.getClass();
        kv1.a(confettiLayoutBinding);
    }

    @Override // com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultView
    public final void showResult(DailyTaskResult dailyTaskResult) {
        dailyTaskResult.getClass();
        DialogDailyTaskResultBinding dialogDailyTaskResultBinding = (DialogDailyTaskResultBinding) this.c.getValue(this, e[0]);
        dialogDailyTaskResultBinding.tvTitle.setText(dailyTaskResult.b);
        dialogDailyTaskResultBinding.tvDescription.setText(dailyTaskResult.c);
        com.bumptech.glide.a.d(requireContext()).h(dailyTaskResult.d).L(dialogDailyTaskResultBinding.ivImage);
        DailyTaskResult.Button button = dailyTaskResult.e;
        if (button != null) {
            TextView textView = dialogDailyTaskResultBinding.btnAction;
            textView.setText(button.b);
            textView.setOnClickListener(new lb7(new b()));
        }
        DailyTaskResult.Button button2 = dailyTaskResult.f;
        if (button2 != null) {
            TextView textView2 = dialogDailyTaskResultBinding.btnSecondaryAction;
            textView2.getClass();
            textView2.setVisibility(0);
            TextView textView3 = dialogDailyTaskResultBinding.btnSecondaryAction;
            textView3.getClass();
            textView3.setVisibility(0);
            textView3.setText(button2.b);
            textView3.setOnClickListener(new lb7(new c()));
            Space space = dialogDailyTaskResultBinding.spaceBetweenButtons;
            space.getClass();
            space.setVisibility(0);
        }
    }

    @Override // com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultView
    public final void vibrate() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            r7.a(activity, 400L);
        }
    }
}
