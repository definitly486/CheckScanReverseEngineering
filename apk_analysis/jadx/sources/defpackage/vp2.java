package defpackage;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class vp2 implements hm1, Continuation {
    public static final vp2 b = new vp2();
    public static final bh8 c = new bh8("COMPLETING_ALREADY");
    public static final bh8 d = new bh8("COMPLETING_WAITING_CHILDREN");
    public static final bh8 e = new bh8("COMPLETING_RETRY");
    public static final bh8 f = new bh8("TOO_LATE_TO_CANCEL");
    public static final bh8 g = new bh8("SEALED");
    public static final ex2 h = new ex2(false);
    public static final ex2 i = new ex2(true);
    public static final /* synthetic */ vp2 j = new vp2();

    public static final boolean a(String str) {
        str.getClass();
        String strReplace = str.replace(',', '.');
        strReplace.getClass();
        return qa8.n(strReplace) != null;
    }

    public static final Object b(Object obj, Object obj2) {
        if (obj == null) {
            return obj2;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(obj2);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }

    public static final float c(String str) {
        str.getClass();
        String strReplace = str.replace(',', '.');
        strReplace.getClass();
        return Float.parseFloat(strReplace);
    }

    public static final double d(long j2) {
        return ((j2 >>> 11) * 2048.0d) + (j2 & 2047);
    }

    public static final String e(int i2, long j2) {
        if (j2 >= 0) {
            ga1.b(i2);
            String string = Long.toString(j2, i2);
            string.getClass();
            return string;
        }
        long j3 = i2;
        long j4 = ((j2 >>> 1) / j3) << 1;
        long j5 = j2 - (j4 * j3);
        if (j5 >= j3) {
            j5 -= j3;
            j4++;
        }
        ga1.b(i2);
        String string2 = Long.toString(j4, i2);
        string2.getClass();
        ga1.b(i2);
        String string3 = Long.toString(j5, i2);
        string3.getClass();
        return string2.concat(string3);
    }

    public static final Object f(Object obj) {
        e44 e44Var = obj instanceof e44 ? (e44) obj : null;
        return e44Var != null ? e44Var.a : obj;
    }

    @Override // defpackage.hm1
    public long getTime() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* synthetic */ Object then(Task task) {
        return null;
    }
}
