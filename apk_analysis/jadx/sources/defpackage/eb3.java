package defpackage;

import com.google.firebase.installations.FirebaseInstallations;
import java.util.concurrent.ScheduledFuture;
import yads.c66;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class eb3 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ eb3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((FirebaseInstallations) obj).lambda$getId$1();
                break;
            case 1:
                ((ScheduledFuture) obj).cancel(true);
                break;
            default:
                c66.a((c66) obj);
                break;
        }
    }
}
