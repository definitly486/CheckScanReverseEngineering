package defpackage;

import com.google.android.gms.measurement.internal.zzae;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class pva implements Runnable {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public pva(lgc lgcVar, Callable callable) {
        this.c = lgcVar;
        this.d = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                pvb pvbVar = (pvb) this.c;
                pvbVar.zzaV();
                if (!zzae.zza()) {
                    tva tvaVar = (tva) this.d;
                    boolean z = tvaVar.c != 0;
                    tvaVar.c = 0L;
                    if (z) {
                        tvaVar.a();
                    }
                } else {
                    pvbVar.zzaX().zzj(this);
                }
                break;
            default:
                lgc lgcVar = (lgc) this.c;
                try {
                    lgcVar.a(((Callable) this.d).call());
                } catch (Exception e) {
                    lgcVar.c(e);
                } catch (Throwable th) {
                    lgcVar.c(new RuntimeException(th));
                    return;
                }
                break;
        }
    }

    public pva(tva tvaVar, pvb pvbVar) {
        this.c = pvbVar;
        this.d = tvaVar;
    }
}
