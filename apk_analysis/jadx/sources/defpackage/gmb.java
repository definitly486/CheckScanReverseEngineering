package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.zzl;
import com.google.android.gms.internal.auth.zze;

/* JADX INFO: loaded from: classes4.dex */
public final class gmb implements fyb {
    public final /* synthetic */ String b;
    public final /* synthetic */ Bundle c;

    public gmb(String str, Bundle bundle) {
        this.b = str;
        this.c = bundle;
    }

    @Override // defpackage.fyb
    public final /* bridge */ /* synthetic */ Object zza(IBinder iBinder) throws GoogleAuthException {
        Bundle bundleZzd = zze.zzb(iBinder).zzd(this.b, this.c);
        zzl.d(bundleZzd);
        String string = bundleZzd.getString("Error");
        if (bundleZzd.getBoolean("booleanResult")) {
            return null;
        }
        throw new GoogleAuthException(string);
    }
}
