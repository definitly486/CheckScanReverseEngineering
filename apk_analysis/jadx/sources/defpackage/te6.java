package defpackage;

import com.google.android.gms.internal.measurement.zzaic;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class te6 implements rxa {
    public static final /* synthetic */ te6 b = new te6();

    public static void a(Object obj, Class cls) {
        if (obj != null) {
            return;
        }
        g2.d(cls.getCanonicalName());
    }

    public static void b(Object obj) {
        if (obj != null) {
            return;
        }
        o2.d("Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Boolean.valueOf(zzaic.zza());
    }
}
