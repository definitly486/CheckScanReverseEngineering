package com.warefly.checkscan.presentation.queue.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.gf9;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface QueueView extends BaseView {
    void showCouldntCreateCheque();

    void showCouldntDeleteCheque();

    void showCouldntGetChequeInfo();

    void showCouldntLoadCheques();

    void showCouldntResendCheque();

    void showProgress(boolean z);

    void showQueueSortDialog();

    void showReceipts(List<gf9> list);

    void showThereAreNoReceipts(boolean z);
}
