package defpackage;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class aq5 implements rxa {
    public static final bh8 b = new bh8("NULL");
    public static final bh8 c = new bh8("UNINITIALIZED");
    public static final bh8 d = new bh8("DONE");
    public static final sjb e = new sjb();
    public static final wjb f = new wjb();
    public static final /* synthetic */ aq5 g = new aq5();

    public static Object[] A(Object[] objArr, Object[] objArr2) {
        objArr.getClass();
        objArr2.getClass();
        int length = objArr.length;
        int length2 = objArr2.length;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, length + length2);
        System.arraycopy(objArr2, 0, objArrCopyOf, length, length2);
        return objArrCopyOf;
    }

    public static Integer[] B(int[] iArr) {
        Integer[] numArr = new Integer[iArr.length];
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    public static final Executor a(r22 r22Var) {
        Executor executorK0;
        u13 u13Var = r22Var instanceof u13 ? (u13) r22Var : null;
        return (u13Var == null || (executorK0 = u13Var.k0()) == null) ? new lo2(r22Var) : executorK0;
    }

    public static List b(Object[] objArr) {
        objArr.getClass();
        List listAsList = Arrays.asList(objArr);
        listAsList.getClass();
        return listAsList;
    }

    public static final void c(AutoCloseable autoCloseable, Throwable th) throws Exception {
        boolean zIsTerminated;
        if (autoCloseable != null) {
            if (th != null) {
                try {
                    ug.g(autoCloseable);
                    return;
                } catch (Throwable th2) {
                    sj0.c(th, th2);
                    return;
                }
            }
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
                return;
            }
            if (!(autoCloseable instanceof ExecutorService)) {
                if (autoCloseable instanceof TypedArray) {
                    ((TypedArray) autoCloseable).recycle();
                    return;
                }
                if (autoCloseable instanceof MediaMetadataRetriever) {
                    ((MediaMetadataRetriever) autoCloseable).release();
                    return;
                } else if (autoCloseable instanceof MediaDrm) {
                    ((MediaDrm) autoCloseable).release();
                    return;
                } else {
                    mi2.b();
                    return;
                }
            }
            ExecutorService executorService = (ExecutorService) autoCloseable;
            if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
                return;
            }
            executorService.shutdown();
            boolean z = false;
            while (!zIsTerminated) {
                try {
                    zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        executorService.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static boolean d(Object[] objArr, Object[] objArr2) {
        if (objArr == objArr2) {
            return true;
        }
        if (objArr != null && objArr2 != null && objArr.length == objArr2.length) {
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                Object obj = objArr[i];
                Object obj2 = objArr2[i];
                if (obj != obj2) {
                    if (obj != null && obj2 != null) {
                        if ((obj instanceof Object[]) && (obj2 instanceof Object[])) {
                            if (!d((Object[]) obj, (Object[]) obj2)) {
                            }
                        } else if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
                            if (!Arrays.equals((byte[]) obj, (byte[]) obj2)) {
                            }
                        } else if ((obj instanceof short[]) && (obj2 instanceof short[])) {
                            if (!Arrays.equals((short[]) obj, (short[]) obj2)) {
                            }
                        } else if ((obj instanceof int[]) && (obj2 instanceof int[])) {
                            if (!Arrays.equals((int[]) obj, (int[]) obj2)) {
                            }
                        } else if ((obj instanceof long[]) && (obj2 instanceof long[])) {
                            if (!Arrays.equals((long[]) obj, (long[]) obj2)) {
                            }
                        } else if ((obj instanceof float[]) && (obj2 instanceof float[])) {
                            if (!Arrays.equals((float[]) obj, (float[]) obj2)) {
                            }
                        } else if ((obj instanceof double[]) && (obj2 instanceof double[])) {
                            if (!Arrays.equals((double[]) obj, (double[]) obj2)) {
                            }
                        } else if ((obj instanceof char[]) && (obj2 instanceof char[])) {
                            if (!Arrays.equals((char[]) obj, (char[]) obj2)) {
                            }
                        } else if ((obj instanceof boolean[]) && (obj2 instanceof boolean[])) {
                            if (!Arrays.equals((boolean[]) obj, (boolean[]) obj2)) {
                            }
                        } else if ((obj instanceof g49) && (obj2 instanceof g49)) {
                            if (!Arrays.equals(((g49) obj).b, ((g49) obj2).b)) {
                            }
                        } else if ((obj instanceof w49) && (obj2 instanceof w49)) {
                            if (!Arrays.equals(((w49) obj).b, ((w49) obj2).b)) {
                            }
                        } else if ((obj instanceof l49) && (obj2 instanceof l49)) {
                            if (!Arrays.equals(((l49) obj).b, ((l49) obj2).b)) {
                            }
                        } else if ((obj instanceof q49) && (obj2 instanceof q49)) {
                            if (!Arrays.equals(((q49) obj).b, ((q49) obj2).b)) {
                            }
                        } else if (!obj.equals(obj2)) {
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static String e(Object[] objArr) {
        int length = objArr.length;
        if (length > 429496729) {
            length = 429496729;
        }
        StringBuilder sb = new StringBuilder((length * 5) + 2);
        f(objArr, sb, new ArrayList());
        return sb.toString();
    }

    public static final void f(Object[] objArr, StringBuilder sb, ArrayList arrayList) {
        if (arrayList.contains(objArr)) {
            sb.append("[...]");
            return;
        }
        arrayList.add(objArr);
        sb.append('[');
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(", ");
            }
            Object obj = objArr[i];
            if (obj == null) {
                sb.append("null");
            } else if (obj instanceof Object[]) {
                f((Object[]) obj, sb, arrayList);
                j59 j59Var = j59.a;
            } else if (obj instanceof byte[]) {
                String string = Arrays.toString((byte[]) obj);
                string.getClass();
                sb.append(string);
            } else if (obj instanceof short[]) {
                String string2 = Arrays.toString((short[]) obj);
                string2.getClass();
                sb.append(string2);
            } else if (obj instanceof int[]) {
                String string3 = Arrays.toString((int[]) obj);
                string3.getClass();
                sb.append(string3);
            } else if (obj instanceof long[]) {
                String string4 = Arrays.toString((long[]) obj);
                string4.getClass();
                sb.append(string4);
            } else if (obj instanceof float[]) {
                String string5 = Arrays.toString((float[]) obj);
                string5.getClass();
                sb.append(string5);
            } else if (obj instanceof double[]) {
                String string6 = Arrays.toString((double[]) obj);
                string6.getClass();
                sb.append(string6);
            } else if (obj instanceof char[]) {
                String string7 = Arrays.toString((char[]) obj);
                string7.getClass();
                sb.append(string7);
            } else if (obj instanceof boolean[]) {
                String string8 = Arrays.toString((boolean[]) obj);
                string8.getClass();
                sb.append(string8);
            } else if (obj instanceof g49) {
                sb.append(qn1.a0((g49) obj, ", ", "[", "]", 0, null, 56));
            } else if (obj instanceof w49) {
                sb.append(qn1.a0((w49) obj, ", ", "[", "]", 0, null, 56));
            } else if (obj instanceof l49) {
                sb.append(qn1.a0((l49) obj, ", ", "[", "]", 0, null, 56));
            } else if (obj instanceof q49) {
                sb.append(qn1.a0((q49) obj, ", ", "[", "]", 0, null, 56));
            } else {
                sb.append(obj.toString());
            }
        }
        sb.append(']');
        arrayList.remove(arrayList.size() - 1);
    }

    public static void g(int i, int i2, int i3, byte[] bArr, byte[] bArr2) {
        bArr.getClass();
        bArr2.getClass();
        System.arraycopy(bArr, i2, bArr2, i, i3 - i2);
    }

    public static void h(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        iArr.getClass();
        iArr2.getClass();
        System.arraycopy(iArr, i2, iArr2, i, i3 - i2);
    }

    public static void i(char[] cArr, char[] cArr2, int i, int i2, int i3) {
        cArr.getClass();
        cArr2.getClass();
        System.arraycopy(cArr, i2, cArr2, i, i3 - i2);
    }

    public static void j(double[] dArr, double[] dArr2, int i, int i2, int i3) {
        dArr.getClass();
        dArr2.getClass();
        System.arraycopy(dArr, i2, dArr2, i, i3 - i2);
    }

    public static void k(float[] fArr, int i, float[] fArr2, int i2, int i3) {
        fArr.getClass();
        fArr2.getClass();
        System.arraycopy(fArr, i2, fArr2, i, i3 - i2);
    }

    public static void l(long[] jArr, long[] jArr2, int i, int i2, int i3) {
        jArr.getClass();
        jArr2.getClass();
        System.arraycopy(jArr, i2, jArr2, i, i3 - i2);
    }

    public static void m(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        objArr.getClass();
        objArr2.getClass();
        System.arraycopy(objArr, i2, objArr2, i, i3 - i2);
    }

    public static /* synthetic */ void n(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = iArr.length;
        }
        h(i, 0, i2, iArr, iArr2);
    }

    public static /* synthetic */ void o(int i, float[] fArr, float[] fArr2, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        k(fArr, i, fArr2, 0, (i2 & 8) != 0 ? fArr.length : 6);
    }

    public static /* synthetic */ void q(Object[] objArr, Object[] objArr2, int i, int i2, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = objArr.length;
        }
        m(objArr, i, objArr2, i2, i3);
    }

    public static Object[] r(int i, int i2, Object[] objArr) {
        objArr.getClass();
        s(i2, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i, i2);
        objArrCopyOfRange.getClass();
        return objArrCopyOfRange;
    }

    public static final void s(int i, int i2) {
        if (i <= i2) {
            return;
        }
        yq.d(ln.c(i, i2, "toIndex (", ") is greater than size (", ")."));
    }

    public static void t(Object obj, Object[] objArr, int i, int i2) {
        objArr.getClass();
        Arrays.fill(objArr, i, i2, obj);
    }

    public static void u(int i, int i2, int i3, int[] iArr) {
        if ((i3 & 4) != 0) {
            i2 = iArr.length;
        }
        iArr.getClass();
        Arrays.fill(iArr, 0, i2, i);
    }

    public static void w(long[] jArr, long j) {
        int length = jArr.length;
        jArr.getClass();
        Arrays.fill(jArr, 0, length, j);
    }

    public static final r22 x(Executor executor) {
        r22 r22Var;
        lo2 lo2Var = executor instanceof lo2 ? (lo2) executor : null;
        return (lo2Var == null || (r22Var = lo2Var.b) == null) ? new v13(executor) : r22Var;
    }

    public static int[] y(int[] iArr, int[] iArr2) {
        iArr.getClass();
        iArr2.getClass();
        int length = iArr.length;
        int length2 = iArr2.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, length + length2);
        System.arraycopy(iArr2, 0, iArrCopyOf, length, length2);
        return iArrCopyOf;
    }

    public static Object[] z(Collection collection, Object[] objArr) {
        collection.getClass();
        int length = objArr.length;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, collection.size() + length);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            objArrCopyOf[length] = it.next();
            length++;
        }
        return objArrCopyOf;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Integer.valueOf((int) zzags.zzx());
    }
}
