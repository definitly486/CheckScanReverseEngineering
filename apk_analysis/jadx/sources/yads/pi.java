package yads;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class pi extends fi {
    public pi() {
        super(xo2.INTEGER);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objB = gi.b(c(), list, f());
        if (objB instanceof Integer) {
            return Long.valueOf(((Number) objB).intValue());
        }
        if (objB instanceof Long) {
            return objB;
        }
        if (objB instanceof BigInteger) {
            gi.a(c(), "Integer overflow.", list);
            throw null;
        }
        if (objB instanceof BigDecimal) {
            gi.a(c(), "Cannot convert value to integer.", list);
            throw null;
        }
        if (!(objB instanceof Double)) {
            gi.a(c(), list, this.a, objB, f());
            throw null;
        }
        Number number = (Number) objB;
        if (number.doubleValue() < -9.223372036854776E18d || number.doubleValue() > 9.223372036854776E18d) {
            gi.a(c(), "Integer overflow.", list);
            throw null;
        }
        long jC = defpackage.w65.c(number.doubleValue());
        if (number.doubleValue() - jC == 0.0d) {
            return Long.valueOf(jC);
        }
        gi.a(c(), "Cannot convert value to integer.", list);
        throw null;
    }
}
