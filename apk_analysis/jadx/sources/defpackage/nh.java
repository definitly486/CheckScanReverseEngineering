package defpackage;

import androidx.camera.camera2.pipe.compat.Camera2DeviceCache;
import com.my.target.z1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nh implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ nh(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((ll3) obj).invoke();
                break;
            case 1:
                Camera2DeviceCache._init_$lambda$1((Camera2DeviceCache) obj);
                break;
            default:
                z1 z1Var = (z1) obj;
                int i2 = z1Var.h;
                if (i2 != 0) {
                    if (i2 == 1) {
                        z1Var.t -= 200;
                    }
                    if (z1Var.t > 0) {
                        z1Var.w();
                    }
                }
                z1Var.t();
                break;
        }
    }
}
