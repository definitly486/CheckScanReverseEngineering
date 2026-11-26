package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zo2 {
    public static Number a(uy5 uy5Var, Object obj, Object obj2) {
        double dDoubleValue;
        long jLongValue;
        if (!(obj instanceof Long) || !(obj2 instanceof Long)) {
            if (!(obj instanceof Double) || !(obj2 instanceof Double)) {
                wo2.a(uy5Var, obj, obj2);
                throw null;
            }
            if (uy5Var instanceof ty5) {
                dDoubleValue = ((Number) obj2).doubleValue() * ((Number) obj).doubleValue();
            } else if (uy5Var instanceof ry5) {
                Number number = (Number) obj2;
                if (number.doubleValue() == 0.0d) {
                    wo2.a(obj + " / " + obj2, "Division by zero is not supported.");
                    throw null;
                }
                dDoubleValue = ((Number) obj).doubleValue() / number.doubleValue();
            } else {
                if (!(uy5Var instanceof sy5)) {
                    defpackage.me0.e();
                    return null;
                }
                Number number2 = (Number) obj2;
                if (number2.doubleValue() == 0.0d) {
                    wo2.a(obj + " % " + obj2, "Division by zero is not supported.");
                    throw null;
                }
                dDoubleValue = ((Number) obj).doubleValue() % number2.doubleValue();
            }
            return Double.valueOf(dDoubleValue);
        }
        if (uy5Var instanceof ty5) {
            Number number3 = (Number) obj;
            Number number4 = (Number) obj2;
            long jLongValue2 = number4.longValue() * number3.longValue();
            if (((Math.abs(number3.longValue()) | Math.abs(number4.longValue())) >>> 31) == 0 || ((obj2.equals(0L) || jLongValue2 / number4.longValue() == number3.longValue()) && !(obj.equals(Long.MIN_VALUE) && obj2.equals(-1L)))) {
                return Long.valueOf(jLongValue2);
            }
            defpackage.e2.g(obj, " * ", obj2);
            return null;
        }
        if (uy5Var instanceof ry5) {
            if (obj2.equals(0L)) {
                wo2.a(obj + " / " + obj2, "Division by zero is not supported.");
                throw null;
            }
            jLongValue = ((Number) obj).longValue() / ((Number) obj2).longValue();
        } else {
            if (!(uy5Var instanceof sy5)) {
                defpackage.me0.e();
                return null;
            }
            if (obj2.equals(0L)) {
                wo2.a(obj + " % " + obj2, "Division by zero is not supported.");
                throw null;
            }
            jLongValue = ((Number) obj).longValue() % ((Number) obj2).longValue();
        }
        return Long.valueOf(jLongValue);
    }

    public static Object a(bz5 bz5Var, Object obj, Object obj2) {
        double dDoubleValue;
        if ((obj instanceof String) && (obj2 instanceof String)) {
            if (!(bz5Var instanceof az5)) {
                wo2.a(bz5Var, obj, obj2);
                throw null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(obj);
            sb.append(obj2);
            return sb.toString();
        }
        if ((obj instanceof Long) && (obj2 instanceof Long)) {
            if (bz5Var instanceof az5) {
                Number number = (Number) obj;
                Number number2 = (Number) obj2;
                long jLongValue = number2.longValue() + number.longValue();
                if (((number.longValue() ^ jLongValue) & (number2.longValue() ^ jLongValue)) >= 0) {
                    return Long.valueOf(jLongValue);
                }
                defpackage.e2.g(obj, " + ", obj2);
                return null;
            }
            if (bz5Var instanceof zy5) {
                Number number3 = (Number) obj;
                Number number4 = (Number) obj2;
                long jLongValue2 = number3.longValue() - number4.longValue();
                if (((number3.longValue() ^ number4.longValue()) & (number3.longValue() ^ jLongValue2)) >= 0) {
                    return Long.valueOf(jLongValue2);
                }
                defpackage.e2.g(obj, " - ", obj2);
                return null;
            }
            defpackage.me0.e();
            return null;
        }
        if ((obj instanceof Double) && (obj2 instanceof Double)) {
            if (bz5Var instanceof az5) {
                dDoubleValue = ((Number) obj2).doubleValue() + ((Number) obj).doubleValue();
            } else {
                if (!(bz5Var instanceof zy5)) {
                    defpackage.me0.e();
                    return null;
                }
                dDoubleValue = ((Number) obj).doubleValue() - ((Number) obj2).doubleValue();
            }
            return Double.valueOf(dDoubleValue);
        }
        wo2.a(bz5Var, obj, obj2);
        throw null;
    }
}
