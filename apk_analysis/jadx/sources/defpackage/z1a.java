package defpackage;

import com.my.tracker.obfuscated.f3;
import com.my.tracker.obfuscated.m2;
import yads.nm;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z1a implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ long c;
    public final /* synthetic */ long d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ z1a(Object obj, Object obj2, int i, long j, long j2) {
        this.b = i;
        this.e = obj;
        this.f = obj2;
        this.c = j;
        this.d = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.f;
        Object obj2 = this.e;
        switch (i) {
            case 0:
                ((m2) obj2).a((f3) obj, this.c, this.d);
                break;
            default:
                ((nm) obj2).b((String) obj, this.c, this.d);
                break;
        }
    }
}
