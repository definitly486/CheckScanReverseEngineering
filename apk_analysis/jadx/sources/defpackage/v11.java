package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.camera.core.CameraControl;
import androidx.camera.view.PreviewView;

/* JADX INFO: loaded from: classes.dex */
public final class v11 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ View b;
    public final /* synthetic */ PreviewView c;
    public final /* synthetic */ u11 d;
    public final /* synthetic */ CameraControl e;

    public v11(View view, PreviewView previewView, u11 u11Var, CameraControl cameraControl) {
        this.b = view;
        this.c = previewView;
        this.d = u11Var;
        this.e = cameraControl;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        View view = this.b;
        if (view.getMeasuredWidth() <= 0 || view.getMeasuredHeight() <= 0) {
            return;
        }
        view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        u11 u11Var = this.d;
        CameraControl cameraControl = this.e;
        PreviewView previewView = this.c;
        previewView.setOnTouchListener(new w11(u11Var, previewView, cameraControl));
    }
}
