package com.warefly.checkscan.personalform.presentation.form.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.warefly.checkscan.personalform.presentation.form.bottomSheet.a;
import defpackage.pz3;
import defpackage.u66;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface PersonalDataFormView extends BaseView {
    void requestGeoPermission();

    void setButtonEnabled(boolean z);

    void showItems(List<? extends pz3> list);

    void showOnboardingWarning(a aVar);

    void showSaveError();

    void showSaveLoading(boolean z);

    void showSaveSuccess(String str);

    void showSaveSuccessFirstTime(u66 u66Var);
}
