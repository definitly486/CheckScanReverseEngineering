package io.appmetrica.analytics.coreutils.internal.proto;

import defpackage.jh2;
import defpackage.rg;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class DecimalProtoModel {
    public static final Companion Companion = new Companion(null);
    private static final BigInteger c = BigInteger.valueOf(Long.MAX_VALUE);
    private static final BigInteger d = BigInteger.valueOf(Long.MIN_VALUE);
    private final long a;
    private final int b;

    public DecimalProtoModel(long j, int i) {
        this.a = j;
        this.b = i;
    }

    public static /* synthetic */ DecimalProtoModel copy$default(DecimalProtoModel decimalProtoModel, long j, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = decimalProtoModel.a;
        }
        if ((i2 & 2) != 0) {
            i = decimalProtoModel.b;
        }
        return decimalProtoModel.copy(j, i);
    }

    public static final DecimalProtoModel fromDecimal(BigDecimal bigDecimal) {
        return Companion.fromDecimal(bigDecimal);
    }

    public final long component1() {
        return this.a;
    }

    public final int component2() {
        return this.b;
    }

    public final DecimalProtoModel copy(long j, int i) {
        return new DecimalProtoModel(j, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DecimalProtoModel)) {
            return false;
        }
        DecimalProtoModel decimalProtoModel = (DecimalProtoModel) obj;
        return this.a == decimalProtoModel.a && this.b == decimalProtoModel.b;
    }

    public final int getExponent() {
        return this.b;
    }

    public final long getMantissa() {
        return this.a;
    }

    public int hashCode() {
        return Integer.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DecimalProtoModel(mantissa=");
        sb.append(this.a);
        sb.append(", exponent=");
        return rg.h(sb, this.b, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final DecimalProtoModel fromDecimal(BigDecimal bigDecimal) {
            int i = -bigDecimal.scale();
            BigInteger bigIntegerUnscaledValue = bigDecimal.unscaledValue();
            while (true) {
                if (bigIntegerUnscaledValue.compareTo(DecimalProtoModel.c) <= 0 && bigIntegerUnscaledValue.compareTo(DecimalProtoModel.d) >= 0) {
                    return new DecimalProtoModel(Long.valueOf(bigIntegerUnscaledValue.longValue()).longValue(), Integer.valueOf(i).intValue());
                }
                bigIntegerUnscaledValue = bigIntegerUnscaledValue.divide(BigInteger.TEN);
                i++;
            }
        }

        private Companion() {
        }
    }
}
