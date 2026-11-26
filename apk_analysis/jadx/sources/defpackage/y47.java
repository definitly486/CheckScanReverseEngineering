package defpackage;

import androidx.core.content.res.ResourcesCompat;
import yads.s85;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class y47 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    public /* synthetic */ y47(Object obj, int i, int i2) {
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
                ((ResourcesCompat.FontCallback) obj).lambda$callbackFailAsync$1(i2);
                break;
            default:
                ((s85) obj).a(i2);
                break;
        }
    }
}
