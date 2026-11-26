package defpackage;

import androidx.paging.AsyncPagingDataDiffer;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ys implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ys(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return AsyncPagingDataDiffer.LoadStateListenerHandler_delegate$lambda$0();
            default:
                return CrashlyticsWorkers.Companion.checkNotMainThread$lambda$0();
        }
    }
}
