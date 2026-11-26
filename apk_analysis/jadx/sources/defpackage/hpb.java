package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzhz;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes4.dex */
public final class hpb extends FutureTask implements Comparable {
    public final long b;
    public final boolean c;
    public final String d;
    public final /* synthetic */ zzhz e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hpb(zzhz zzhzVar, Callable callable, boolean z) {
        super(callable);
        this.e = zzhzVar;
        Preconditions.checkNotNull("Task exception on worker thread");
        long andIncrement = zzhz.k.getAndIncrement();
        this.b = andIncrement;
        this.d = "Task exception on worker thread";
        this.c = z;
        if (andIncrement == Long.MAX_VALUE) {
            u4.e(zzhzVar.a, "Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        hpb hpbVar = (hpb) obj;
        boolean z = hpbVar.c;
        boolean z2 = this.c;
        if (z2 != z) {
            return !z2 ? 1 : -1;
        }
        long j = hpbVar.b;
        long j2 = this.b;
        if (j2 < j) {
            return -1;
        }
        if (j2 > j) {
            return 1;
        }
        this.e.a.zzaW().zzc().zzb("Two tasks share the same index. index", Long.valueOf(j2));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        this.e.a.zzaW().zzb().zzb(this.d, th);
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hpb(zzhz zzhzVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.e = zzhzVar;
        Preconditions.checkNotNull(str);
        long andIncrement = zzhz.k.getAndIncrement();
        this.b = andIncrement;
        this.d = str;
        this.c = z;
        if (andIncrement == Long.MAX_VALUE) {
            u4.e(zzhzVar.a, "Tasks index overflow");
        }
    }
}
