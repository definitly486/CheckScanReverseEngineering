package defpackage;

import androidx.collection.LruCache;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzc;
import com.google.android.gms.measurement.internal.zzht;

/* JADX INFO: loaded from: classes4.dex */
public final class ynb extends LruCache {
    public final /* synthetic */ zzht a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ynb(zzht zzhtVar) {
        super(20);
        this.a = zzhtVar;
    }

    @Override // androidx.collection.LruCache
    public final /* synthetic */ Object create(Object obj) throws Throwable {
        String str = (String) obj;
        Preconditions.checkNotEmpty(str);
        zzht zzhtVar = this.a;
        zzhtVar.a();
        Preconditions.checkNotEmpty(str);
        tua tuaVarD0 = zzhtVar.b.zzj().d0(str);
        if (tuaVarD0 == null) {
            return null;
        }
        zzhtVar.a.zzaW().zzk().zzb("Populate EES config from database on cache miss. appId", str);
        zzhtVar.f(str, zzhtVar.g(str, tuaVarD0.a));
        return (zzc) zzhtVar.k.snapshot().get(str);
    }
}
