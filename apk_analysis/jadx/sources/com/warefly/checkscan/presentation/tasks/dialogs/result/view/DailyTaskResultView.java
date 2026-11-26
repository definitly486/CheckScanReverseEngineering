package com.warefly.checkscan.presentation.tasks.dialogs.result.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskResult;

/* JADX INFO: loaded from: classes5.dex */
public interface DailyTaskResultView extends BaseView {
    void dismissDialog();

    void showConfetti();

    void showResult(DailyTaskResult dailyTaskResult);

    void vibrate();
}
