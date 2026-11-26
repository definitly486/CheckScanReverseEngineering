package defpackage;

import com.google.android.gms.internal.measurement.zzaic;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ea6 implements rxa, SuccessContinuation {
    public static final /* synthetic */ ea6 b = new ea6();

    public static final xl2 a(k1 k1Var, du1 du1Var, String str) {
        xl2 xl2VarA = k1Var.a(du1Var, str);
        if (xl2VarA != null) {
            return xl2VarA;
        }
        l1.g(k1Var.c(), str);
        throw null;
    }

    public static final xp7 b(k1 k1Var, ux2 ux2Var, Object obj) {
        obj.getClass();
        xp7 xp7VarB = k1Var.b(ux2Var, obj);
        if (xp7VarB != null) {
            return xp7VarB;
        }
        zk1 zk1VarA = x07.a(obj.getClass());
        ne4 ne4VarC = k1Var.c();
        ne4VarC.getClass();
        String strF = zk1VarA.f();
        if (strF == null) {
            strF = String.valueOf(zk1VarA);
        }
        l1.g(ne4VarC, strF);
        throw null;
    }

    public static final void c(long j, byte[] bArr, int i, int i2, int i3) {
        int i4 = 7 - i2;
        int i5 = 8 - i3;
        if (i5 > i4) {
            return;
        }
        while (true) {
            int i6 = wv3.a[(int) ((j >> (i4 << 3)) & 255)];
            int i7 = i + 1;
            bArr[i] = (byte) (i6 >> 8);
            i += 2;
            bArr[i7] = (byte) i6;
            if (i4 == i5) {
                return;
            } else {
                i4--;
            }
        }
    }

    public static final long d(int i, byte[] bArr) {
        return (((long) bArr[i + 7]) & 255) | ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
    }

    public static final void e(int i, String str, String str2) {
        StringBuilder sbA = mz0.a(i, "Expected ", str2, " at index ", ", but was '");
        sbA.append(str.charAt(i));
        sbA.append('\'');
        throw new IllegalArgumentException(sbA.toString());
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        return Tasks.forResult((List) obj);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Double.valueOf(zzaic.zzc());
    }
}
