package yads;

import defpackage.u96;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ko0 extends u13 {
    public final List a = u96.i(new w13(xo2.DICT, 0), new w13(xo2.STRING));
    public final xo2 b = xo2.INTEGER;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        long jLongValue;
        Object objA = jo0.a(c(), list, f());
        if (objA instanceof Integer) {
            jLongValue = ((Number) objA).intValue();
        } else {
            if (!(objA instanceof Long)) {
                if (objA instanceof BigInteger) {
                    jo0.a(c(), list, "Integer overflow.", f());
                    throw null;
                }
                if (objA instanceof BigDecimal) {
                    jo0.a(c(), list, "Cannot convert value to integer.", f());
                    throw null;
                }
                if (!(objA instanceof Double)) {
                    jo0.a(c(), list, this.b, objA, f());
                    throw null;
                }
                Number number = (Number) objA;
                if (number.doubleValue() < -9.223372036854776E18d || number.doubleValue() > 9.223372036854776E18d) {
                    jo0.a(c(), list, "Integer overflow.", f());
                    throw null;
                }
                long jC = defpackage.w65.c(number.doubleValue());
                if (number.doubleValue() - jC == 0.0d) {
                    return Long.valueOf(jC);
                }
                jo0.a(c(), list, "Cannot convert value to integer.", f());
                throw null;
            }
            jLongValue = ((Number) objA).longValue();
        }
        return Long.valueOf(jLongValue);
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.b;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    public boolean f() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return this.a;
    }
}
