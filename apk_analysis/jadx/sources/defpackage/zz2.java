package defpackage;

import android.content.Intent;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.EnhancedIntentService;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zz2 implements OnCompleteListener, tt3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zz2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((pe) obj).getClass();
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        ((EnhancedIntentService) this.b).lambda$onStartCommand$1((Intent) this.c, task);
    }
}
