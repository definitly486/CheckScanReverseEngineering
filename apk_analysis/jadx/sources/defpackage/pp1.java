package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzaht;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class pp1 implements rxa {
    public static final /* synthetic */ pp1 c = new pp1(1);
    public static final /* synthetic */ pp1 d = new pp1(2);
    public final /* synthetic */ int b;

    public /* synthetic */ pp1(int i) {
        this.b = i;
    }

    public static int a(Comparable comparable, Comparable comparable2) {
        if (comparable == comparable2) {
            return 0;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static int b(int i, int... iArr) {
        for (int i2 : iArr) {
            i = Math.max(i, i2);
        }
        return i;
    }

    public static Comparable c(Comparable comparable, Comparable comparable2) {
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2) >= 0 ? comparable : comparable2;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 1:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzH());
            default:
                return new Boolean(zzaht.zza());
        }
    }
}
