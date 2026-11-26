package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzagv;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.stats.zzd;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class nu6 implements zzd, rxa {
    public static final nu6 c = new nu6(0);
    public static final /* synthetic */ nu6 d = new nu6(3);
    public static final /* synthetic */ nu6 e = new nu6(4);
    public final /* synthetic */ int b;

    public /* synthetic */ nu6(int i) {
        this.b = i;
    }

    public static int a(int i) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i) * (-862048943)), 15)) * 461845907);
    }

    public static int b(Object obj) {
        return (int) (((long) Integer.rotateLeft((int) (((long) (obj == null ? 0 : obj.hashCode())) * (-862048943)), 15)) * 461845907);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 3:
                List list = zzfy.a;
                return Integer.valueOf((int) zzags.zzd());
            default:
                List list2 = zzfy.a;
                return Integer.valueOf((int) zzagv.zza());
        }
    }
}
