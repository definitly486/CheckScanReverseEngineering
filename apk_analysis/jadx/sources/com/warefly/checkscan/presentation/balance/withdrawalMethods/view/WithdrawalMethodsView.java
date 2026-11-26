package com.warefly.checkscan.presentation.balance.withdrawalMethods.view;

import com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView;
import defpackage.hk9;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface WithdrawalMethodsView extends WithdrawalView {
    void setToolbarTitle(String str);

    void showWithdrawalMethods(List<? extends hk9> list);
}
