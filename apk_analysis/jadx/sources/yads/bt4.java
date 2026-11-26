package yads;

import android.net.Uri;
import defpackage.lg8;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bt4 {
    public static final nl3 a = new defpackage.ty2(5);
    public static final nl3 b = new defpackage.uy2(2);
    public static final nl3 c = new defpackage.vy2(5);
    public static final nl3 d = new defpackage.ii5(3);
    public static final nl3 e = new lg8(1);

    public static final Boolean a(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (!(obj instanceof Number)) {
            throw new ClassCastException("Received value of wrong type");
        }
        Number number = (Number) obj;
        if (!(number instanceof Double)) {
            return d70.a(number.intValue());
        }
        double dDoubleValue = number.doubleValue();
        if (dDoubleValue == 0.0d) {
            return Boolean.FALSE;
        }
        if (dDoubleValue == 1.0d) {
            return Boolean.TRUE;
        }
        return null;
    }

    public static final Uri b(Object obj) {
        if (obj instanceof String) {
            return Uri.parse((String) obj);
        }
        if (obj instanceof q46) {
            return Uri.parse(((q46) obj).a);
        }
        throw new ClassCastException("Received value of wrong type");
    }

    public static final Integer c(Object obj) {
        if (obj instanceof String) {
            return Integer.valueOf(k20.a((String) obj));
        }
        if (obj instanceof l20) {
            return Integer.valueOf(((l20) obj).a);
        }
        if (obj == null) {
            return null;
        }
        throw new ClassCastException("Received value of wrong type");
    }

    public static final long b(Number number) {
        return number.longValue();
    }

    public static final double a(Number number) {
        return number.doubleValue();
    }
}
