package defpackage;

import com.huawei.hms.iap.entity.ProductInfoReq;
import com.my.tracker.obfuscated.d;
import java.util.ArrayList;
import yads.nm;
import yads.oi0;
import yads.vz2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ds9 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ ds9(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    private final void a() {
        ((d) this.c).a((ProductInfoReq) this.d, (ArrayList) this.e);
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                a();
                break;
            default:
                ((nm) this.c).b((vz2) this.d, (oi0) this.e);
                break;
        }
    }
}
