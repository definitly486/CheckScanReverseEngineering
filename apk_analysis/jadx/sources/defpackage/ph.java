package defpackage;

import androidx.camera.camera2.pipe.config.ThreadConfigModule;
import androidx.compose.ui.platform.AndroidComposeView;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;
import com.warefly.checkscan.tasks.ui.images.AnimatedImageView;
import java.util.concurrent.ExecutorService;
import yads.gl;
import yads.q25;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ph implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ph(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AndroidComposeView) obj).invalidateDescendants();
                break;
            case 1:
                ((AnimatedImageView) obj).e();
                break;
            case 2:
                ThreadConfigModule.provideThreads$lambda$5$0((ExecutorService) obj);
                break;
            case 3:
                v89.f fVar = new v89.f();
                UpridWebFullScreenDialog.a aVar = UpridWebFullScreenDialog.f;
                ((UpridWebFullScreenDialog) obj).g(fVar);
                break;
            case 4:
                ((gl) obj).b();
                break;
            default:
                q25.c((q25) obj);
                break;
        }
    }
}
