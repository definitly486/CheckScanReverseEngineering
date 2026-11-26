package com.warefly.checkscan.presentation.balance.promocodes.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.b06;
import defpackage.em7;
import defpackage.fr6;
import defpackage.jm7;
import defpackage.km7;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface SelectPromocodeView extends BaseView {
    void copyPromocode(String str);

    void showApproveSheet(em7 em7Var);

    void showErrorLoading(boolean z);

    void showErrorSheet(jm7.a aVar);

    void showLoading(boolean z);

    void showOrdDialog(b06 b06Var);

    void showPromocodes(List<fr6> list);

    void showSelectingSheet(km7 km7Var);

    void showSuccessSheet(jm7.b bVar);
}
