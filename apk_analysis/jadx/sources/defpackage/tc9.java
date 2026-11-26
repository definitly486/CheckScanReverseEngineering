package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.common.base.VerifyException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class tc9 implements rxa {
    public static final /* synthetic */ tc9 b = new tc9();

    public static void a(String str, boolean z, Object obj) {
        if (!z) {
            throw new VerifyException(ma8.a(str, obj));
        }
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return zzags.zzay();
    }
}
