package defpackage;

import androidx.activity.ComponentActivity;
import yads.s25;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class mr1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mr1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((ComponentActivity) obj).invalidateMenu();
                break;
            default:
                s25.c((s25) obj);
                break;
        }
    }
}
