package defpackage;

import com.google.android.gms.measurement.internal.zzlj;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zwb extends tva {
    public final /* synthetic */ zzlj e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zwb(zzlj zzljVar, pvb pvbVar) {
        super(pvbVar);
        Objects.requireNonNull(zzljVar);
        this.e = zzljVar;
    }

    @Override // defpackage.tva
    public final void a() {
        zzlj zzljVarZzj = this.e.a.zzj();
        Objects.requireNonNull(zzljVarZzj);
        new Thread(new wwb(zzljVarZzj, 0)).start();
    }
}
