package defpackage;

import androidx.compose.runtime.retain.RetainedValuesStoreRegistryKt;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a62 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ a62(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return CrashlyticsWorkers.Companion.checkBlockingThread$lambda$1();
            default:
                return RetainedValuesStoreRegistryKt.retainRetainedValuesStoreRegistry$lambda$0$0();
        }
    }
}
