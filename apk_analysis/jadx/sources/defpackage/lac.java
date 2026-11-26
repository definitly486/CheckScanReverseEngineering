package defpackage;

import com.google.android.gms.measurement.internal.zzpg;

/* JADX INFO: loaded from: classes4.dex */
public abstract class lac extends y9c {
    public boolean c;

    public lac(zzpg zzpgVar) {
        super(zzpgVar);
        this.b.r++;
    }

    public final void a() {
        if (this.c) {
            return;
        }
        ah.f("Not initialized");
    }

    public abstract void b();

    public final void zzaz() {
        if (this.c) {
            ah.f("Can't initialize twice");
            return;
        }
        b();
        this.b.s++;
        this.c = true;
    }
}
