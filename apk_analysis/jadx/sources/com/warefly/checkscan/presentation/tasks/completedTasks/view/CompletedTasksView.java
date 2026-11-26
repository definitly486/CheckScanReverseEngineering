package com.warefly.checkscan.presentation.tasks.completedTasks.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.so8;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface CompletedTasksView extends BaseView {
    void setContent(List<? extends so8> list);

    void showDefaultError();

    void showErrorLoading(boolean z);

    void showLoading(boolean z);

    void turnOffRefreshing();
}
