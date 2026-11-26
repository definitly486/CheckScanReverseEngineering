package defpackage;

import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.my.tracker.obfuscated.i0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e52 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ e52(int i, Object obj, Object obj2) {
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
                ((CrashlyticsCore) obj2).lambda$logFatalException$8((Throwable) obj);
                break;
            default:
                ((i0) obj2).b((List) obj);
                break;
        }
    }
}
