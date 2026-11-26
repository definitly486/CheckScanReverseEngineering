package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import java.security.MessageDigest;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g1c implements Callable {
    public final /* synthetic */ boolean b;
    public final /* synthetic */ String c;
    public final /* synthetic */ yxb d;

    public /* synthetic */ g1c(boolean z, String str, yxb yxbVar) {
        this.b = z;
        this.c = str;
        this.d = yxbVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        boolean z = this.b;
        String str = this.c;
        yxb yxbVar = this.d;
        String str2 = (z || !u8c.d(str, yxbVar, true, false).a) ? "not allowed" : "debug cert rejected";
        MessageDigest messageDigestZza = AndroidUtilsLight.zza("SHA-256");
        Preconditions.checkNotNull(messageDigestZza);
        StringBuilder sbD = ad2.d(str2, ": pkg=", str, ", sha256=", Hex.bytesToStringLowercase(messageDigestZza.digest(yxbVar.b)));
        sbD.append(", atk=");
        sbD.append(z);
        sbD.append(", ver=12451000.false");
        return sbD.toString();
    }
}
