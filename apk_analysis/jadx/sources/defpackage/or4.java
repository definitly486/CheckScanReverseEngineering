package defpackage;

import com.google.android.gms.internal.measurement.zzaic;
import com.google.android.gms.internal.measurement.zzajd;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class or4 implements rxa {
    public static final /* synthetic */ or4 c = new or4(2);
    public static final /* synthetic */ or4 d = new or4(3);
    public final /* synthetic */ int b;

    public /* synthetic */ or4(int i) {
        this.b = i;
    }

    public static final List a(List list, int i, int i2) {
        list.getClass();
        int size = list.size();
        if (i2 > size) {
            i2 = size;
        }
        return list.subList(i, i2);
    }

    public static final a46 b(Integer num, Integer num2, Integer num3, hs hsVar, String str, boolean z) {
        int iIntValue;
        kx2 kx2Var;
        hsVar.getClass();
        str.getClass();
        int iIntValue2 = num.intValue() + (z ? 1 : 0);
        if (num2 != null) {
            iIntValue = num2.intValue();
            if (z) {
                iIntValue++;
            }
        } else {
            iIntValue = Integer.MAX_VALUE;
        }
        int iIntValue3 = num3 != null ? num3.intValue() : 0;
        int iMin = Math.min(iIntValue, iIntValue3);
        if (iIntValue2 >= iMin) {
            return c(z, hsVar, str, iIntValue2, iIntValue);
        }
        a46 a46VarC = c(z, hsVar, str, iIntValue2, iIntValue2);
        while (true) {
            kx2Var = kx2.b;
            if (iIntValue2 >= iMin) {
                break;
            }
            iIntValue2++;
            a46VarC = new a46(kx2Var, u96.i(c(z, hsVar, str, iIntValue2, iIntValue2), xs7.a(u96.i(new a46(u96.h(new w86(" ")), kx2Var), a46VarC))));
        }
        if (iIntValue3 > iIntValue) {
            return xs7.a(u96.i(new a46(u96.h(new w86(ra8.x(iIntValue3 - iIntValue, " "))), kx2Var), a46VarC));
        }
        return iIntValue3 == iIntValue ? a46VarC : new a46(kx2Var, u96.i(c(z, hsVar, str, iIntValue3 + 1, iIntValue), a46VarC));
    }

    public static final a46 c(boolean z, hs hsVar, String str, int i, int i2) {
        if (i2 < (z ? 1 : 0) + 1) {
            ah.f("Check failed.");
            return null;
        }
        ar4 ar4VarE = u96.e();
        if (z) {
            ar4VarE.add(new w86("-"));
        }
        ar4VarE.add(new hq5(u96.h(new k79(Integer.valueOf(i - (z ? 1 : 0)), Integer.valueOf(i2 - (z ? 1 : 0)), hsVar, str, z))));
        return new a46(u96.d(ar4VarE), kx2.b);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 2:
                List list = zzfy.a;
                return Long.valueOf(zzaic.zzb());
            default:
                List list2 = zzfy.a;
                return Boolean.valueOf(zzajd.zza());
        }
    }
}
