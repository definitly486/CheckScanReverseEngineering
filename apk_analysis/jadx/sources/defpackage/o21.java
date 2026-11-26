package defpackage;

import androidx.work.impl.Processor;
import androidx.work.impl.WorkerWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.google.firebase.perf.v1.ApplicationProcessState;
import com.my.tracker.campaign.CampaignService;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o21 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ o21(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.d = obj;
        this.c = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.c;
        Object obj3 = this.d;
        switch (i) {
            case 0:
                ((CampaignService) obj3).a((String) obj2, (ed0) obj);
                break;
            case 1:
                ((GaugeManager) obj3).lambda$stopCollectingGauges$3((String) obj2, (ApplicationProcessState) obj);
                break;
            default:
                ((Processor) obj3).lambda$startWork$1((ListenableFuture) obj2, (WorkerWrapper) obj);
                break;
        }
    }
}
