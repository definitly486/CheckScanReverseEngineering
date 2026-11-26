package defpackage;

import android.view.View;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzahn;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class u96 implements r37, rxa {
    public static final df4[] c = new df4[0];
    public static final /* synthetic */ u96 d = new u96(4);
    public static final /* synthetic */ u96 e = new u96(5);
    public final /* synthetic */ int b;

    public /* synthetic */ u96(int i) {
        this.b = i;
    }

    public static ArrayList a(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new dr(objArr, true));
    }

    public static int b(List list, int i, nl3 nl3Var) {
        list.getClass();
        m(list.size(), i);
        int i2 = i - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int iIntValue = ((Number) nl3Var.invoke(list.get(i4))).intValue();
            if (iIntValue < 0) {
                i3 = i4 + 1;
            } else {
                if (iIntValue <= 0) {
                    return i4;
                }
                i2 = i4 - 1;
            }
        }
        return -(i3 + 1);
    }

    public static int c(List list, Comparable comparable) {
        int size = list.size();
        list.getClass();
        m(list.size(), size);
        int i = size - 1;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            int iA = pp1.a((Comparable) list.get(i3), comparable);
            if (iA < 0) {
                i2 = i3 + 1;
            } else {
                if (iA <= 0) {
                    return i3;
                }
                i = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static ar4 d(ar4 ar4Var) {
        ar4Var.g();
        ar4Var.d = true;
        return ar4Var.c > 0 ? ar4Var : ar4.e;
    }

    public static ar4 e() {
        return new ar4(10);
    }

    public static y74 f(Collection collection) {
        collection.getClass();
        return new y74(0, collection.size() - 1, 1);
    }

    public static int g(List list) {
        list.getClass();
        return list.size() - 1;
    }

    public static List h(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        listSingletonList.getClass();
        return listSingletonList;
    }

    public static List i(Object... objArr) {
        if (objArr.length <= 0) {
            return kx2.b;
        }
        List listAsList = Arrays.asList(objArr);
        listAsList.getClass();
        return listAsList;
    }

    public static List j(Object obj) {
        return obj != null ? h(obj) : kx2.b;
    }

    public static ArrayList k(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new dr(objArr, true));
    }

    public static final List l(List list) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : h(list.get(0));
        }
        return kx2.b;
    }

    public static final void m(int i, int i2) {
        if (i2 < 0) {
            fg.c(kv2.b(i2, "fromIndex (0) is greater than toIndex (", ")."));
        } else {
            if (i2 <= i) {
                return;
            }
            yq.d(ln.c(i2, i, "toIndex (", ") is greater than size (", ")."));
        }
    }

    public static void n() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void o() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static final /* synthetic */ n36 p(View view, Object obj) {
        return new n36(obj, new ke9(view, 0));
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 4:
                List list = zzfy.a;
                return zzags.zzO();
            default:
                List list2 = zzfy.a;
                return Boolean.valueOf(zzahn.zzd());
        }
    }
}
