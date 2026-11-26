package defpackage;

import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.my.target.b1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f52 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ f52(Object obj, Object obj2, Object obj3, int i) {
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
                ((CrashlyticsCore) obj3).lambda$setCustomKey$5((String) obj2, (String) obj);
                break;
            default:
                b1 b1Var = (b1) obj3;
                vha vhaVar = (vha) obj2;
                j8a j8aVar = (j8a) obj;
                b1.a aVar = b1Var.c;
                if (aVar != null) {
                    aVar.a(vhaVar, j8aVar);
                    b1Var.c = null;
                }
                break;
        }
    }
}
