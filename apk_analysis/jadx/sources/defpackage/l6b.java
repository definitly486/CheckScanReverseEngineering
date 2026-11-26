package defpackage;

import com.google.android.gms.internal.play_billing.c;
import com.google.android.gms.internal.play_billing.n;
import com.google.android.gms.internal.play_billing.zzdk;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class l6b extends n {
    public zzdk i;
    public ScheduledFuture j;

    @Override // com.google.android.gms.internal.play_billing.zzcu
    public final String d() {
        zzdk zzdkVar = this.i;
        ScheduledFuture scheduledFuture = this.j;
        if (zzdkVar == null) {
            return null;
        }
        String strC = me0.c("inputFuture=[", zzdkVar.toString(), "]");
        if (scheduledFuture != null) {
            long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
            if (delay > 0) {
                return strC + ", remaining delay=[" + delay + " ms]";
            }
        }
        return strC;
    }

    @Override // com.google.android.gms.internal.play_billing.zzcu
    public final void e() {
        zzdk zzdkVar = this.i;
        if ((this.b instanceof c) & (zzdkVar != null)) {
            Object obj = this.b;
            zzdkVar.cancel((obj instanceof c) && ((c) obj).a);
        }
        ScheduledFuture scheduledFuture = this.j;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.i = null;
        this.j = null;
    }
}
