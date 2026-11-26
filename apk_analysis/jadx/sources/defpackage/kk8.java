package defpackage;

import com.my.tracker.obfuscated.i0;
import com.tapjoy.TapjoyCache;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kk8 implements Runnable {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ long e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    public /* synthetic */ kk8(i0 i0Var, String str, String str2, long j, Runnable runnable) {
        this.f = i0Var;
        this.c = str;
        this.d = str2;
        this.e = j;
        this.g = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.g;
        Object obj2 = this.f;
        switch (i) {
            case 0:
                long j = this.e;
                String str = this.d;
                TapjoyCache.a((TapjoyCache) obj2, this.c, (nl3) obj, j, str);
                break;
            default:
                ((i0) obj2).a(this.c, this.d, this.e, (Runnable) obj);
                break;
        }
    }

    public /* synthetic */ kk8(TapjoyCache tapjoyCache, String str, nl3 nl3Var, long j, String str2) {
        this.f = tapjoyCache;
        this.c = str;
        this.g = nl3Var;
        this.e = j;
        this.d = str2;
    }
}
