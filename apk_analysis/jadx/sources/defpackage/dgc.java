package defpackage;

import com.google.android.gms.internal.measurement.zzwl;
import com.google.android.gms.internal.measurement.zzwq;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public abstract class dgc extends zfc {
    public final zzwl g;

    public dgc(String str, zfc zfcVar, zzwl zzwlVar, zzwq zzwqVar) {
        super(str, zfcVar, zzwqVar);
        o8.e(zzwlVar.c);
        this.g = zzwlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzwl zzh() {
        return zzwl.a(this.g, zzl());
    }

    public dgc(String str, UUID uuid, String str2, zzwl zzwlVar, zzwq zzwqVar) {
        super(str, uuid, str2, zzwqVar);
        o8.e(zzwlVar.c);
        this.g = zzwlVar;
    }
}
