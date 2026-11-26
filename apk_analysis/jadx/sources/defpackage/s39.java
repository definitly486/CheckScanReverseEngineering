package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import java.math.BigDecimal;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class s39 implements rxa {
    public static final Object c = new Object();
    public static final /* synthetic */ s39 d = new s39(5);
    public static final /* synthetic */ s39 e = new s39(6);
    public final /* synthetic */ int b;

    public s39(m00 m00Var) {
        this.b = 4;
    }

    public static void a(String str) {
        if (str.length() <= 10000) {
            return;
        }
        throw new NumberFormatException("Number string too large: " + str.substring(0, 30) + "...");
    }

    public static final hd3 b(hd3 hd3Var, long j) {
        if (j >= 0) {
            return j == 0 ? hd3Var : new md3(new wd3(new vd3(j), hd3Var, null));
        }
        fg.c("Debounce timeout should not be negative");
        return null;
    }

    public static BigDecimal c(String str) {
        a(str);
        BigDecimal bigDecimal = new BigDecimal(str);
        if (Math.abs(bigDecimal.scale()) < 10000) {
            return bigDecimal;
        }
        throw new NumberFormatException("Number has unsupported scale: ".concat(str));
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 5:
                List list = zzfy.a;
                return Integer.valueOf((int) zzags.zzas());
            default:
                List list2 = zzfy.a;
                return Integer.valueOf((int) zzags.zzq());
        }
    }

    public /* synthetic */ s39(int i) {
        this.b = i;
    }
}
