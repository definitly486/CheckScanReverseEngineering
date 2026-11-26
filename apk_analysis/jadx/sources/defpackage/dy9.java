package defpackage;

import com.my.tracker.obfuscated.i0;
import yads.m4;
import yads.p25;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dy9 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ dy9(int i, Object obj, Object obj2) {
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
                ((i0) obj2).a((Boolean) obj);
                break;
            default:
                p25.a((p25) obj2, (m4) obj);
                break;
        }
    }
}
