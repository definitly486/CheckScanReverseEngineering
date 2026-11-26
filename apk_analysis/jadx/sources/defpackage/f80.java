package defpackage;

import android.os.Handler;
import androidx.camera.camera2.adapter.CameraInfoAdapter;
import androidx.compose.material3.NavigationRailKt;
import androidx.compose.material3.carousel.CarouselPagerState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.retain.RetainedEffectKt;
import java.util.List;
import yads.nq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f80 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ f80(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                i80 i80Var = (i80) obj;
                i80Var.g = false;
                i80Var.e.dismiss();
                i80Var.f.dismiss();
                ((Handler) i80Var.i.getValue()).removeCallbacks((hy) i80Var.j.getValue());
                return j59.a;
            case 1:
                return Boolean.valueOf(CameraInfoAdapter.isLegacyDevice_delegate$lambda$0((CameraInfoAdapter) obj));
            case 2:
                return Integer.valueOf(CarouselPagerState.Saver$lambda$2$lambda$1((List) obj));
            case 3:
                return u96.h((b36) obj);
            case 4:
                return Float.valueOf(NavigationRailKt.NavigationRailItem$lambda$10$lambda$9$lambda$8((State) obj));
            case 5:
                return RetainedEffectKt.RetainedEffect$lambda$0$0((nl3) obj);
            default:
                return nq0.T((nq0) obj);
        }
    }
}
