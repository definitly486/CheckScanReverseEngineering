package defpackage;

import androidx.camera.video.internal.encoder.EncoderImpl;
import com.tapjoy.TJGetUserRevenueListener;
import com.tapjoy.TJUser;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class cy2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ cy2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((EncoderImpl) obj).lambda$requestKeyFrame$8();
                break;
            default:
                TJUser.INSTANCE.getUserRevenue((TJGetUserRevenueListener) obj);
                break;
        }
    }
}
