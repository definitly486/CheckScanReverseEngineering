package com.warefly.checkscan.presentation.tasks.daily.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskNoAttempts;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskResult;
import defpackage.l82;

/* JADX INFO: loaded from: classes5.dex */
public interface DailyTaskView extends BaseView {
    void showButtonLoading(boolean z);

    void showConfetti();

    void showContent(l82 l82Var);

    void showDefaultError();

    void showNoAttemptsDialog(int i, DailyTaskNoAttempts dailyTaskNoAttempts);

    void showResultDialog(int i, DailyTaskResult dailyTaskResult);

    void showScreenLoadingError();

    void vibrate();
}
