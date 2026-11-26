package defpackage;

import com.google.android.gms.measurement.internal.zzlj;

/* JADX INFO: loaded from: classes4.dex */
public final class m0c implements Runnable {
    public final /* synthetic */ Boolean b;
    public final /* synthetic */ zzlj c;

    public m0c(zzlj zzljVar, Boolean bool) {
        this.b = bool;
        this.c = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.g(this.b, true);
    }
}
