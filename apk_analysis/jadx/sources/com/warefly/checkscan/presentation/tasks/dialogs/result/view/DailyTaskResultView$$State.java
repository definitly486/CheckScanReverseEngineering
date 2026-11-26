package com.warefly.checkscan.presentation.tasks.dialogs.result.view;

import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskResult;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class DailyTaskResultView$$State extends kh5<DailyTaskResultView> implements DailyTaskResultView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultView
    public void dismissDialog() {
        DismissDialogCommand dismissDialogCommand = new DismissDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissDialogCommand).b(xd9Var.a, dismissDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskResultView) it.next()).dismissDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissDialogCommand).a(xd9Var2.a, dismissDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrl(String str) {
        OpenUrlCommand openUrlCommand = new OpenUrlCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlCommand).b(xd9Var.a, openUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskResultView) it.next()).openUrl(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlCommand).a(xd9Var2.a, openUrlCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrlInCustomTab(String str) {
        OpenUrlInCustomTabCommand openUrlInCustomTabCommand = new OpenUrlInCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlInCustomTabCommand).b(xd9Var.a, openUrlInCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskResultView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultView
    public void showConfetti() {
        ShowConfettiCommand showConfettiCommand = new ShowConfettiCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showConfettiCommand).b(xd9Var.a, showConfettiCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskResultView) it.next()).showConfetti();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showConfettiCommand).a(xd9Var2.a, showConfettiCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultView
    public void showResult(DailyTaskResult dailyTaskResult) {
        ShowResultCommand showResultCommand = new ShowResultCommand(this, dailyTaskResult);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showResultCommand).b(xd9Var.a, showResultCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskResultView) it.next()).showResult(dailyTaskResult);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showResultCommand).a(xd9Var2.a, showResultCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultView
    public void vibrate() {
        VibrateCommand vibrateCommand = new VibrateCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(vibrateCommand).b(xd9Var.a, vibrateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((DailyTaskResultView) it.next()).vibrate();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(vibrateCommand).a(xd9Var2.a, vibrateCommand);
    }

    public class DismissDialogCommand extends wd9<DailyTaskResultView> {
        public DismissDialogCommand(DailyTaskResultView$$State dailyTaskResultView$$State) {
            super("dismissDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskResultView dailyTaskResultView) {
            dailyTaskResultView.dismissDialog();
        }
    }

    public class OpenUrlCommand extends wd9<DailyTaskResultView> {
        public final String arg0;

        public OpenUrlCommand(DailyTaskResultView$$State dailyTaskResultView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskResultView dailyTaskResultView) {
            dailyTaskResultView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<DailyTaskResultView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(DailyTaskResultView$$State dailyTaskResultView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskResultView dailyTaskResultView) {
            dailyTaskResultView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowConfettiCommand extends wd9<DailyTaskResultView> {
        public ShowConfettiCommand(DailyTaskResultView$$State dailyTaskResultView$$State) {
            super("showConfetti", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskResultView dailyTaskResultView) {
            dailyTaskResultView.showConfetti();
        }
    }

    public class ShowResultCommand extends wd9<DailyTaskResultView> {
        public final DailyTaskResult result;

        public ShowResultCommand(DailyTaskResultView$$State dailyTaskResultView$$State, DailyTaskResult dailyTaskResult) {
            super("showResult", k9.class);
            this.result = dailyTaskResult;
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskResultView dailyTaskResultView) {
            dailyTaskResultView.showResult(this.result);
        }
    }

    public class VibrateCommand extends wd9<DailyTaskResultView> {
        public VibrateCommand(DailyTaskResultView$$State dailyTaskResultView$$State) {
            super("vibrate", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(DailyTaskResultView dailyTaskResultView) {
            dailyTaskResultView.vibrate();
        }
    }
}
