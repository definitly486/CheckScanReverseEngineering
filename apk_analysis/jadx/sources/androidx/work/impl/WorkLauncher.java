package androidx.work.impl;

import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;

/* JADX INFO: loaded from: classes3.dex */
public interface WorkLauncher {
    default void startWork(StartStopToken startStopToken) {
        startStopToken.getClass();
        startWork(startStopToken, null);
    }

    void startWork(StartStopToken startStopToken, WorkerParameters.RuntimeExtras runtimeExtras);

    default void stopWork(StartStopToken startStopToken) {
        startStopToken.getClass();
        stopWork(startStopToken, WorkInfo.STOP_REASON_UNKNOWN);
    }

    void stopWork(StartStopToken startStopToken, int i);

    default void stopWorkWithReason(StartStopToken startStopToken, int i) {
        startStopToken.getClass();
        stopWork(startStopToken, i);
    }
}
