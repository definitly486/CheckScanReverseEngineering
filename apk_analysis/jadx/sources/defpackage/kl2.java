package defpackage;

import android.location.Location;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.tracing.Trace;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class kl2 implements Continuation {
    public final Object b;

    public kl2() {
        this.b = new zm5(gp3.h);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0018  */
    /* JADX WARN: Code duplicated, block: B:12:0x0019 A[Catch: ChecksumException -> 0x0074, FormatException -> 0x0076, TryCatch #3 {ChecksumException -> 0x0074, FormatException -> 0x0076, blocks: (B:9:0x0013, B:25:0x003c, B:26:0x0049, B:28:0x004d, B:30:0x0052, B:32:0x005c, B:33:0x0062, B:35:0x0067, B:12:0x0019, B:16:0x0020, B:20:0x002d, B:22:0x0033, B:23:0x0036, B:24:0x0039, B:41:0x0078, B:42:0x007d), top: B:50:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x004d A[Catch: ChecksumException -> 0x0074, FormatException -> 0x0076, TryCatch #3 {ChecksumException -> 0x0074, FormatException -> 0x0076, blocks: (B:9:0x0013, B:25:0x003c, B:26:0x0049, B:28:0x004d, B:30:0x0052, B:32:0x005c, B:33:0x0062, B:35:0x0067, B:12:0x0019, B:16:0x0020, B:20:0x002d, B:22:0x0033, B:23:0x0036, B:24:0x0039, B:41:0x0078, B:42:0x007d), top: B:50:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0052 A[Catch: ChecksumException -> 0x0074, FormatException -> 0x0076, TryCatch #3 {ChecksumException -> 0x0074, FormatException -> 0x0076, blocks: (B:9:0x0013, B:25:0x003c, B:26:0x0049, B:28:0x004d, B:30:0x0052, B:32:0x005c, B:33:0x0062, B:35:0x0067, B:12:0x0019, B:16:0x0020, B:20:0x002d, B:22:0x0033, B:23:0x0036, B:24:0x0039, B:41:0x0078, B:42:0x007d), top: B:50:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x005c A[Catch: ChecksumException -> 0x0074, FormatException -> 0x0076, TryCatch #3 {ChecksumException -> 0x0074, FormatException -> 0x0076, blocks: (B:9:0x0013, B:25:0x003c, B:26:0x0049, B:28:0x004d, B:30:0x0052, B:32:0x005c, B:33:0x0062, B:35:0x0067, B:12:0x0019, B:16:0x0020, B:20:0x002d, B:22:0x0033, B:23:0x0036, B:24:0x0039, B:41:0x0078, B:42:0x007d), top: B:50:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0080 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x0082  */
    /* JADX WARN: Code duplicated, block: B:46:0x0083  */
    /* JADX WARN: Code duplicated, block: B:47:0x0084  */
    /* JADX WARN: Code duplicated, block: B:54:0x0062 A[SYNTHETIC] */
    public vd2 a(qi0 qi0Var, Map map) throws Throwable {
        ChecksumException checksumException;
        si3 si3Var;
        int i;
        byte b;
        int i2;
        int i3 = qi0Var.c;
        ri0 ri0Var = new ri0(qi0Var);
        try {
            return b(ri0Var, map);
        } catch (ChecksumException e) {
            checksumException = e;
            e = null;
            try {
                si3Var = ri0Var.c;
                i = 0;
                if (si3Var != null) {
                    b = si3Var.b;
                    if (b >= 0 || b > 7) {
                        throw new IllegalArgumentException();
                    }
                    u82 u82Var = u82.a[b];
                    u82Var.getClass();
                    for (int i4 = 0; i4 < i3; i4++) {
                        for (int i5 = 0; i5 < i3; i5++) {
                            if (u82Var.a(i4, i5)) {
                                qi0Var.b(i5, i4);
                            }
                        }
                    }
                }
                ri0Var.b = null;
                ri0Var.c = null;
                ri0Var.d = true;
                ri0Var.c();
                ri0Var.b();
                while (i < qi0Var.b) {
                    int i6 = i + 1;
                    for (i2 = i6; i2 < i3; i2++) {
                        if (qi0Var.c(i, i2) != qi0Var.c(i2, i)) {
                            qi0Var.b(i2, i);
                            qi0Var.b(i, i2);
                        }
                    }
                    i = i6;
                }
                vd2 vd2VarB = b(ri0Var, map);
                vd2VarB.d = new m00(2);
                return vd2VarB;
            } catch (ChecksumException e2) {
                e = e2;
                if (e == null) {
                    throw e;
                }
                if (checksumException != null) {
                    throw checksumException;
                }
                throw e;
            } catch (FormatException e3) {
                e = e3;
                if (e == null) {
                    throw e;
                }
                if (checksumException != null) {
                    throw checksumException;
                }
                throw e;
            }
        } catch (FormatException e4) {
            e = e4;
            checksumException = null;
            si3Var = ri0Var.c;
            i = 0;
            if (si3Var != null) {
                b = si3Var.b;
                if (b >= 0) {
                }
                throw new IllegalArgumentException();
            }
            ri0Var.b = null;
            ri0Var.c = null;
            ri0Var.d = true;
            ri0Var.c();
            ri0Var.b();
            while (i < qi0Var.b) {
                int i7 = i + 1;
                while (i2 < i3) {
                    if (qi0Var.c(i, i2) != qi0Var.c(i2, i)) {
                        qi0Var.b(i2, i);
                        qi0Var.b(i, i2);
                    }
                }
                i = i7;
            }
            vd2 vd2VarB2 = b(ri0Var, map);
            vd2VarB2.d = new m00(2);
            return vd2VarB2;
        }
    }

    public vd2 b(ri0 ri0Var, Map map) throws ChecksumException, FormatException {
        int iB;
        ic5 ic5Var;
        ic5 ic5Var2;
        int iB2;
        uc9 uc9VarC = ri0Var.c();
        r03 r03Var = ri0Var.b().a;
        si3 si3VarB = ri0Var.b();
        uc9 uc9VarC2 = ri0Var.c();
        byte b = si3VarB.b;
        if (b < 0 || b > 7) {
            mi2.b();
            return null;
        }
        u82 u82Var = u82.a[b];
        qi0 qi0Var = ri0Var.a;
        int i = qi0Var.c;
        u82Var.getClass();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                if (u82Var.a(i3, i4)) {
                    qi0Var.b(i4, i3);
                }
            }
        }
        int i5 = uc9VarC2.a * 4;
        int i6 = i5 + 17;
        int i7 = uc9VarC2.d;
        qi0 qi0Var2 = new qi0(i6, i6);
        qi0Var2.e(0, 0, 9, 9);
        int i8 = i5 + 9;
        qi0Var2.e(i8, 0, 8, 9);
        qi0Var2.e(0, i8, 9, 8);
        int[] iArr = uc9VarC2.b;
        int length = iArr.length;
        int i9 = 0;
        while (i9 < length) {
            int i10 = iArr[i9] - 2;
            for (int i11 = i2; i11 < length; i11++) {
                if ((i9 != 0 || (i11 != 0 && i11 != length - 1)) && (i9 != length - 1 || i11 != 0)) {
                    qi0Var2.e(iArr[i11] - 2, i10, 5, 5);
                }
            }
            i9++;
            i2 = 0;
        }
        int i12 = 2;
        int i13 = 6;
        int i14 = 1;
        qi0Var2.e(6, 9, 1, i5);
        qi0Var2.e(9, 6, i5, 1);
        if (uc9VarC2.a > 6) {
            int i15 = i5 + 6;
            qi0Var2.e(i15, 0, 3, 6);
            qi0Var2.e(0, i15, 6, 3);
        }
        byte[] bArr = new byte[i7];
        int i16 = i - 1;
        int i17 = i16;
        boolean z = true;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        while (i17 > 0) {
            if (i17 == i13) {
                i17--;
            }
            int i21 = 0;
            while (i21 < i) {
                int i22 = z ? i16 - i21 : i21;
                int i23 = i14;
                int i24 = 0;
                for (int i25 = i12; i24 < i25; i25 = 2) {
                    int i26 = i17 - i24;
                    if (!qi0Var2.c(i26, i22)) {
                        i19++;
                        i20 <<= 1;
                        if (qi0Var.c(i26, i22)) {
                            i20 |= 1;
                        }
                        if (i19 == 8) {
                            bArr[i18] = (byte) i20;
                            i18++;
                            i19 = 0;
                            i20 = 0;
                        }
                    }
                    i24++;
                }
                i21++;
                i14 = i23;
                i12 = 2;
            }
            z = !z;
            i17 -= 2;
            i13 = 6;
            i12 = 2;
        }
        int i27 = i14;
        if (i18 != i7) {
            throw FormatException.a();
        }
        if (i7 != uc9VarC.d) {
            mi2.b();
            return null;
        }
        uc9.b bVar = uc9VarC.c[r03Var.ordinal()];
        uc9.a[] aVarArr = bVar.b;
        int i28 = bVar.a;
        int i29 = 0;
        for (uc9.a aVar : aVarArr) {
            i29 += aVar.a;
        }
        n82[] n82VarArr = new n82[i29];
        int i30 = 0;
        for (uc9.a aVar2 : aVarArr) {
            int i31 = 0;
            while (i31 < aVar2.a) {
                int i32 = aVar2.b;
                n82VarArr[i30] = new n82(i32, new byte[i28 + i32]);
                i31++;
                i30++;
            }
        }
        int length2 = n82VarArr[0].b.length;
        int i33 = i29 - 1;
        while (i33 >= 0 && n82VarArr[i33].b.length != length2) {
            i33--;
        }
        int i34 = i33 + 1;
        int i35 = length2 - i28;
        int i36 = 0;
        int i37 = 0;
        while (i36 < i35) {
            int i38 = i37;
            int i39 = 0;
            while (i39 < i30) {
                n82VarArr[i39].b[i36] = bArr[i38];
                i39++;
                i38++;
            }
            i36++;
            i37 = i38;
        }
        int i40 = i34;
        while (i40 < i30) {
            n82VarArr[i40].b[i35] = bArr[i37];
            i40++;
            i37++;
        }
        int length3 = n82VarArr[0].b.length;
        while (i35 < length3) {
            int i41 = i37;
            int i42 = 0;
            while (i42 < i30) {
                n82VarArr[i42].b[i42 < i34 ? i35 : i35 + 1] = bArr[i41];
                i42++;
                i41++;
            }
            i35++;
            i37 = i41;
        }
        int i43 = 0;
        for (int i44 = 0; i44 < i29; i44++) {
            i43 += n82VarArr[i44].a;
        }
        byte[] bArr2 = new byte[i43];
        int i45 = 0;
        for (int i46 = 0; i46 < i29; i46++) {
            n82 n82Var = n82VarArr[i46];
            byte[] bArr3 = n82Var.b;
            int i47 = n82Var.a;
            int length4 = bArr3.length;
            int[] iArr2 = new int[length4];
            for (int i48 = 0; i48 < length4; i48++) {
                iArr2[i48] = bArr3[i48] & 255;
            }
            try {
                ((zm5) this.b).a(bArr3.length - i47, iArr2);
                for (int i49 = 0; i49 < i47; i49++) {
                    bArr3[i49] = (byte) iArr2[i49];
                }
                int i50 = 0;
                while (i50 < i47) {
                    bArr2[i45] = bArr3[i50];
                    i50++;
                    i45++;
                }
            } catch (ReedSolomonException unused) {
                throw ChecksumException.a();
            }
        }
        si0 si0Var = new si0();
        si0Var.c = bArr2;
        StringBuilder sb = new StringBuilder(50);
        ArrayList arrayList = new ArrayList(i27);
        int iB3 = -1;
        int iB4 = -1;
        fa1 fa1VarA = null;
        boolean z2 = false;
        do {
            try {
                if (si0Var.a() < 4 || (iB = si0Var.b(4)) == 0) {
                    ic5Var = ic5.TERMINATOR;
                } else if (iB == 1) {
                    ic5Var = ic5.NUMERIC;
                } else if (iB == 2) {
                    ic5Var = ic5.ALPHANUMERIC;
                } else if (iB == 3) {
                    ic5Var = ic5.STRUCTURED_APPEND;
                } else if (iB == 4) {
                    ic5Var = ic5.BYTE;
                } else if (iB == 5) {
                    ic5Var = ic5.FNC1_FIRST_POSITION;
                } else if (iB == 7) {
                    ic5Var = ic5.ECI;
                } else if (iB == 8) {
                    ic5Var = ic5.KANJI;
                } else if (iB == 9) {
                    ic5Var = ic5.FNC1_SECOND_POSITION;
                } else {
                    if (iB != 13) {
                        throw new IllegalArgumentException();
                    }
                    ic5Var = ic5.HANZI;
                }
                ic5Var2 = ic5.TERMINATOR;
                if (ic5Var != ic5Var2) {
                    if (ic5Var == ic5.FNC1_FIRST_POSITION || ic5Var == ic5.FNC1_SECOND_POSITION) {
                        ic5Var = ic5Var;
                        ic5Var2 = ic5Var2;
                        z2 = true;
                    } else if (ic5Var == ic5.STRUCTURED_APPEND) {
                        if (si0Var.a() < 16) {
                            throw FormatException.a();
                        }
                        iB3 = si0Var.b(8);
                        iB4 = si0Var.b(8);
                    } else if (ic5Var == ic5.ECI) {
                        int iB5 = si0Var.b(8);
                        if ((iB5 & 128) == 0) {
                            iB2 = iB5 & Trace.MAX_TRACE_LABEL_LENGTH;
                        } else if ((iB5 & PsExtractor.AUDIO_STREAM) == 128) {
                            iB2 = ((iB5 & 63) << 8) | si0Var.b(8);
                        } else {
                            if ((iB5 & 224) != 192) {
                                throw FormatException.a();
                            }
                            iB2 = ((iB5 & 31) << 16) | si0Var.b(16);
                        }
                        fa1VarA = fa1.a(iB2);
                        if (fa1VarA == null) {
                            throw FormatException.a();
                        }
                    } else {
                        if (ic5Var == ic5.HANZI) {
                            int iB6 = si0Var.b(4);
                            int iB7 = si0Var.b(ic5Var.d(uc9VarC));
                            if (iB6 == 1) {
                                sd2.c(si0Var, sb, iB7);
                            }
                        } else {
                            int iB8 = si0Var.b(ic5Var.d(uc9VarC));
                            if (ic5Var == ic5.NUMERIC) {
                                sd2.e(si0Var, sb, iB8);
                            } else if (ic5Var == ic5.ALPHANUMERIC) {
                                sd2.a(si0Var, sb, iB8, z2);
                            } else if (ic5Var == ic5.BYTE) {
                                ic5Var = ic5Var;
                                ic5Var2 = ic5Var2;
                                sd2.b(si0Var, sb, iB8, fa1VarA, arrayList, map);
                            } else {
                                ic5Var = ic5Var;
                                ic5Var2 = ic5Var2;
                                if (ic5Var != ic5.KANJI) {
                                    throw FormatException.a();
                                }
                                sd2.d(si0Var, sb, iB8);
                            }
                        }
                        ic5Var = ic5Var;
                        ic5Var2 = ic5Var2;
                    }
                }
            } catch (IllegalArgumentException unused2) {
                throw FormatException.a();
            }
        } while (ic5Var != ic5Var2);
        return new vd2(bArr2, sb.toString(), arrayList.isEmpty() ? null : arrayList, r03Var.toString(), iB3, iB4);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* synthetic */ Object then(Task task) {
        Api.ClientKey clientKey = zzcg.a;
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.b;
        if (task.isSuccessful()) {
            taskCompletionSource.trySetResult((Location) task.getResult());
            return null;
        }
        Exception exception = task.getException();
        Objects.requireNonNull(exception);
        taskCompletionSource.trySetException(exception);
        return null;
    }

    public /* synthetic */ kl2(Object obj) {
        this.b = obj;
    }
}
