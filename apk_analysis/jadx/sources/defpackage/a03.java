package defpackage;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.messaging.EnhancedIntentService;
import yads.m94;
import yads.t70;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a03 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ a03(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                ((EnhancedIntentService) obj3).lambda$processIntent$0((Intent) obj2, (TaskCompletionSource) obj);
                break;
            default:
                m94.a((m94) obj3, (Context) obj2, (t70) obj);
                break;
        }
    }
}
