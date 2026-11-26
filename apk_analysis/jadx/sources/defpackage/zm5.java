package defpackage;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.measurement.zzkk;
import com.google.android.gms.internal.measurement.zzkt;
import com.google.android.gms.internal.measurement.zzku;
import com.google.android.gms.internal.measurement.zzme;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zm5 implements RemoteCall, Continuation {
    public Object b;

    public /* synthetic */ zm5(Object obj) {
        this.b = obj;
    }

    public void a(int i, int[] iArr) throws ReedSolomonException {
        int[] iArr2;
        int[] iArr3;
        int i2;
        gp3 gp3Var = (gp3) this.b;
        if (iArr.length == 0) {
            mi2.b();
            return;
        }
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            iArr2 = iArr;
        } else {
            int i3 = 1;
            while (i3 < length && iArr[i3] == 0) {
                i3++;
            }
            if (i3 == length) {
                iArr2 = new int[]{0};
            } else {
                int i4 = length - i3;
                int[] iArr4 = new int[i4];
                System.arraycopy(iArr, i3, iArr4, 0, i4);
                iArr2 = iArr4;
            }
        }
        int[] iArr5 = new int[i];
        boolean z = true;
        for (int i5 = 0; i5 < i; i5++) {
            int i6 = gp3Var.a[gp3Var.g + i5];
            if (i6 == 0) {
                i2 = iArr2[iArr2.length - 1];
            } else {
                int length2 = iArr2.length;
                if (i6 == 1) {
                    int i7 = 0;
                    for (int i8 : iArr2) {
                        gp3 gp3Var2 = gp3.h;
                        i7 ^= i8;
                    }
                    i2 = i7;
                } else {
                    int iC = iArr2[0];
                    for (int i9 = 1; i9 < length2; i9++) {
                        iC = gp3Var.c(i6, iC) ^ iArr2[i9];
                    }
                    i2 = iC;
                }
            }
            iArr5[(i - 1) - i5] = i2;
            if (i2 != 0) {
                z = false;
            }
        }
        if (z) {
            return;
        }
        hp3 hp3Var = new hp3(gp3Var, iArr5);
        hp3 hp3VarA = gp3Var.a(i, 1);
        hp3 hp3Var2 = gp3Var.c;
        if (hp3VarA.d() >= hp3Var.d()) {
            hp3VarA = hp3Var;
            hp3Var = hp3VarA;
        }
        hp3 hp3Var3 = gp3Var.d;
        hp3 hp3Var4 = hp3VarA;
        hp3 hp3VarA2 = hp3Var;
        hp3 hp3Var5 = hp3Var4;
        hp3 hp3Var6 = hp3Var2;
        while (hp3Var5.d() >= i / 2) {
            if (hp3Var5.e()) {
                throw new ReedSolomonException("r_{i-1} was zero");
            }
            int iB = gp3Var.b(hp3Var5.c(hp3Var5.d()));
            hp3 hp3VarA3 = hp3Var2;
            while (hp3VarA2.d() >= hp3Var5.d() && !hp3VarA2.e()) {
                int iD = hp3VarA2.d() - hp3Var5.d();
                int iC2 = gp3Var.c(hp3VarA2.c(hp3VarA2.d()), iB);
                hp3VarA3 = hp3VarA3.a(gp3Var.a(iD, iC2));
                hp3VarA2 = hp3VarA2.a(hp3Var5.h(iD, iC2));
            }
            hp3 hp3VarA4 = hp3VarA3.g(hp3Var3).a(hp3Var6);
            if (hp3VarA2.d() >= hp3Var5.d()) {
                ah.f("Division algorithm failed to reduce polynomial?");
                return;
            }
            hp3 hp3Var7 = hp3VarA2;
            hp3VarA2 = hp3Var5;
            hp3Var5 = hp3Var7;
            hp3Var6 = hp3Var3;
            hp3Var3 = hp3VarA4;
        }
        int iC3 = hp3Var3.c(0);
        if (iC3 == 0) {
            throw new ReedSolomonException("sigmaTilde(0) was zero");
        }
        int iB2 = gp3Var.b(iC3);
        hp3[] hp3VarArr = {hp3Var3.f(iB2), hp3Var5.f(iB2)};
        hp3 hp3Var8 = hp3VarArr[0];
        hp3 hp3Var9 = hp3VarArr[1];
        int iD2 = hp3Var8.d();
        if (iD2 == 1) {
            iArr3 = new int[]{hp3Var8.c(1)};
        } else {
            int[] iArr6 = new int[iD2];
            int i10 = 0;
            for (int i11 = 1; i11 < gp3Var.e && i10 < iD2; i11++) {
                if (hp3Var8.b(i11) == 0) {
                    iArr6[i10] = gp3Var.b(i11);
                    i10++;
                }
            }
            if (i10 != iD2) {
                throw new ReedSolomonException("Error locator degree does not match number of roots");
            }
            iArr3 = iArr6;
        }
        int length3 = iArr3.length;
        int[] iArr7 = new int[length3];
        for (int i12 = 0; i12 < length3; i12++) {
            int iB3 = gp3Var.b(iArr3[i12]);
            int iC4 = 1;
            for (int i13 = 0; i13 < length3; i13++) {
                if (i12 != i13) {
                    int iC5 = gp3Var.c(iArr3[i13], iB3);
                    iC4 = gp3Var.c(iC4, (iC5 & 1) == 0 ? iC5 | 1 : iC5 & (-2));
                }
            }
            int iC6 = gp3Var.c(hp3Var9.b(iB3), gp3Var.b(iC4));
            iArr7[i12] = iC6;
            if (gp3Var.g != 0) {
                iArr7[i12] = gp3Var.c(iC6, iB3);
            }
        }
        for (int i14 = 0; i14 < iArr3.length; i14++) {
            int length4 = iArr.length - 1;
            int i15 = iArr3[i14];
            if (i15 == 0) {
                mi2.b();
                return;
            }
            int i16 = length4 - gp3Var.b[i15];
            if (i16 < 0) {
                throw new ReedSolomonException("Bad error location");
            }
            iArr[i16] = iArr[i16] ^ iArr7[i14];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        int i = zzkk.zza;
        ((zzkt) ((zzku) obj).getService()).zzh(new pzb((TaskCompletionSource) obj2), ((zzme) this.b).zzcd());
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* bridge */ /* synthetic */ Object then(Task task) {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((Collection) this.b).iterator();
        while (it.hasNext()) {
            arrayList.add(((Task) it.next()).getResult());
        }
        return arrayList;
    }
}
