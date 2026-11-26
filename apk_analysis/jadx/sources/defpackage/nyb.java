package defpackage;

import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zznl;

/* JADX INFO: loaded from: classes4.dex */
public final class nyb extends tva {
    public final /* synthetic */ int e;
    public final /* synthetic */ qhb f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ nyb(qhb qhbVar, pvb pvbVar, int i) {
        super(pvbVar);
        this.e = i;
        this.f = qhbVar;
    }

    @Override // defpackage.tva
    public final void a() {
        switch (this.e) {
            case 0:
                ((zzlj) this.f).zzC();
                break;
            default:
                xp.h(((zznl) this.f).a, "Tasks have been queued for a long time");
                break;
        }
    }
}
