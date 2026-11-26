package defpackage;

import com.my.tracker.obfuscated.a;
import yads.zp4;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class no2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ no2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((f18.a) obj).invoke();
                break;
            case 1:
                ((a) obj).c();
                break;
            default:
                zp4.a((zp4) obj);
                break;
        }
    }
}
