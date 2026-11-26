package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.proto.DecimalProtoModel;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes5.dex */
public final class J7 implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1224r8 fromModel(BigDecimal bigDecimal) {
        DecimalProtoModel decimalProtoModelFromDecimal = DecimalProtoModel.fromDecimal(bigDecimal);
        C1224r8 c1224r8 = new C1224r8();
        c1224r8.a = decimalProtoModelFromDecimal.getMantissa();
        c1224r8.b = decimalProtoModelFromDecimal.getExponent();
        return c1224r8;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final BigDecimal a(C1224r8 c1224r8) {
        throw new UnsupportedOperationException();
    }
}
