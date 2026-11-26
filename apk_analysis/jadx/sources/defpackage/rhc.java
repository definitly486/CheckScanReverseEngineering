package defpackage;

import com.google.android.gms.internal.measurement.zzabe;
import com.google.android.gms.internal.measurement.zzyk;
import com.google.android.gms.internal.measurement.zzyl;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class rhc extends zzyl {
    @Override // com.google.android.gms.internal.measurement.zzyl
    public final /* bridge */ /* synthetic */ void b(Object obj, zzyk zzykVar) {
        zzabe zzabeVar = (zzabe) obj;
        if (zzabeVar == null) {
            return;
        }
        for (Map.Entry entry : zzabeVar.zzb().entrySet()) {
            if (((Set) entry.getValue()).isEmpty()) {
                zzykVar.zza((String) entry.getKey(), null);
            } else {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    zzykVar.zza((String) entry.getKey(), it.next());
                }
            }
        }
    }
}
