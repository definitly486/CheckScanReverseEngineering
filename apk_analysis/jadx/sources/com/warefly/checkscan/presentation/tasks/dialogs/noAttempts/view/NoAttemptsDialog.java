package com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.view;

import android.content.DialogInterface;
import android.view.View;
import android.widget.TextView;
import androidx.core.os.BundleCompat;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentKt;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.presenter.NoAttemptsPresenter;
import com.warefly.checkscan.tasks.databinding.DialogDailyTaskNoAttemptsBinding;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskNoAttempts;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.m2;
import defpackage.nl3;
import defpackage.up8;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class NoAttemptsDialog extends FullScreenDialog<DialogDailyTaskNoAttemptsBinding> implements NoAttemptsView {
    public static final a d;
    public static final /* synthetic */ ze4<Object>[] e;
    public static final String f;
    public final gl4 c;
    public NoAttemptsPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            NoAttemptsPresenter noAttemptsPresenter = NoAttemptsDialog.this.presenter;
            if (noAttemptsPresenter != null) {
                noAttemptsPresenter.onActionClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(NoAttemptsDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/tasks/databinding/DialogDailyTaskNoAttemptsBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
        d = new a();
        f = "DISMISSED_KEY";
    }

    public NoAttemptsDialog() {
        super(R.layout.dialog_daily_task_no_attempts);
        this.c = new gl4(DialogDailyTaskNoAttemptsBinding.class);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        dialogInterface.getClass();
        super.onDismiss(dialogInterface);
        FragmentKt.setFragmentResult(this, f, BundleKt.bundleOf());
    }

    public final NoAttemptsPresenter providePresenter() throws Exception {
        int i = requireArguments().getInt("TASK_ID_KEY");
        DailyTaskNoAttempts dailyTaskNoAttempts = (DailyTaskNoAttempts) BundleCompat.getParcelable(requireArguments(), "DAILY_TASK_NO_ATTEMPTS_KEY", DailyTaskNoAttempts.class);
        if (dailyTaskNoAttempts != null) {
            return new NoAttemptsPresenter(i, dailyTaskNoAttempts, (up8) m2.c(up8.class, e.e(this), null, null));
        }
        throw new Exception("noAttempts can not be null");
    }

    @Override // com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.view.NoAttemptsView
    public final void showContent(DailyTaskNoAttempts dailyTaskNoAttempts) {
        dailyTaskNoAttempts.getClass();
        DialogDailyTaskNoAttemptsBinding dialogDailyTaskNoAttemptsBinding = (DialogDailyTaskNoAttemptsBinding) this.c.getValue(this, e[0]);
        dialogDailyTaskNoAttemptsBinding.tvTitle.setText(dailyTaskNoAttempts.c);
        dialogDailyTaskNoAttemptsBinding.tvDescription.setText(dailyTaskNoAttempts.d);
        com.bumptech.glide.a.d(requireContext()).h(dailyTaskNoAttempts.b).L(dialogDailyTaskNoAttemptsBinding.ivImage);
        TextView textView = dialogDailyTaskNoAttemptsBinding.btnAction;
        textView.setText(dailyTaskNoAttempts.e);
        textView.setOnClickListener(new lb7(new b()));
    }
}
