package defpackage;

import com.google.android.gms.internal.measurement.zzph;

/* JADX INFO: loaded from: classes4.dex */
public final class g9c extends n9c {
    public volatile long f;
    public final long g;

    public g9c(String str, zzph zzphVar, long j) {
        super(str, zzphVar);
        this.g = j;
    }

    @Override // defpackage.v7c
    public final /* synthetic */ Object a() {
        return Long.valueOf(this.g);
    }

    @Override // defpackage.v7c
    public final /* synthetic */ Object b(String str) {
        return Long.valueOf(Long.parseLong(str));
    }

    @Override // defpackage.v7c
    public final /* synthetic */ Object c(Object obj) {
        return (Long) obj;
    }

    @Override // defpackage.n9c
    public final /* synthetic */ Object d() {
        return Long.valueOf(this.f);
    }

    @Override // defpackage.n9c
    public final /* synthetic */ void e(Object obj) {
        this.f = ((Long) obj).longValue();
    }
}
