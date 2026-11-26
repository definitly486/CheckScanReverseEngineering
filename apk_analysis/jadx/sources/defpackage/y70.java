package defpackage;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import yads.dg0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y70 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ y70(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return new Handler(Looper.getMainLooper());
            case 1:
                return PlatformSelectionBehaviors_androidKt.LocalTextClassifierCoroutineContext$lambda$0();
            default:
                return dg0.c();
        }
    }
}
