package com.warefly.checkscan.presentation.tasks.main.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.tasks.presentation.adResult.DailyBonusPoints;
import defpackage.b06;
import defpackage.hn8;
import defpackage.no8;
import defpackage.so8;
import defpackage.w48;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface TasksView extends BaseView {
    void setContent(List<? extends so8> list);

    void showAd(List<? extends w48> list);

    void showAdResult(DailyBonusPoints dailyBonusPoints);

    void showDefaultError();

    void showErrorLoading(boolean z);

    void showLoading(boolean z);

    void showOrdInfoDialog(b06 b06Var);

    void showTaskError(hn8 hn8Var);

    void showTaskSuccess(int i, no8 no8Var);

    void showToolbar(boolean z);

    void turnOffRefreshing();
}
