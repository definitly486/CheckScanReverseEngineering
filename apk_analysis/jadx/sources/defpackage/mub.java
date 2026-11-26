package defpackage;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public abstract class mub extends zzw {
    public final int a;

    public mub(byte[] bArr) {
        Preconditions.checkArgument(bArr.length == 25);
        this.a = Arrays.hashCode(bArr);
    }

    public final boolean equals(Object obj) {
        IObjectWrapper iObjectWrapperZzd;
        if (!(obj instanceof zzx)) {
            return false;
        }
        try {
            zzx zzxVar = (zzx) obj;
            if (zzxVar.zze() == this.a && (iObjectWrapperZzd = zzxVar.zzd()) != null) {
                return Arrays.equals(g(), (byte[]) ObjectWrapper.unwrap(iObjectWrapperZzd));
            }
            return false;
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public abstract byte[] g();

    public final int hashCode() {
        return this.a;
    }

    @Override // com.google.android.gms.common.internal.zzx
    public final IObjectWrapper zzd() {
        return ObjectWrapper.wrap(g());
    }

    @Override // com.google.android.gms.common.internal.zzx
    public final int zze() {
        return this.a;
    }
}
