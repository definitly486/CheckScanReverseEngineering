package defpackage;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class qd4 extends pc4 {
    public final Serializable b;

    public qd4(String str) {
        Objects.requireNonNull(str);
        this.b = str;
    }

    public static boolean k(qd4 qd4Var) {
        Serializable serializable = qd4Var.b;
        if (!(serializable instanceof Number)) {
            return false;
        }
        Number number = (Number) serializable;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // defpackage.pc4
    public final boolean a() {
        Serializable serializable = this.b;
        return serializable instanceof Boolean ? ((Boolean) serializable).booleanValue() : Boolean.parseBoolean(g());
    }

    @Override // defpackage.pc4
    public final int b() {
        return this.b instanceof Number ? j().intValue() : Integer.parseInt(g());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || qd4.class != obj.getClass()) {
            return false;
        }
        qd4 qd4Var = (qd4) obj;
        Serializable serializable = qd4Var.b;
        Serializable serializable2 = this.b;
        if (serializable2 == null) {
            return serializable == null;
        }
        if (k(this) && k(qd4Var)) {
            if ((serializable2 instanceof BigInteger) || (serializable instanceof BigInteger)) {
                return h().equals(qd4Var.h());
            }
            return j().longValue() == qd4Var.j().longValue();
        }
        if (!(serializable2 instanceof Number) || !(serializable instanceof Number)) {
            return serializable2.equals(serializable);
        }
        if ((serializable2 instanceof BigDecimal) && (serializable instanceof BigDecimal)) {
            return (serializable2 instanceof BigDecimal ? (BigDecimal) serializable2 : s39.c(g())).compareTo(serializable instanceof BigDecimal ? (BigDecimal) serializable : s39.c(qd4Var.g())) == 0;
        }
        double dI = i();
        double dI2 = qd4Var.i();
        if (dI != dI2) {
            return Double.isNaN(dI) && Double.isNaN(dI2);
        }
        return true;
    }

    @Override // defpackage.pc4
    public final String g() {
        Serializable serializable = this.b;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        if (serializable instanceof Number) {
            return j().toString();
        }
        if (serializable instanceof Boolean) {
            return ((Boolean) serializable).toString();
        }
        ad2.e(serializable.getClass(), "Unexpected value type: ");
        return null;
    }

    public final BigInteger h() {
        Serializable serializable = this.b;
        if (serializable instanceof BigInteger) {
            return (BigInteger) serializable;
        }
        if (k(this)) {
            return BigInteger.valueOf(j().longValue());
        }
        String strG = g();
        s39.a(strG);
        return new BigInteger(strG);
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        Serializable serializable = this.b;
        if (serializable == null) {
            return 31;
        }
        if (k(this)) {
            jDoubleToLongBits = j().longValue();
        } else {
            if (!(serializable instanceof Number)) {
                return serializable.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(j().doubleValue());
        }
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public final double i() {
        return this.b instanceof Number ? j().doubleValue() : Double.parseDouble(g());
    }

    public final Number j() {
        Serializable serializable = this.b;
        if (serializable instanceof Number) {
            return (Number) serializable;
        }
        if (serializable instanceof String) {
            return new bl4((String) serializable);
        }
        n1.e("Primitive is neither a number nor a string");
        return null;
    }

    public qd4(Number number) {
        this.b = number;
    }

    public qd4(Boolean bool) {
        this.b = bool;
    }
}
