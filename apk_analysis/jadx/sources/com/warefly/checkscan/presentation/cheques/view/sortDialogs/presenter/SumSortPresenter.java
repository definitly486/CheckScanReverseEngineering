package com.warefly.checkscan.presentation.cheques.view.sortDialogs.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortView;
import defpackage.g17;
import defpackage.vp2;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes5.dex */
public final class SumSortPresenter extends BasePresenter<SumSortView> {
    private String endSum;
    private String startSum;
    private final g17 transferSumRegex = new g17("([0-9]+[,.]?[0-9]?[0-9]?)");

    public final void onDataSumEndChanged(String str) {
        this.endSum = null;
        if (str == null || !vp2.a(str) || !this.transferSumRegex.e(str)) {
            SumSortView sumSortView = (SumSortView) getViewState();
            if (sumSortView != null) {
                sumSortView.showEndSumError(true);
            }
            SumSortView sumSortView2 = (SumSortView) getViewState();
            if (sumSortView2 != null) {
                sumSortView2.enableSortButton(false);
                return;
            }
            return;
        }
        this.endSum = str;
        SumSortView sumSortView3 = (SumSortView) getViewState();
        if (sumSortView3 != null) {
            sumSortView3.showEndSumError(false);
        }
        String str2 = this.startSum;
        if (str2 != null) {
            if (!vp2.a(str2)) {
                return;
            }
            if (vp2.c(str) < vp2.c(str2)) {
                SumSortView sumSortView4 = (SumSortView) getViewState();
                if (sumSortView4 != null) {
                    sumSortView4.enableSortButton(false);
                }
                SumSortView sumSortView5 = (SumSortView) getViewState();
                if (sumSortView5 != null) {
                    sumSortView5.showEndSumError(true);
                    return;
                }
                return;
            }
        }
        SumSortView sumSortView6 = (SumSortView) getViewState();
        if (sumSortView6 != null) {
            sumSortView6.enableSortButton(true);
        }
    }

    public final void onDataSumStartChanged(String str) {
        this.startSum = null;
        if (str == null || !vp2.a(str) || !this.transferSumRegex.e(str)) {
            SumSortView sumSortView = (SumSortView) getViewState();
            if (sumSortView != null) {
                sumSortView.showStartSumError(true);
            }
            SumSortView sumSortView2 = (SumSortView) getViewState();
            if (sumSortView2 != null) {
                sumSortView2.enableSortButton(false);
                return;
            }
            return;
        }
        this.startSum = str;
        SumSortView sumSortView3 = (SumSortView) getViewState();
        if (sumSortView3 != null) {
            sumSortView3.showStartSumError(false);
        }
        String str2 = this.endSum;
        if (str2 == null || !vp2.a(str2)) {
            return;
        }
        if (vp2.c(str) <= vp2.c(str2)) {
            SumSortView sumSortView4 = (SumSortView) getViewState();
            if (sumSortView4 != null) {
                sumSortView4.enableSortButton(true);
                return;
            }
            return;
        }
        SumSortView sumSortView5 = (SumSortView) getViewState();
        if (sumSortView5 != null) {
            sumSortView5.showStartSumError(true);
        }
        SumSortView sumSortView6 = (SumSortView) getViewState();
        if (sumSortView6 != null) {
            sumSortView6.enableSortButton(false);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        SumSortView sumSortView = (SumSortView) getViewState();
        if (sumSortView != null) {
            sumSortView.enableSortButton(false);
        }
    }

    public final void onShow() {
        String str = this.startSum;
        if (str == null) {
            str = CommonUrlParts.Values.FALSE_INTEGER;
        }
        String str2 = this.endSum;
        if (str2 == null) {
            str2 = "2147483647";
        }
        SumSortView sumSortView = (SumSortView) getViewState();
        if (sumSortView != null) {
            sumSortView.onSort(str, str2);
        }
    }
}
