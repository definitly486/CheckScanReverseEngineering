package defpackage;

import android.graphics.Typeface;
import android.net.Uri;
import androidx.browser.trusted.TrustedWebActivityServiceConnectionPool;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.imagecapture.TakePictureRequest;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.view.CameraController;
import androidx.core.content.res.ResourcesCompat;
import com.tapjoy.b0;
import com.tapjoy.internal.p1;
import com.tapjoy.internal.s2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p01 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ p01(int i, Object obj, Object obj2) {
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
                ((CameraController) obj2).lambda$setCameraSelector$4((CameraSelector) obj);
                break;
            case 1:
                ((DefaultSurfaceProcessor) obj2).lambda$onInputSurface$2((SurfaceRequest) obj);
                break;
            case 2:
                ((ResourcesCompat.FontCallback) obj2).lambda$callbackSuccessAsync$0((Typeface) obj);
                break;
            case 3:
                ((TakePictureRequest) obj2).lambda$onResult$2((ImageProxy) obj);
                break;
            case 4:
                ((TrustedWebActivityServiceConnectionPool) obj2).lambda$connect$0((Uri) obj);
                break;
            case 5:
                UseCaseThreads.sequentialExecutor$lambda$0$0((UseCaseThreads) obj2, (Runnable) obj);
                break;
            default:
                p1.a((s2) obj2, (b0) obj);
                break;
        }
    }
}
