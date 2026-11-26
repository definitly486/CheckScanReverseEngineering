package defpackage;

import com.google.android.gms.measurement.internal.zzic;

/* JADX INFO: loaded from: classes4.dex */
public abstract class mvb extends jvb {
    public boolean b;

    public mvb(zzic zzicVar) {
        super(zzicVar);
        this.a.A++;
    }

    public abstract boolean a();

    public void b() {
    }

    public final void c() {
        if (this.b) {
            return;
        }
        ah.f("Not initialized");
    }

    public final void zzx() {
        if (this.b) {
            ah.f("Can't initialize twice");
        } else {
            if (a()) {
                return;
            }
            this.a.C.incrementAndGet();
            this.b = true;
        }
    }

    public final void zzy() {
        if (this.b) {
            ah.f("Can't initialize twice");
            return;
        }
        b();
        this.a.C.incrementAndGet();
        this.b = true;
    }
}
