package defpackage;

import android.util.Log;
import com.google.android.gms.internal.auth.zzdc;

/* JADX INFO: loaded from: classes4.dex */
public final class e2b extends zzdc {
    @Override // com.google.android.gms.internal.auth.zzdc
    public final /* synthetic */ Object a(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            StringBuilder sbD = n7.d("Invalid long value for ", this.b, ": ");
            sbD.append((String) obj);
            Log.e("PhenotypeFlag", sbD.toString());
            return null;
        }
    }
}
