package defpackage;

import android.os.IBinder;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.auth.zzl;
import com.google.android.gms.internal.auth.zze;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public final class fz4 implements OnCompleteListener, fyb {
    public final /* synthetic */ Object b;

    public /* synthetic */ fz4(Object obj) {
        this.b = obj;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        c31 c31Var = (c31) this.b;
        Exception exception = task.getException();
        if (exception != null) {
            c31Var.resumeWith(new k57.a(exception));
        } else if (task.isCanceled()) {
            c31Var.d(null);
        } else {
            c31Var.resumeWith(task.getResult());
        }
    }

    @Override // defpackage.fyb
    public /* bridge */ /* synthetic */ Object zza(IBinder iBinder) {
        AccountChangeEventsResponse accountChangeEventsResponseZzh = zze.zzb(iBinder).zzh((AccountChangeEventsRequest) this.b);
        zzl.d(accountChangeEventsResponseZzh);
        return accountChangeEventsResponseZzh.getEvents();
    }
}
