package com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.view.NoAttemptsView;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskNoAttempts;
import defpackage.kd;
import defpackage.up8;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class NoAttemptsPresenter extends BasePresenter<NoAttemptsView> {
    private final DailyTaskNoAttempts noAttempts;
    private final up8 showcaseAnalytics;
    private final int taskId;

    public NoAttemptsPresenter(int i, DailyTaskNoAttempts dailyTaskNoAttempts, up8 up8Var) {
        dailyTaskNoAttempts.getClass();
        up8Var.getClass();
        this.taskId = i;
        this.noAttempts = dailyTaskNoAttempts;
        this.showcaseAnalytics = up8Var;
    }

    public final void onActionClicked() {
        NoAttemptsView noAttemptsView = (NoAttemptsView) getViewState();
        if (noAttemptsView != null) {
            noAttemptsView.onDismissDialog();
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        Map mapSingletonMap = Collections.singletonMap("Fail", "Shows");
        mapSingletonMap.getClass();
        new kd.s0.c.C0288c.a(mapSingletonMap).a();
        this.showcaseAnalytics.s(this.taskId);
        NoAttemptsView noAttemptsView = (NoAttemptsView) getViewState();
        if (noAttemptsView != null) {
            noAttemptsView.showContent(this.noAttempts);
        }
    }
}
