package com.warefly.checkscan.presentation.tasks.checkbox.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
import defpackage.b06;
import defpackage.hn8;
import defpackage.jb1;
import defpackage.no8;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface CheckboxTaskDetailsView extends BaseView {
    void showDetails(jb1 jb1Var);

    void showError();

    void showErrorState(boolean z);

    void showInfoBottomSheet(List<b.a> list);

    void showLoading(boolean z);

    void showOrdInfoDialog(b06 b06Var);

    void showTaskError(hn8 hn8Var);

    void showTaskNotFinished(String str);

    void showTaskSuccess(int i, no8 no8Var);
}
