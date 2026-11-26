package defpackage;

import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfoUnavailableException;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.SurfaceOrientedMeteringPointFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class x11 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ View b;
    public final /* synthetic */ u11 c;
    public final /* synthetic */ CameraControl d;

    public x11(View view, u11 u11Var, CameraControl cameraControl) {
        this.b = view;
        this.c = u11Var;
        this.d = cameraControl;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        View view = this.b;
        if (view.getMeasuredWidth() <= 0 || view.getMeasuredHeight() <= 0) {
            return;
        }
        view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        CameraControl cameraControl = this.d;
        View view2 = this.c.i;
        float measuredWidth = view2.getMeasuredWidth();
        float measuredHeight = view2.getMeasuredHeight();
        try {
            cameraControl.startFocusAndMetering(new FocusMeteringAction.Builder(new SurfaceOrientedMeteringPointFactory(measuredWidth, measuredHeight).createPoint(measuredHeight / 2.0f, measuredWidth / 2.0f), 1).setAutoCancelDuration(1L, TimeUnit.SECONDS).build());
        } catch (CameraInfoUnavailableException e) {
            Log.d("ERROR", "cannot access camera", e);
        }
    }
}
