package com.warefly.checkscan.profile.presentation.main.dialogs.enter.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.q6;

/* JADX INFO: loaded from: classes5.dex */
public interface ProfilePromocodeEnterView extends BaseView {
    void dismissSheet();

    void showButtonLoading(boolean z);

    void showPromocodeError(boolean z, String str);

    void showPromocodeSuccessBottomSheet(q6 q6Var);
}
