package defpackage;

import com.google.android.gms.internal.measurement.zzyk;
import com.google.android.gms.internal.measurement.zzyl;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class qhc extends zzyl {
    @Override // com.google.android.gms.internal.measurement.zzyl
    public final void a(Iterator it, zzyk zzykVar) {
        if (it.hasNext()) {
            Object next = it.next();
            if (!it.hasNext()) {
                zzykVar.zza(zzd(), next);
                return;
            }
            StringBuilder sb = new StringBuilder("[");
            sb.append(next);
            do {
                sb.append(',');
                sb.append(it.next());
            } while (it.hasNext());
            String strZzd = zzd();
            sb.append(']');
            zzykVar.zza(strZzd, sb.toString());
        }
    }
}
