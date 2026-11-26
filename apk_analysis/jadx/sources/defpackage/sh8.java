package defpackage;

import com.tapjoy.TJAdUnitJSBridge;
import java.util.HashMap;
import yads.ne6;
import yads.oi0;
import yads.vz2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sh8 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ sh8(Object obj, Object obj2, Object obj3, int i) {
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
                ((TJAdUnitJSBridge) obj3).a((String) obj2, (HashMap) obj);
                break;
            default:
                ((ne6) obj3).b((vz2) obj2, (oi0) obj);
                break;
        }
    }
}
