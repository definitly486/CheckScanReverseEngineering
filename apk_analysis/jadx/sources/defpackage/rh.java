package defpackage;

import androidx.camera.core.SurfaceRequest;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;
import com.warefly.checkscan.tasks.ui.images.AnimatedImageView;
import io.appmetrica.analytics.impl.Gb;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class rh implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rh(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                AndroidComposeViewAccessibilityDelegateCompat.semanticsChangeChecker$lambda$0((AndroidComposeViewAccessibilityDelegateCompat) obj);
                break;
            case 1:
                int i2 = AnimatedImageView.C;
                ((AnimatedImageView) obj).b();
                break;
            case 2:
                Gb.a((Gb) obj);
                break;
            case 3:
                ((SurfaceRequest) obj).lambda$new$3();
                break;
            case 4:
                v89.b bVar = new v89.b();
                UpridWebFullScreenDialog.a aVar = UpridWebFullScreenDialog.f;
                ((UpridWebFullScreenDialog) obj).g(bVar);
                break;
            default:
                ((AtomicBoolean) obj).set(true);
                break;
        }
    }
}
