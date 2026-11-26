package defpackage;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.imagecapture.ProcessingRequest;
import androidx.camera.core.processing.SurfaceProcessorWithExecutor;
import com.google.firebase.remoteconfig.interop.rollouts.RolloutsState;
import com.google.firebase.remoteconfig.interop.rollouts.RolloutsStateSubscriber;
import yads.fg6;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class pg6 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ pg6(int i, Object obj, Object obj2) {
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
                ((ProcessingRequest) obj2).onPostviewBitmapAvailable((Bitmap) obj);
                break;
            case 1:
                ((RolloutsStateSubscriber) obj2).onRolloutsStateChanged((RolloutsState) obj);
                break;
            case 2:
                ((SurfaceProcessorWithExecutor) obj2).lambda$onInputSurface$0((SurfaceRequest) obj);
                break;
            default:
                fg6.a((ViewGroup) obj2, (View) obj);
                break;
        }
    }
}
