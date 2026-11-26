package defpackage;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfoUnavailableException;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.SurfaceOrientedMeteringPointFactory;
import androidx.camera.view.PreviewView;

/* JADX INFO: loaded from: classes.dex */
public final class w11 implements View.OnTouchListener {
    public final /* synthetic */ PreviewView b;
    public final /* synthetic */ CameraControl c;

    public w11(u11 u11Var, PreviewView previewView, CameraControl cameraControl) {
        this.b = previewView;
        this.c = cameraControl;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                return false;
            }
            CameraControl cameraControl = this.c;
            PreviewView previewView = this.b;
            try {
                cameraControl.startFocusAndMetering(new FocusMeteringAction.Builder(new SurfaceOrientedMeteringPointFactory(previewView.getWidth(), previewView.getHeight()).createPoint(previewView.getWidth() / 2.0f, previewView.getHeight() / 2.0f), 1).disableAutoCancel().build());
            } catch (CameraInfoUnavailableException e) {
                Log.d("ERROR", "cannot access camera", e);
            }
            previewView.performClick();
        }
        return true;
    }
}
