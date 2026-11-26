package com.warefly.checkscan.presentation.bonuses.special.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.b06;
import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface AllSpecialsView extends BaseView {
    void showAdInfoDialog(b06 b06Var);

    void showCouldntLoadPage(boolean z);

    void showLoadingPage(boolean z);

    void showSpecials(List<? extends pz3> list);
}
