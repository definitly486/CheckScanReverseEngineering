package com.warefly.checkscan.presentation.tasks.taskDetails.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
import defpackage.b06;
import defpackage.hn8;
import defpackage.no8;
import defpackage.um8;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface TaskDetailsView extends BaseView {
    void showActionLoading(boolean z);

    void showClaimButtonLoading(boolean z);

    void showDetails(um8 um8Var);

    void showError();

    void showErrorState(boolean z);

    void showInfoBottomSheet(List<b.a> list);

    void showLoadingSpinner(boolean z);

    void showOrdInfoDialog(b06 b06Var);

    void showTaskError(hn8 hn8Var);

    void showTaskNotFinished(String str);

    void showTaskSuccess(int i, no8 no8Var);
}
