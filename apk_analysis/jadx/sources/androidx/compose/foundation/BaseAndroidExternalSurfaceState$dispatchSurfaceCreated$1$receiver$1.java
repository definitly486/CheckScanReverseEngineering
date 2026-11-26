package androidx.compose.foundation;

import android.view.Surface;
import defpackage.dm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.o22;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class BaseAndroidExternalSurfaceState$dispatchSurfaceCreated$1$receiver$1 implements SurfaceCoroutineScope, SurfaceScope, y22 {
    private final /* synthetic */ BaseAndroidExternalSurfaceState $$delegate_0;
    private final /* synthetic */ y22 $$delegate_1;

    public BaseAndroidExternalSurfaceState$dispatchSurfaceCreated$1$receiver$1(BaseAndroidExternalSurfaceState baseAndroidExternalSurfaceState, y22 y22Var) {
        this.$$delegate_0 = baseAndroidExternalSurfaceState;
        this.$$delegate_1 = y22Var;
    }

    @Override // androidx.compose.foundation.SurfaceCoroutineScope, defpackage.y22
    public o22 getCoroutineContext() {
        return this.$$delegate_1.getCoroutineContext();
    }

    @Override // androidx.compose.foundation.SurfaceScope
    public void onChanged(Surface surface, dm3<? super Surface, ? super Integer, ? super Integer, j59> dm3Var) {
        this.$$delegate_0.onChanged(surface, dm3Var);
    }

    @Override // androidx.compose.foundation.SurfaceScope
    public void onDestroyed(Surface surface, nl3<? super Surface, j59> nl3Var) {
        this.$$delegate_0.onDestroyed(surface, nl3Var);
    }
}
