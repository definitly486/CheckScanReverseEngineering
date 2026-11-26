package defpackage;

import com.google.android.gms.measurement.internal.zzlj;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class cxb implements Executor {
    public final /* synthetic */ zzlj b;

    public cxb(zzlj zzljVar) {
        this.b = zzljVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.b.a.zzaX().zzj(runnable);
    }
}
