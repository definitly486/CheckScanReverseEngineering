package androidx.compose.foundation;

import android.view.Surface;
import defpackage.dm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface SurfaceScope {
    void onChanged(Surface surface, dm3<? super Surface, ? super Integer, ? super Integer, j59> dm3Var);

    void onDestroyed(Surface surface, nl3<? super Surface, j59> nl3Var);
}
