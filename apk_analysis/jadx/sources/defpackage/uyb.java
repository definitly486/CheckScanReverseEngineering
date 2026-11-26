package defpackage;

import com.google.android.gms.measurement.internal.zzlj;

/* JADX INFO: loaded from: classes4.dex */
public final class uyb implements Runnable {
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ long e;
    public final /* synthetic */ zzlj f;

    public uyb(zzlj zzljVar, String str, String str2, Object obj, long j) {
        this.b = str;
        this.c = str2;
        this.d = obj;
        this.e = j;
        this.f = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.d;
        this.f.e(this.e, obj, this.b, this.c);
    }
}
