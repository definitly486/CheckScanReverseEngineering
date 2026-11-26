package defpackage;

import com.google.android.gms.common.api.internal.zabk;

/* JADX INFO: loaded from: classes4.dex */
public final class sja implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ zabk c;

    public sja(zabk zabkVar, int i) {
        this.b = i;
        this.c = zabkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.b(this.b);
    }
}
