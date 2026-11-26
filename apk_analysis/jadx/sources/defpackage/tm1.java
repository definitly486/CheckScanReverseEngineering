package defpackage;

import android.graphics.Point;
import android.view.View;
import androidx.media3.muxer.MuxerUtil;
import androidx.media3.muxer.WebmConstants;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class tm1 {
    /* JADX WARN: Code duplicated, block: B:101:0x00bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x007c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0083 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0085  */
    /* JADX WARN: Code duplicated, block: B:50:0x008c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0099  */
    /* JADX WARN: Code duplicated, block: B:52:0x009c  */
    /* JADX WARN: Code duplicated, block: B:53:0x009f  */
    /* JADX WARN: Code duplicated, block: B:55:0x00a3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b9  */
    public static qi0 a(String str, qc0 qc0Var) {
        char c;
        int i;
        int i2;
        if (qc0Var != qc0.CODE_128) {
            r01.e(qc0Var, "Can only encode CODE_128, but got ");
            return null;
        }
        if (str.isEmpty()) {
            fg.c("Found empty contents");
            return null;
        }
        int[][] iArr = sm1.b;
        int length = str.length();
        if (length < 1 || length > 80) {
            fg.c(jh.b(length, "Contents length should be between 1 and 80 characters, but got "));
            return null;
        }
        int i3 = 0;
        while (true) {
            char c2 = ' ';
            if (i3 < length) {
                char cCharAt = str.charAt(i3);
                if (cCharAt < ' ' || cCharAt > '~') {
                    switch (cCharAt) {
                        case WebmConstants.MkvEbmlElement.CUE_CLUSTER_POSITION /* 241 */:
                        case 242:
                        case 243:
                        case 244:
                            break;
                        default:
                            d.c(cCharAt, "Bad character in input: ");
                            return null;
                    }
                }
                i3++;
            } else {
                ArrayList<int[]> arrayList = new ArrayList();
                int i4 = 1;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    if (i5 >= length) {
                        arrayList.add(iArr[i6 % 103]);
                        arrayList.add(iArr[106]);
                        int i8 = 0;
                        for (int[] iArr2 : arrayList) {
                            for (int i9 : iArr2) {
                                i8 += i9;
                            }
                        }
                        boolean[] zArr = new boolean[i8];
                        int i10 = 0;
                        for (int[] iArr3 : arrayList) {
                            int i11 = i10;
                            boolean z = true;
                            int i12 = 0;
                            for (int i13 : iArr3) {
                                int i14 = 0;
                                while (i14 < i13) {
                                    zArr[i11] = z;
                                    i14++;
                                    i11++;
                                }
                                i12 += i13;
                                z = !z;
                            }
                            i10 += i12;
                        }
                        int i15 = i8 + 10;
                        int iMax = Math.max(300, i15);
                        int iMax2 = Math.max(1, 50);
                        int i16 = iMax / i15;
                        int i17 = (iMax - (i8 * i16)) / 2;
                        qi0 qi0Var = new qi0(iMax, iMax2);
                        int i18 = 0;
                        while (i18 < i8) {
                            if (zArr[i18]) {
                                qi0Var.e(i17, 0, i16, iMax2);
                            }
                            i18++;
                            i17 += i16;
                        }
                        return qi0Var;
                    }
                    int i19 = (i7 != 99 ? 4 : 2) + i5;
                    int length2 = str.length();
                    int i20 = i5;
                    while (true) {
                        int iCharAt = 100;
                        if (i20 >= i19 || i20 >= length2) {
                            c = c2;
                            i = i19 <= length2 ? 99 : 100;
                            if (i == i7) {
                                switch (str.charAt(i5)) {
                                    case WebmConstants.MkvEbmlElement.CUE_CLUSTER_POSITION /* 241 */:
                                        iCharAt = 102;
                                        break;
                                    case 242:
                                        iCharAt = 97;
                                        break;
                                    case 243:
                                        iCharAt = 96;
                                        break;
                                    case 244:
                                        break;
                                    default:
                                        if (i7 == 100) {
                                            iCharAt = str.charAt(i5) - ' ';
                                        } else {
                                            iCharAt = Integer.parseInt(str.substring(i5, i5 + 2));
                                            i5++;
                                        }
                                        break;
                                }
                                i5++;
                            } else {
                                if (i7 == 0) {
                                    if (i == 100) {
                                        i2 = 104;
                                    } else {
                                        i2 = 105;
                                    }
                                    iCharAt = i2;
                                } else {
                                    iCharAt = i;
                                }
                                i7 = i;
                            }
                            arrayList.add(iArr[iCharAt]);
                            i6 += iCharAt * i4;
                            if (i5 != 0) {
                                i4++;
                            }
                            c2 = c;
                        } else {
                            c = c2;
                            char cCharAt2 = str.charAt(i20);
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 == 241) {
                                    i19++;
                                }
                            }
                            i20++;
                            c2 = c;
                        }
                        if (i == i7) {
                            switch (str.charAt(i5)) {
                                case WebmConstants.MkvEbmlElement.CUE_CLUSTER_POSITION /* 241 */:
                                    iCharAt = 102;
                                    break;
                                case 242:
                                    iCharAt = 97;
                                    break;
                                case 243:
                                    iCharAt = 96;
                                    break;
                                case 244:
                                    break;
                                default:
                                    if (i7 == 100) {
                                        iCharAt = str.charAt(i5) - ' ';
                                    } else {
                                        iCharAt = Integer.parseInt(str.substring(i5, i5 + 2));
                                        i5++;
                                    }
                                    break;
                            }
                            i5++;
                        } else {
                            if (i7 == 0) {
                                if (i == 100) {
                                    i2 = 104;
                                } else {
                                    i2 = 105;
                                }
                                iCharAt = i2;
                            } else {
                                iCharAt = i;
                            }
                            i7 = i;
                        }
                        arrayList.add(iArr[iCharAt]);
                        i6 += iCharAt * i4;
                        if (i5 != 0) {
                            i4++;
                        }
                        c2 = c;
                    }
                }
            }
        }
    }

    public static final /* synthetic */ Point b(View view) {
        view.getClass();
        int[] iArr = {0, 0};
        view.getLocationOnScreen(iArr);
        return new Point(iArr[0] + ((int) view.getTranslationX()), iArr[1] + ((int) view.getTranslationY()));
    }

    public static final k49 c(String str) {
        int i;
        ga1.b(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = str.charAt(0);
        if (aa4.f(cCharAt, 48) < 0) {
            i = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i = 0;
        }
        int iDivideUnsigned = 119304647;
        while (i < length) {
            int iDigit = Character.digit((int) str.charAt(i), 10);
            if (iDigit < 0) {
                return null;
            }
            if (Integer.compareUnsigned(i2, iDivideUnsigned) > 0) {
                if (iDivideUnsigned != 119304647) {
                    return null;
                }
                iDivideUnsigned = Integer.divideUnsigned(-1, 10);
                if (Integer.compareUnsigned(i2, iDivideUnsigned) > 0) {
                    return null;
                }
            }
            int i3 = i2 * 10;
            int i4 = iDigit + i3;
            if (Integer.compareUnsigned(i4, i3) < 0) {
                return null;
            }
            i++;
            i2 = i4;
        }
        return new k49(i2);
    }

    public static final p49 d(String str) {
        str.getClass();
        ga1.b(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i = 0;
        char cCharAt = str.charAt(0);
        if (aa4.f(cCharAt, 48) < 0) {
            i = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        }
        long j = 0;
        long jDivideUnsigned = 512409557603043100L;
        while (i < length) {
            int iDigit = Character.digit((int) str.charAt(i), 10);
            if (iDigit < 0) {
                return null;
            }
            if (Long.compareUnsigned(j, jDivideUnsigned) > 0) {
                if (jDivideUnsigned != 512409557603043100L) {
                    return null;
                }
                jDivideUnsigned = Long.divideUnsigned(-1L, 10L);
                if (Long.compareUnsigned(j, jDivideUnsigned) > 0) {
                    return null;
                }
            }
            long j2 = j * 10;
            long j3 = (((long) iDigit) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j2;
            if (Long.compareUnsigned(j3, j2) < 0) {
                return null;
            }
            i++;
            j = j3;
        }
        return new p49(j);
    }
}
