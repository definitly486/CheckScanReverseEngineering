package defpackage;

import android.app.job.JobParameters;
import android.content.Context;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.ConditionVariable;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.my.tracker.obfuscated.r1;
import com.tapjoy.TJOfferwallDiscoverView;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class wt implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ wt(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                AudioManagerCompat.lambda$getAudioManager$0((Context) obj2, (ConditionVariable) obj);
                break;
            case 1:
                int i2 = JobInfoSchedulerService.b;
                ((JobInfoSchedulerService) obj2).jobFinished((JobParameters) obj, false);
                break;
            case 2:
                ((TJOfferwallDiscoverView) obj2).a((String) obj);
                break;
            default:
                ((r1) obj2).b((List) obj);
                break;
        }
    }
}
