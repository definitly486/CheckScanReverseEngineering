package com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskNoAttempts;

/* JADX INFO: loaded from: classes5.dex */
public interface NoAttemptsView extends BaseView {
    void onDismissDialog();

    void showContent(DailyTaskNoAttempts dailyTaskNoAttempts);
}
