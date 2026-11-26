package defpackage;

import com.my.target.z1;
import com.my.tracker.obfuscated.m2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x1a implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    public /* synthetic */ x1a(Object obj, int i, int i2) {
        this.b = i2;
        this.d = obj;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        int i2 = this.c;
        Object obj = this.d;
        switch (i) {
            case 0:
                ((m2) obj).c(i2);
                break;
            default:
                z1 z1Var = (z1) obj;
                if (i2 == -2 || i2 == -1) {
                    z1Var.u();
                    y14.r(null, "InterstitialPresenterS4: Audiofocus loss, pausing");
                }
                break;
        }
    }
}
