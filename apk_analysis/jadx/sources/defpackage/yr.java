package defpackage;

import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class yr extends aq5 {
    public static boolean C(int[] iArr, int i) {
        iArr.getClass();
        return P(i, iArr) >= 0;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0012 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x0014 A[RETURN] */
    public static boolean D(long[] jArr, long j) {
        int length = jArr.length;
        int i = 0;
        while (i < length) {
            if (j == jArr[i]) {
                if (i >= 0) {
                    return true;
                }
                return false;
            }
            i++;
        }
        i = -1;
        if (i >= 0) {
            return true;
        }
        return false;
    }

    public static <T> boolean E(T[] tArr, T t) {
        tArr.getClass();
        return Q(t, tArr) >= 0;
    }

    public static List F(int i, Object[] objArr) {
        objArr.getClass();
        if (i < 0) {
            c9.f(kv2.b(i, "Requested element count ", " is less than zero."));
            return null;
        }
        int length = objArr.length - i;
        if (length < 0) {
            length = 0;
        }
        if (length < 0) {
            c9.f(kv2.b(length, "Requested element count ", " is less than zero."));
            return null;
        }
        if (length == 0) {
            return kx2.b;
        }
        int length2 = objArr.length;
        if (length >= length2) {
            return h0(objArr);
        }
        if (length == 1) {
            return u96.h(objArr[length2 - 1]);
        }
        List listAsList = Arrays.asList(aq5.r(length2 - length, length2, objArr));
        listAsList.getClass();
        return listAsList;
    }

    public static ArrayList G(Object[] objArr) {
        objArr.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static int H(int[] iArr) {
        if (iArr.length != 0) {
            return iArr[0];
        }
        ag.g("Array is empty.");
        return 0;
    }

    public static <T> T I(T[] tArr) {
        tArr.getClass();
        if (tArr.length != 0) {
            return tArr[0];
        }
        ag.g("Array is empty.");
        return null;
    }

    public static Float J(float[] fArr) {
        fArr.getClass();
        if (fArr.length == 0) {
            return null;
        }
        return Float.valueOf(fArr[0]);
    }

    public static <T> T K(T[] tArr) {
        if (tArr.length == 0) {
            return null;
        }
        return tArr[0];
    }

    public static y74 L(int[] iArr) {
        iArr.getClass();
        return new y74(0, iArr.length - 1, 1);
    }

    public static int M(long[] jArr) {
        jArr.getClass();
        return jArr.length - 1;
    }

    public static <T> int N(T[] tArr) {
        tArr.getClass();
        return tArr.length - 1;
    }

    public static Object O(int i, Object[] objArr) {
        objArr.getClass();
        if (i < 0 || i >= objArr.length) {
            return null;
        }
        return objArr[i];
    }

    public static int P(int i, int[] iArr) {
        iArr.getClass();
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i == iArr[i2]) {
                return i2;
            }
        }
        return -1;
    }

    public static int Q(Object obj, Object[] objArr) {
        objArr.getClass();
        int i = 0;
        if (obj == null) {
            int length = objArr.length;
            while (i < length) {
                if (objArr[i] == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int length2 = objArr.length;
        while (i < length2) {
            if (obj.equals(objArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static String R(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, nl3 nl3Var) {
        objArr.getClass();
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        int i = 0;
        for (Object obj : objArr) {
            i++;
            if (i > 1) {
                sb.append(charSequence);
            }
            eg9.a(sb, obj, nl3Var);
        }
        sb.append(charSequence3);
        return sb.toString();
    }

    public static String S(byte[] bArr, String str, nl3 nl3Var, int i) {
        if ((i & 1) != 0) {
            str = ", ";
        }
        String str2 = (i & 2) != 0 ? "" : "[";
        String str3 = (i & 4) == 0 ? "]" : "";
        int i2 = (i & 8) != 0 ? -1 : 32;
        if ((i & 32) != 0) {
            nl3Var = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str2);
        int i3 = 0;
        for (byte b : bArr) {
            i3++;
            if (i3 > 1) {
                sb.append((CharSequence) str);
            }
            if (i2 >= 0 && i3 > i2) {
                break;
            }
            if (nl3Var != null) {
                sb.append((CharSequence) nl3Var.invoke(Byte.valueOf(b)));
            } else {
                sb.append((CharSequence) String.valueOf((int) b));
            }
        }
        if (i2 >= 0 && i3 > i2) {
            sb.append((CharSequence) "...");
        }
        sb.append((CharSequence) str3);
        return sb.toString();
    }

    public static /* synthetic */ String T(Object[] objArr, String str, String str2, nl3 nl3Var, int i) {
        if ((i & 2) != 0) {
            str = "";
        }
        if ((i & 4) != 0) {
            str2 = "";
        }
        if ((i & 32) != 0) {
            nl3Var = null;
        }
        return R(objArr, ", ", str, str2, nl3Var);
    }

    public static Float U(float[] fArr) {
        fArr.getClass();
        if (fArr.length == 0) {
            return null;
        }
        return Float.valueOf(fArr[fArr.length - 1]);
    }

    public static Float V(Float[] fArr) {
        fArr.getClass();
        if (fArr.length == 0) {
            return null;
        }
        float fFloatValue = fArr[0].floatValue();
        int i = 1;
        int length = fArr.length - 1;
        if (1 <= length) {
            while (true) {
                fFloatValue = Math.max(fFloatValue, fArr[i].floatValue());
                if (i == length) {
                    break;
                }
                i++;
            }
        }
        return Float.valueOf(fFloatValue);
    }

    public static int W(int[] iArr) {
        if (iArr.length == 0) {
            qz0.e();
            return 0;
        }
        int i = iArr[0];
        int i2 = 1;
        int length = iArr.length - 1;
        if (1 <= length) {
            while (true) {
                int i3 = iArr[i2];
                if (i < i3) {
                    i = i3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        return i;
    }

    public static Float X(Float[] fArr) {
        fArr.getClass();
        if (fArr.length == 0) {
            return null;
        }
        float fFloatValue = fArr[0].floatValue();
        int i = 1;
        int length = fArr.length - 1;
        if (1 <= length) {
            while (true) {
                fFloatValue = Math.min(fFloatValue, fArr[i].floatValue());
                if (i == length) {
                    break;
                }
                i++;
            }
        }
        return Float.valueOf(fFloatValue);
    }

    public static Integer Y(int[] iArr) {
        iArr.getClass();
        if (iArr.length == 0) {
            return null;
        }
        int i = iArr[0];
        int i2 = 1;
        int length = iArr.length - 1;
        if (1 <= length) {
            while (true) {
                int i3 = iArr[i2];
                if (i > i3) {
                    i = i3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        return Integer.valueOf(i);
    }

    public static char Z(char[] cArr) {
        int length = cArr.length;
        if (length == 0) {
            ag.g("Array is empty.");
            return (char) 0;
        }
        if (length == 1) {
            return cArr[0];
        }
        fg.c("Array has more than one element.");
        return (char) 0;
    }

    public static <T> List<T> a0(T[] tArr, y74 y74Var) {
        tArr.getClass();
        y74Var.getClass();
        if (y74Var.isEmpty()) {
            return kx2.b;
        }
        List<T> listAsList = Arrays.asList(aq5.r(y74Var.b, y74Var.c + 1, tArr));
        listAsList.getClass();
        return listAsList;
    }

    public static final void b0(int[] iArr, HashSet hashSet) {
        for (int i : iArr) {
            hashSet.add(Integer.valueOf(i));
        }
    }

    public static final void c0(Object[] objArr, AbstractSet abstractSet) {
        objArr.getClass();
        for (Object obj : objArr) {
            abstractSet.add(obj);
        }
    }

    public static List<Double> d0(double[] dArr) {
        dArr.getClass();
        int length = dArr.length;
        if (length == 0) {
            return kx2.b;
        }
        if (length == 1) {
            return u96.h(Double.valueOf(dArr[0]));
        }
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double d : dArr) {
            arrayList.add(Double.valueOf(d));
        }
        return arrayList;
    }

    public static List<Float> e0(float[] fArr) {
        fArr.getClass();
        int length = fArr.length;
        if (length == 0) {
            return kx2.b;
        }
        if (length == 1) {
            return u96.h(Float.valueOf(fArr[0]));
        }
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    public static List<Integer> f0(int[] iArr) {
        iArr.getClass();
        int length = iArr.length;
        if (length == 0) {
            return kx2.b;
        }
        if (length == 1) {
            return u96.h(Integer.valueOf(iArr[0]));
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    public static List<Long> g0(long[] jArr) {
        jArr.getClass();
        int length = jArr.length;
        if (length == 0) {
            return kx2.b;
        }
        if (length == 1) {
            return u96.h(Long.valueOf(jArr[0]));
        }
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    public static <T> List<T> h0(T[] tArr) {
        tArr.getClass();
        int length = tArr.length;
        if (length == 0) {
            return kx2.b;
        }
        if (length == 1) {
            return u96.h(tArr[0]);
        }
        List<T> listAsList = Arrays.asList(Arrays.copyOf(tArr, tArr.length));
        listAsList.getClass();
        return listAsList;
    }

    public static List<Boolean> i0(boolean[] zArr) {
        zArr.getClass();
        int length = zArr.length;
        if (length == 0) {
            return kx2.b;
        }
        if (length == 1) {
            return u96.h(Boolean.valueOf(zArr[0]));
        }
        ArrayList arrayList = new ArrayList(zArr.length);
        for (boolean z : zArr) {
            arrayList.add(Boolean.valueOf(z));
        }
        return arrayList;
    }

    public static ArrayList j0(Object[] objArr) {
        objArr.getClass();
        return new ArrayList(new dr(objArr, false));
    }

    public static <T> Set<T> k0(T[] tArr) {
        tArr.getClass();
        int length = tArr.length;
        if (length == 0) {
            return ox2.b;
        }
        if (length == 1) {
            return l1.f(tArr[0]);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(m05.b(tArr.length));
        c0(tArr, linkedHashSet);
        return linkedHashSet;
    }
}
