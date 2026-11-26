package com.warefly.checkscan.presentation.flows.account.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.di7;

/* JADX INFO: loaded from: classes5.dex */
public final class AccountPresenter extends BasePresenter<AccountView> {
    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        AccountView accountView = (AccountView) getViewState();
        if (accountView != null) {
            accountView.setLaunchScreen(di7.a);
        }
    }
}
