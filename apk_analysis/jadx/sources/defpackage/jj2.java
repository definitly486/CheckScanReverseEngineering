package defpackage;

import androidx.camera.core.SurfaceOutput;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import com.my.target.b0;
import com.my.tracker.obfuscated.a;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class jj2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jj2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((SurfaceOutput) obj).close();
                break;
            case 1:
                ((f18.a) obj).invoke();
                break;
            case 2:
                ib9.b((InputStream) obj);
                break;
            case 3:
                ((PlaybackVideoGraphWrapper) obj).lambda$flush$1();
                break;
            case 4:
                ((a) obj).b();
                break;
            default:
                b0 b0Var = (b0) obj;
                long j = b0Var.d - 200;
                b0Var.d = j;
                if (j > 0) {
                    b0Var.c();
                } else {
                    b0Var.a();
                }
                break;
        }
    }
}
