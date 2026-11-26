package defpackage;

import androidx.camera.core.impl.CameraCaptureCallback;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f01 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    public /* synthetic */ f01(Object obj, int i, int i2) {
        this.b = i2;
        this.d = obj;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        int i2 = this.c;
        Object obj = this.d;
        switch (i) {
            case 0:
                ((CameraCaptureCallback) obj).onCaptureCancelled(i2);
                break;
            default:
                ((MaterialButton) obj).lambda$setIconSize$1(i2);
                break;
        }
    }
}
