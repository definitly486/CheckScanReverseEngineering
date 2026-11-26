package defpackage;

import androidx.camera.video.internal.encoder.EncoderImpl;
import com.my.tracker.obfuscated.t0;
import yads.cf;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class by2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ by2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((EncoderImpl) obj).lambda$release$6();
                break;
            case 1:
                cf.a((yp1) obj);
                break;
            default:
                t0.a((t0) obj);
                break;
        }
    }
}
