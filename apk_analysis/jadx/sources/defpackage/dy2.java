package defpackage;

import android.os.Handler;
import android.os.Looper;
import androidx.camera.video.internal.encoder.EncoderImpl;
import com.my.target.z2;
import com.my.tracker.obfuscated.t0;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dy2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ dy2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((EncoderImpl) obj).lambda$signalSourceStopped$7();
                break;
            case 1:
                ((t0) obj).c();
                break;
            default:
                z2 z2Var = (z2) obj;
                Looper.prepare();
                Looper looperMyLooper = Looper.myLooper();
                Objects.requireNonNull(looperMyLooper);
                Handler handler = new Handler(looperMyLooper);
                z2Var.e = handler;
                new d9a(300000, handler).b(new zg2(z2Var, 3));
                zg2 zg2Var = new zg2(z2Var, 3);
                Handler handler2 = z2Var.e;
                Objects.requireNonNull(handler2);
                handler2.post(zg2Var);
                Looper.loop();
                break;
        }
    }
}
