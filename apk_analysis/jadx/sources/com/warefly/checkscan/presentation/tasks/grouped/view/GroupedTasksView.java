package com.warefly.checkscan.presentation.tasks.grouped.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.hn8;
import defpackage.no8;
import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface GroupedTasksView extends BaseView {
    void showDefaultError();

    void showError(boolean z);

    void showItems(List<? extends pz3> list);

    void showLoading(boolean z);

    void showTaskError(hn8 hn8Var);

    void showTaskSuccess(int i, no8 no8Var);

    void showToolbarTitle(String str);
}
