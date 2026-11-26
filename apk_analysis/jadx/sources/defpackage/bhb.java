package defpackage;

import com.google.android.gms.internal.play_billing.zzfa;
import com.google.android.gms.internal.play_billing.zzfp;
import com.google.android.gms.internal.play_billing.zzfx;
import com.google.android.gms.internal.play_billing.zzhr;

/* JADX INFO: loaded from: classes4.dex */
public final class bhb implements uvb {
    public final zzfx a;

    public bhb(zzfx zzfxVar) {
        this.a = zzfxVar;
        zzfxVar.a = this;
    }

    public final void a(int i, Object obj, kqb kqbVar) {
        zzfx zzfxVar = this.a;
        zzfxVar.zzs(i, 3);
        kqbVar.h((zzfa) obj, this);
        zzfxVar.zzs(i, 4);
    }

    public final void b(int i, Object obj, kqb kqbVar) {
        zzfa zzfaVar = (zzfa) obj;
        zzfx zzfxVar = this.a;
        zzfxVar.zzs(i, 2);
        zzfxVar.zzu(zzfaVar.a(kqbVar));
        kqbVar.h(zzfaVar, this);
    }

    public final void c(int i, Object obj) {
        boolean z = obj instanceof zzfp;
        zzfx zzfxVar = this.a;
        if (z) {
            zzfxVar.zzp(i, (zzfp) obj);
        } else {
            zzfxVar.zzo(i, (zzhr) obj);
        }
    }
}
