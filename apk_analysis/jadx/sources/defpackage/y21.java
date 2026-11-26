package defpackage;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.utils.CancelWorkRunnable;
import yads.ln4;
import yads.nn4;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class y21 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ y21(int i, Object obj, Object obj2) {
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
                CancelWorkRunnable.forAll$lambda$7$lambda$6((WorkDatabase) obj2, (WorkManagerImpl) obj);
                break;
            default:
                ((nn4) obj2).a((ln4) obj);
                break;
        }
    }
}
