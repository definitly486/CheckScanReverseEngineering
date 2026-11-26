package defpackage;

import android.app.Activity;
import androidx.camera.video.VideoCapture;
import androidx.core.app.ActivityCompat;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.monetization.ads.exo.source.dash.i;
import com.tapjoy.c0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e7 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ e7(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ActivityCompat.lambda$recreate$0((Activity) obj);
                break;
            case 1:
                ((SwipeRefreshLayout) obj).lambda$onStopNestedScroll$0();
                break;
            case 2:
                ((VideoCapture) obj).notifyReset();
                break;
            case 3:
                ((c0) obj).a();
                break;
            default:
                ((i) obj).f();
                break;
        }
    }
}
