package com.warefly.checkscan.presentation.flows.favorite.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.ng7;

/* JADX INFO: loaded from: classes5.dex */
public final class FavoriteFlowPresenter extends BasePresenter<FavoriteFlowView> {
    private final boolean isFavorite;

    public FavoriteFlowPresenter(boolean z) {
        this.isFavorite = z;
    }

    public final boolean isFavorite() {
        return this.isFavorite;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        FavoriteFlowView favoriteFlowView = (FavoriteFlowView) getViewState();
        if (favoriteFlowView != null) {
            favoriteFlowView.setLaunchScreen(new ng7(this.isFavorite));
        }
    }
}
