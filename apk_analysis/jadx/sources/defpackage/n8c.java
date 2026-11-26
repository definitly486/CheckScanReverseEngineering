package defpackage;

import com.google.android.gms.internal.measurement.zzph;

/* JADX INFO: loaded from: classes4.dex */
public final class n8c extends n9c {
    public volatile boolean f;
    public final boolean g;

    public n8c(String str, zzph zzphVar, boolean z) {
        super(str, zzphVar);
        this.g = z;
    }

    @Override // defpackage.v7c
    public final /* synthetic */ Object a() {
        return Boolean.valueOf(this.g);
    }

    @Override // defpackage.v7c
    public final /* synthetic */ Object b(String str) {
        return Boolean.valueOf(Boolean.parseBoolean(str));
    }

    @Override // defpackage.v7c
    public final /* synthetic */ Object c(Object obj) {
        return (Boolean) obj;
    }

    @Override // defpackage.n9c
    public final /* synthetic */ Object d() {
        return Boolean.valueOf(this.f);
    }

    @Override // defpackage.n9c
    public final /* synthetic */ void e(Object obj) {
        this.f = ((Boolean) obj).booleanValue();
    }
}
