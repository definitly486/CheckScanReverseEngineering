package defpackage;

import android.view.ViewGroup;
import yads.wf6;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class r8a implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Object d;

    public /* synthetic */ r8a(int i, Object obj, boolean z) {
        this.b = i;
        this.d = obj;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                z8a z8aVar = (z8a) this.d;
                boolean z = this.c;
                if (z8aVar.h == 0) {
                    z8aVar.h = z ? 1 : 2;
                }
                break;
            default:
                wf6.b((ViewGroup) this.d, this.c);
                break;
        }
    }
}
