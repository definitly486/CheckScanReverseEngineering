package com.warefly.checkscan.presentation.cheques.view.sortDialogs.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface SumSortView extends BaseView {
    void enableSortButton(boolean z);

    void onSort(String str, String str2);

    void showEndSumError(boolean z);

    void showStartSumError(boolean z);
}
