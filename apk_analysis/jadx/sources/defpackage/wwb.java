package defpackage;

import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzmb;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wwb implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ qhb c;

    public /* synthetic */ wwb(qhb qhbVar, int i) {
        this.b = i;
        this.c = qhbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        qhb qhbVar = this.c;
        switch (i) {
            case 0:
                ((zzlj) qhbVar).k();
                break;
            default:
                ((zzmb) qhbVar).j = null;
                break;
        }
    }
}
