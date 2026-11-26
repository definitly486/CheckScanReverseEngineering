package defpackage;

import androidx.activity.ComponentActivity;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.tapjoy.internal.p2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xr1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xr1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ComponentActivity.onBackPressedDispatcher_delegate$lambda$0$0((ComponentActivity) obj);
                break;
            case 1:
                DefaultSurfaceProcessor.lambda$snapshot$7((CallbackToFutureAdapter.Completer) obj);
                break;
            default:
                ((p2) obj).b();
                break;
        }
    }
}
