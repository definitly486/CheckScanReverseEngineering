package defpackage;

import com.google.android.gms.internal.measurement.zzo;
import com.google.android.gms.measurement.internal.zzht;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class fob implements zzo {
    public final /* synthetic */ String a;
    public final /* synthetic */ zzht b;

    public fob(zzht zzhtVar, String str) {
        this.a = str;
        this.b = zzhtVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzo
    public final String zza(String str) {
        Map map = (Map) this.b.d.get(this.a);
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return (String) map.get(str);
    }
}
