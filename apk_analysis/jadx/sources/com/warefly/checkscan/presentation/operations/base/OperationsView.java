package com.warefly.checkscan.presentation.operations.base;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface OperationsView extends BaseView {
    void showAllOperationsLoaded();

    void showEmptyOperations(boolean z);

    void showEmptyOperationsError(boolean z);

    void showEmptyOperationsProgress(boolean z);

    void showOperations(boolean z, List<Object> list);

    void showPageOfOperationsProgress(boolean z);

    void showRefreshOperationsProgress(boolean z);
}
