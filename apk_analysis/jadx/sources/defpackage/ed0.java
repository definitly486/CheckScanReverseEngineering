package defpackage;

import android.os.HandlerThread;
import androidx.camera.camera2.pipe.config.ThreadConfigModule;
import com.my.tracker.campaign.CampaignService;
import com.my.tracker.obfuscated.q2;
import com.warefly.checkscan.presentation.bonuses.categories.presenter.CategoriesPresenter;
import com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator;
import yads.o25;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ed0 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ed0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                int i2 = BaseDotsIndicator.i;
                ((BaseDotsIndicator) obj).d();
                break;
            case 1:
                ((CampaignService) obj).stopSelf();
                break;
            case 2:
                ((CategoriesPresenter) obj).loadMoreCategories();
                break;
            case 3:
                ((pn5) obj).d.invoke();
                break;
            case 4:
                ThreadConfigModule.provideThreads$lambda$4$1((HandlerThread) obj);
                break;
            case 5:
                o25.c((o25) obj);
                break;
            default:
                ((q2) obj).a();
                break;
        }
    }
}
