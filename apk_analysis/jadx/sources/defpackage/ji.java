package defpackage;

import android.view.SurfaceView;
import androidx.compose.foundation.AndroidExternalSurface_androidKt;
import androidx.compose.ui.text.Savers_androidKt;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavControllerImpl;
import yads.az1;
import yads.cz2;
import yads.ry2;
import yads.yw1;
import yads.zd2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ji implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ji(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$1$0((SurfaceView) obj);
            case 1:
                return NavControllerImpl.executePopOperations$lambda$11((NavDestination) obj);
            case 2:
                return Savers_androidKt.TextMotionSaver$lambda$1(obj);
            case 3:
                return Boolean.valueOf(az1.a(obj));
            case 4:
                return ry2.d((cz2) obj);
            case 5:
                return Boolean.valueOf(yw1.a(obj));
            default:
                return zd2.a((String) obj);
        }
    }
}
