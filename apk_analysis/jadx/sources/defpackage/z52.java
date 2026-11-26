package defpackage;

import androidx.lifecycle.viewmodel.CreationExtras;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class z52 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ z52(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return CrashlyticsWorkers.Companion.checkBackgroundThread$lambda$2();
            default:
                return CreationExtras.Empty.INSTANCE;
        }
    }
}
