package com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface TransferPointsView extends BaseView {
    void setLoadCodeEnabled(boolean z);

    void showCode(String str);

    void showCodeExpired();

    void showCodeExpiringTime(long j, long j2);

    void showCouldntLoadCode();

    void showLoading(boolean z);
}
