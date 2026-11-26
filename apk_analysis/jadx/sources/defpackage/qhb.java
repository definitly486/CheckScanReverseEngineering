package defpackage;

import com.google.android.gms.measurement.internal.zzic;

/* JADX INFO: loaded from: classes4.dex */
public abstract class qhb extends mdb {
    public boolean b;

    public qhb(zzic zzicVar) {
        super(zzicVar);
        this.a.A++;
    }

    public final void a() {
        if (this.b) {
            return;
        }
        ah.f("Not initialized");
    }

    public final void zzc() {
        if (this.b) {
            ah.f("Can't initialize twice");
        } else {
            if (zze()) {
                return;
            }
            this.a.C.incrementAndGet();
            this.b = true;
        }
    }

    public final void zzd() {
        if (this.b) {
            ah.f("Can't initialize twice");
            return;
        }
        zzf();
        this.a.C.incrementAndGet();
        this.b = true;
    }

    public abstract boolean zze();

    public void zzf() {
    }
}
