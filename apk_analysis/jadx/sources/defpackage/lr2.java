package defpackage;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import java.util.Arrays;
import java.util.ServiceConfigurationError;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lr2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ lr2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(DragGestureDetectorKt.detectDragGestures$lambda$9());
            case 1:
                return j59.a;
            default:
                try {
                    return rn1.a(jp7.q(dp7.f(Arrays.asList(new wd2[0]).iterator())));
                } catch (Throwable th) {
                    throw new ServiceConfigurationError(th.getMessage(), th);
                }
        }
    }
}
