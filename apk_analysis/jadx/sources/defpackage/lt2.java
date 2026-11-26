package defpackage;

import android.util.Size;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.messaging.FirebaseMessaging;
import com.my.target.h6;
import com.my.target.i6;
import yads.ji0;
import yads.ne6;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lt2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ lt2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((DualSurfaceProcessor) obj2).lambda$onInputSurface$1((SurfaceRequest) obj);
                break;
            case 1:
                ((FirebaseMessaging) obj2).lambda$deleteToken$11((TaskCompletionSource) obj);
                break;
            case 2:
                h6 h6Var = (h6) obj2;
                h14 h14Var = (h14) obj;
                int i2 = h6.r;
                Size sizeA = h6Var.a(h14Var.b, h14Var.c);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(sizeA.getWidth(), sizeA.getHeight());
                layoutParams.gravity = 17;
                i6 i6Var = h6Var.q;
                i6Var.getImageView().setScaleType(ImageView.ScaleType.CENTER_CROP);
                i6Var.getImageView().setLayoutParams(layoutParams);
                break;
            default:
                ((ne6) obj2).c((ji0) obj);
                break;
        }
    }
}
