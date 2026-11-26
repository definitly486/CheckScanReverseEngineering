package defpackage;

import android.util.Log;
import com.google.android.gms.internal.auth.zzcb;
import com.google.android.gms.internal.auth.zzdc;

/* JADX INFO: loaded from: classes4.dex */
public final class j2b extends zzdc {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.auth.zzdc
    public final /* synthetic */ Object a(Object obj) {
        if (zzcb.zzc.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (zzcb.zzd.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        StringBuilder sbD = n7.d("Invalid boolean value for ", this.b, ": ");
        sbD.append((String) obj);
        Log.e("PhenotypeFlag", sbD.toString());
        return null;
    }
}
