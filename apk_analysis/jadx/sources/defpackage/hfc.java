package defpackage;

import com.google.android.gms.internal.measurement.zzth;
import com.google.android.gms.internal.measurement.zztp;
import com.google.android.gms.internal.measurement.zzuy;
import com.google.android.gms.internal.measurement.zzxa;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class hfc implements zzth {
    public final /* synthetic */ zztp a;

    public /* synthetic */ hfc(zztp zztpVar) {
        this.a = zztpVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzth
    public final ListenableFuture zza(final ks ksVar, final Executor executor) {
        return zzuy.zza(x1.p(en3.Y(this.a.e.zza()), zzxa.zzc(new ks() { // from class: gfc
            @Override // defpackage.ks
            public final /* synthetic */ ListenableFuture apply(Object obj) {
                return this.a.a.c.zzb(ksVar, executor, null);
            }
        }), jn2.INSTANCE));
    }
}
