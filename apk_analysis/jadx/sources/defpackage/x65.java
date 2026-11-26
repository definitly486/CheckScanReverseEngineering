package defpackage;

import android.os.Bundle;
import android.util.Log;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.zxing.WriterException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class x65 implements u39, Continuation, rxa {
    public static final int[][] c = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    public static final int[][] d = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};
    public static final int[][] e = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, -1}, new int[]{6, 30, 56, 82, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 134, -1}, new int[]{6, 34, 60, 86, 112, TsExtractor.TS_STREAM_TYPE_DTS, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, WebmConstants.MkvEbmlElement.FLAG_INTERLACED}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, TsExtractor.TS_STREAM_TYPE_DTS, WebmConstants.MkvEbmlElement.BLOCK_MORE}, new int[]{6, 30, 58, 86, 114, 142, 170}};
    public static final int[][] f = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};
    public static final /* synthetic */ x65 g = new x65(6);
    public static final /* synthetic */ x65 h = new x65(7);
    public static final /* synthetic */ x65 i = new x65(8);
    public static final /* synthetic */ x65 j = new x65(9);
    public final /* synthetic */ int b;

    public /* synthetic */ x65(int i2) {
        this.b = i2;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x021b  */
    public static void b(pi0 pi0Var, r03 r03Var, uc9 uc9Var, int i2, bx0 bx0Var) {
        int i3;
        int i4;
        int i5;
        int i6;
        boolean zE;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = uc9Var.a;
        int i12 = 0;
        while (true) {
            i3 = bx0Var.c;
            i4 = bx0Var.b;
            i5 = -1;
            if (i12 >= i3) {
                break;
            }
            for (int i13 = 0; i13 < i4; i13++) {
                bx0Var.a[i12][i13] = -1;
            }
            i12++;
        }
        int length = c[0].length;
        f(0, 0, bx0Var);
        int i14 = i4 - length;
        f(i14, 0, bx0Var);
        f(0, i14, bx0Var);
        e(0, 7, bx0Var);
        int i15 = i4 - 8;
        e(i15, 7, bx0Var);
        e(0, i15, bx0Var);
        g(7, 0, bx0Var);
        int i16 = i3 - 8;
        g(i16, 0, bx0Var);
        int i17 = i3 - 7;
        g(7, i17, bx0Var);
        if (bx0Var.a(8, i16) == 0) {
            throw new WriterException();
        }
        bx0Var.b(8, i16, 1);
        int i18 = 5;
        if (i11 < 2) {
            i6 = 0;
        } else {
            int[] iArr = e[i11 - 1];
            i6 = 0;
            int length2 = iArr.length;
            int i19 = 0;
            while (i19 < length2) {
                int i20 = 0;
                while (i20 < length2) {
                    int i21 = iArr[i19];
                    int i22 = iArr[i20];
                    if (i22 != i5 && i21 != i5 && i(bx0Var.a(i22, i21))) {
                        int i23 = i22 - 2;
                        int i24 = i21 - 2;
                        int i25 = 0;
                        while (i25 < i18) {
                            int i26 = length2;
                            int i27 = 0;
                            while (i27 < i18) {
                                int i28 = i27;
                                bx0Var.b(i23 + i27, i24 + i25, d[i25][i28]);
                                i27 = i28 + 1;
                                i24 = i24;
                                i18 = 5;
                            }
                            i25++;
                            length2 = i26;
                            i18 = 5;
                        }
                    }
                    i20++;
                    length2 = length2;
                    i5 = -1;
                    i18 = 5;
                }
                i19++;
                i5 = -1;
                i18 = 5;
            }
        }
        int i29 = 8;
        while (i29 < i15) {
            int i30 = i29 + 1;
            int i31 = i30 % 2;
            if (i(bx0Var.a(i29, 6))) {
                bx0Var.b(i29, 6, i31);
            }
            if (i(bx0Var.a(6, i29))) {
                bx0Var.b(6, i29, i31);
            }
            i29 = i30;
        }
        pi0 pi0Var2 = new pi0();
        if (i2 < 0 || i2 >= 8) {
            throw new WriterException("Invalid mask pattern");
        }
        int iD = (r03Var.d() << 3) | i2;
        pi0Var2.c(iD, 5);
        pi0Var2.c(c(iD, 1335), 10);
        pi0 pi0Var3 = new pi0();
        pi0Var3.c(21522, 15);
        if (pi0Var2.b.length != pi0Var3.b.length) {
            fg.c("Sizes don't match");
            return;
        }
        int i32 = i6;
        while (true) {
            int[] iArr2 = pi0Var2.b;
            if (i32 >= iArr2.length) {
                break;
            }
            iArr2[i32] = iArr2[i32] ^ pi0Var3.b[i32];
            i32++;
        }
        if (pi0Var2.c != 15) {
            throw new WriterException("should not happen but we got: " + pi0Var2.c);
        }
        int i33 = i6;
        while (true) {
            int i34 = pi0Var2.c;
            if (i33 >= i34) {
                break;
            }
            boolean zE2 = pi0Var2.e((i34 - 1) - i33);
            int[] iArr3 = f[i33];
            bx0Var.c(iArr3[i6], iArr3[1], zE2);
            if (i33 < 8) {
                bx0Var.c((i4 - i33) - 1, 8, zE2);
            } else {
                bx0Var.c(8, (i33 - 8) + i17, zE2);
            }
            i33++;
        }
        if (i11 >= 7) {
            pi0 pi0Var4 = new pi0();
            pi0Var4.c(i11, 6);
            pi0Var4.c(c(i11, 7973), 12);
            if (pi0Var4.c != 18) {
                throw new WriterException("should not happen but we got: " + pi0Var4.c);
            }
            int i35 = 17;
            for (int i36 = i6; i36 < 6; i36++) {
                for (int i37 = i6; i37 < 3; i37++) {
                    boolean zE3 = pi0Var4.e(i35);
                    i35--;
                    int i38 = (i3 - 11) + i37;
                    bx0Var.c(i36, i38, zE3);
                    bx0Var.c(i38, i36, zE3);
                }
            }
        }
        int i39 = i4 - 1;
        int i40 = i3 - 1;
        int i41 = i6;
        int i42 = -1;
        while (i39 > 0) {
            if (i39 == 6) {
                i39--;
            }
            while (i40 >= 0 && i40 < i3) {
                for (int i43 = i6; i43 < 2; i43++) {
                    int i44 = i39 - i43;
                    if (i(bx0Var.a(i44, i40))) {
                        if (i41 < pi0Var.c) {
                            zE = pi0Var.e(i41);
                            i41++;
                        } else {
                            zE = i6;
                        }
                        if (i2 != -1) {
                            switch (i2) {
                                case 0:
                                    i7 = i40 + i44;
                                    i8 = i7 & 1;
                                    if (i8 == 0) {
                                        zE = !zE;
                                    }
                                    break;
                                case 1:
                                    i8 = i40 & 1;
                                    if (i8 == 0) {
                                        zE = !zE;
                                    }
                                    break;
                                case 2:
                                    i8 = i44 % 3;
                                    if (i8 == 0) {
                                        zE = !zE;
                                    }
                                    break;
                                case 3:
                                    i8 = (i40 + i44) % 3;
                                    if (i8 == 0) {
                                        zE = !zE;
                                    }
                                    break;
                                case 4:
                                    i8 = ((i44 / 3) + (i40 / 2)) & 1;
                                    if (i8 == 0) {
                                        zE = !zE;
                                    }
                                    break;
                                case 5:
                                    int i45 = i40 * i44;
                                    i8 = (i45 % 3) + (i45 & 1);
                                    if (i8 == 0) {
                                        zE = !zE;
                                    }
                                    break;
                                case 6:
                                    int i46 = i40 * i44;
                                    i9 = i46 & 1;
                                    i10 = i46 % 3;
                                    i7 = i10 + i9;
                                    i8 = i7 & 1;
                                    if (i8 == 0) {
                                        zE = !zE;
                                    }
                                    break;
                                case 7:
                                    i10 = (i40 * i44) % 3;
                                    i9 = (i40 + i44) & 1;
                                    i7 = i10 + i9;
                                    i8 = i7 & 1;
                                    if (i8 == 0) {
                                        zE = !zE;
                                    }
                                    break;
                                default:
                                    fg.c(jh.b(i2, "Invalid mask pattern: "));
                                    return;
                            }
                        }
                        bx0Var.c(i44, i40, zE);
                    }
                }
                i40 += i42;
            }
            i42 = -i42;
            i40 += i42;
            i39 -= 2;
        }
        if (i41 == pi0Var.c) {
            return;
        }
        throw new WriterException("Not all bits consumed: " + i41 + '/' + pi0Var.c);
    }

    public static int c(int i2, int i3) {
        if (i3 == 0) {
            fg.c("0 polynomial");
            return 0;
        }
        int i4 = i3;
        int i5 = 0;
        while (i4 != 0) {
            i4 >>>= 1;
            i5++;
        }
        int i6 = i2 << (i5 - 1);
        while (true) {
            int i7 = i6;
            int i8 = 0;
            while (i7 != 0) {
                i7 >>>= 1;
                i8++;
            }
            if (i8 < i5) {
                return i6;
            }
            int i9 = i6;
            int i10 = 0;
            while (i9 != 0) {
                i9 >>>= 1;
                i10++;
            }
            i6 ^= i3 << (i10 - i5);
        }
    }

    public static Object d(int i2) {
        if (i2 < 2 || i2 > 1073741824 || Integer.highestOneBit(i2) != i2) {
            fg.c(jh.b(i2, "must be power of 2 between 2^1 and 2^30: "));
            return null;
        }
        if (i2 <= 256) {
            return new byte[i2];
        }
        return i2 <= 65536 ? new short[i2] : new int[i2];
    }

    public static void e(int i2, int i3, bx0 bx0Var) throws WriterException {
        for (int i4 = 0; i4 < 8; i4++) {
            int i5 = i2 + i4;
            if (!i(bx0Var.a(i5, i3))) {
                throw new WriterException();
            }
            bx0Var.b(i5, i3, 0);
        }
    }

    public static void f(int i2, int i3, bx0 bx0Var) {
        for (int i4 = 0; i4 < 7; i4++) {
            for (int i5 = 0; i5 < 7; i5++) {
                bx0Var.b(i2 + i5, i3 + i4, c[i4][i5]);
            }
        }
    }

    public static void g(int i2, int i3, bx0 bx0Var) throws WriterException {
        for (int i4 = 0; i4 < 7; i4++) {
            int i5 = i3 + i4;
            if (!i(bx0Var.a(i2, i5))) {
                throw new WriterException();
            }
            bx0Var.b(i2, i5, 0);
        }
    }

    public static LinkedHashMap h(de6 de6Var, List list, String str) {
        List<StackTraceElement> listJ0;
        Iterator it;
        boolean z;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        HashSet hashSet = new HashSet();
        long id = de6Var.b.getId();
        for (Throwable cause = de6Var.getCause(); cause != null && hashSet.add(cause); cause = cause.getCause()) {
            arrayList2.add(cause);
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Throwable th = (Throwable) it2.next();
            Package r4 = th.getClass().getPackage();
            String name = th.getClass().getName();
            if (r4 != null) {
                name = ra8.y(name, r4.getName() + '.', "");
            }
            String name2 = r4 != null ? r4.getName() : null;
            StackTraceElement[] stackTrace = th.getStackTrace();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            stackTrace.getClass();
            if (stackTrace.length == 0) {
                it = it2;
            } else {
                ArrayList arrayList3 = new ArrayList();
                if (stackTrace.length == 0) {
                    listJ0 = kx2.b;
                } else {
                    listJ0 = yr.j0(stackTrace);
                    Collections.reverse(listJ0);
                }
                for (StackTraceElement stackTraceElement : listJ0) {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put("module", stackTraceElement.getClassName());
                    Iterator it3 = it2;
                    linkedHashMap2.put("function", stackTraceElement.getMethodName());
                    linkedHashMap2.put("platform", "java");
                    if (str != null && str.length() != 0) {
                        linkedHashMap2.put("map_id", str);
                    }
                    if (stackTraceElement.getLineNumber() >= 0) {
                        linkedHashMap2.put("lineno", Integer.valueOf(stackTraceElement.getLineNumber()));
                    }
                    String fileName = stackTraceElement.getFileName();
                    if (fileName != null && fileName.length() > 0) {
                        linkedHashMap2.put("filename", fileName);
                    }
                    String className = stackTraceElement.getClassName();
                    className.getClass();
                    if (list.isEmpty()) {
                        z = true;
                        break;
                    }
                    Iterator it4 = list.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            z = false;
                            break;
                        }
                        if (ra8.C(className, (String) it4.next(), false)) {
                            z = true;
                            break;
                            break;
                        }
                    }
                    linkedHashMap2.put("in_app", Boolean.valueOf(z));
                    arrayList3.add(linkedHashMap2);
                    str = str;
                    it2 = it3;
                }
                it = it2;
                if (!arrayList3.isEmpty()) {
                    linkedHashMap.put("frames", arrayList3);
                    linkedHashMap.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "raw");
                }
            }
            LinkedHashMap linkedHashMapF = n05.f(new b36(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, name), new b36("mechanism", n05.e(new b36("handled", false), new b36("synthetic", Boolean.FALSE), new b36(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "UncaughtExceptionHandler"))), new b36("thread_id", Long.valueOf(id)));
            String message = th.getMessage();
            if (message != null && message.length() > 0) {
                linkedHashMapF.put("value", th.getMessage());
            }
            if (name2 != null && name2.length() > 0) {
                linkedHashMapF.put("module", name2);
            }
            if (!linkedHashMap.isEmpty()) {
                linkedHashMapF.put("stacktrace", linkedHashMap);
            }
            arrayList.add(linkedHashMapF);
            it2 = it;
        }
        LinkedHashMap linkedHashMapF2 = n05.f(new b36("$exception_level", "fatal"));
        if (!arrayList.isEmpty()) {
            linkedHashMapF2.put("$exception_list", arrayList);
        }
        return linkedHashMapF2;
    }

    public static boolean i(int i2) {
        return i2 == -1;
    }

    public static int j(int i2, int i3, int i4) {
        return (i2 & (~i4)) | (i3 & i4);
    }

    public static int l(Object obj, Object obj2, int i2, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int iG = eg9.g(obj);
        int i3 = iG & i2;
        int iM = m(i3, obj3);
        if (iM != 0) {
            int i4 = ~i2;
            int i5 = iG & i4;
            int i6 = -1;
            while (true) {
                int i7 = iM - 1;
                int i8 = iArr[i7];
                if ((i8 & i4) == i5 && Objects.equals(obj, objArr[i7]) && (objArr2 == null || Objects.equals(obj2, objArr2[i7]))) {
                    int i9 = i8 & i2;
                    if (i6 == -1) {
                        n(i3, i9, obj3);
                        return i7;
                    }
                    iArr[i6] = j(iArr[i6], i9, i2);
                    return i7;
                }
                int i10 = i8 & i2;
                if (i10 == 0) {
                    break;
                }
                i6 = i7;
                iM = i10;
            }
        }
        return -1;
    }

    public static int m(int i2, Object obj) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i2] & 255;
        }
        return obj instanceof short[] ? ((short[]) obj)[i2] & 65535 : ((int[]) obj)[i2];
    }

    public static void n(int i2, int i3, Object obj) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i2] = (byte) i3;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i2] = (short) i3;
        } else {
            ((int[]) obj)[i2] = i3;
        }
    }

    public sv5 a(int i2) {
        return new sv5(new bu0(), Math.min(1048576, ((i2 + 8191) / 8192) * 8192));
    }

    @Override // defpackage.u39
    public Object k(float f2, Float f3, Float f4) {
        float fFloatValue = f3.floatValue();
        return Float.valueOf(((f4.floatValue() - fFloatValue) * f2) + fFloatValue);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* synthetic */ Object then(Task task) throws IOException {
        if (task.isSuccessful()) {
            return (Bundle) task.getResult();
        }
        if (Log.isLoggable("Rpc", 3)) {
            Log.d("Rpc", "Error making request: ".concat(String.valueOf(task.getException())));
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", task.getException());
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 7:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzX());
            case 8:
                List list2 = zzfy.a;
                return zzags.zzae();
            default:
                List list3 = zzfy.a;
                return Long.valueOf(zzags.zza());
        }
    }
}
