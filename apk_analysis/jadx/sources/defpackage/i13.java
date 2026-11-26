package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class i13 implements rxa {
    public static final /* synthetic */ i13 c = new i13(3);
    public static final /* synthetic */ i13 d = new i13(4);
    public final /* synthetic */ int b;

    public /* synthetic */ i13(int i) {
        this.b = i;
    }

    public static final String a(Throwable th) {
        th.getClass();
        String localizedMessage = th.getLocalizedMessage();
        if (localizedMessage != null) {
            return localizedMessage;
        }
        String message = th.getMessage();
        return message == null ? "unknown error" : message;
    }

    public static boolean b(String str) {
        return str == null || str.isEmpty();
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 3:
                List list = zzfy.a;
                return Integer.valueOf((int) zzags.zzan());
            default:
                List list2 = zzfy.a;
                return Integer.valueOf((int) zzags.zzY());
        }
    }
}
