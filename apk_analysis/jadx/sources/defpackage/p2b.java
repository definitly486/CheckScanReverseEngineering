package defpackage;

import android.util.Base64;
import android.util.Log;
import com.google.android.gms.internal.auth.zzdc;
import com.google.android.gms.internal.auth.zzhs;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class p2b extends zzdc {
    @Override // com.google.android.gms.internal.auth.zzdc
    public final Object a(Object obj) {
        try {
            return zzhs.zzp(Base64.decode((String) obj, 3));
        } catch (IOException | IllegalArgumentException unused) {
            StringBuilder sbD = n7.d("Invalid byte[] value for ", this.b, ": ");
            sbD.append((String) obj);
            Log.e("PhenotypeFlag", sbD.toString());
            return null;
        }
    }
}
