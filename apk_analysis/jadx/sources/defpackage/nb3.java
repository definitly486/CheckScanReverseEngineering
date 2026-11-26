package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.messaging.FirebaseMessaging;
import yads.j5;
import yads.nf4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nb3 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ nb3(int i, Object obj, Object obj2) {
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
                ((FirebaseMessaging) obj2).lambda$register$9((TaskCompletionSource) obj);
                break;
            default:
                nf4.a((nf4) obj2, (j5) obj);
                break;
        }
    }
}
