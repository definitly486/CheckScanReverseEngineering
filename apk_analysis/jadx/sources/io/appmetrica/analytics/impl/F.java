package io.appmetrica.analytics.impl;

import defpackage.b36;
import defpackage.ha1;
import defpackage.nl3;
import defpackage.u96;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.StringByBytesTrimmer;
import io.appmetrica.analytics.coreutils.internal.limitation.StringTrimmer;
import io.appmetrica.analytics.coreutils.internal.proto.DecimalProtoModel;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class F {
    public final AdRevenue a;
    public final boolean b;
    public final InterfaceC1293u c;
    public final StringTrimmer d;
    public final StringByBytesTrimmer e;

    public F(AdRevenue adRevenue, boolean z, C1239rn c1239rn, PublicLogger publicLogger) {
        this.a = adRevenue;
        this.b = z;
        this.c = c1239rn;
        this.d = new StringTrimmer(100, "ad revenue strings", publicLogger);
        this.e = new StringByBytesTrimmer(30720, "ad revenue payload", publicLogger);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final b36 a() {
        C1241s c1241s = new C1241s();
        int length = 0;
        for (b36 b36Var : u96.i(new b36(this.a.adNetwork, new C1393y(c1241s)), new b36(this.a.adPlacementId, new C1418z(c1241s)), new b36(this.a.adPlacementName, new A(c1241s)), new b36(this.a.adUnitId, new B(c1241s)), new b36(this.a.adUnitName, new C(c1241s)), new b36(this.a.precision, new D(c1241s)), new b36(this.a.currency.getCurrencyCode(), new E(c1241s)))) {
            String str = (String) b36Var.b;
            nl3 nl3Var = (nl3) b36Var.c;
            String str2 = (String) this.d.trim((Object) str);
            byte[] bArrStringToBytesForProtobuf = StringUtils.stringToBytesForProtobuf(str);
            byte[] bArrStringToBytesForProtobuf2 = StringUtils.stringToBytesForProtobuf(str2);
            nl3Var.invoke(bArrStringToBytesForProtobuf2);
            length += bArrStringToBytesForProtobuf.length - bArrStringToBytesForProtobuf2.length;
        }
        Integer num = (Integer) G.a.get(this.a.adType);
        c1241s.d = num != null ? num.intValue() : 0;
        r rVar = new r();
        DecimalProtoModel decimalProtoModelFromDecimal = DecimalProtoModel.Companion.fromDecimal(this.a.adRevenue);
        rVar.a = decimalProtoModelFromDecimal.getMantissa();
        rVar.b = decimalProtoModelFromDecimal.getExponent();
        c1241s.b = rVar;
        Map<String, String> map = this.a.payload;
        String strB = AbstractC1305ub.b(this.c.a(map != null ? new LinkedHashMap(map) : new LinkedHashMap()));
        byte[] bArrStringToBytesForProtobuf3 = StringUtils.stringToBytesForProtobuf((String) this.e.trim((Object) strB));
        c1241s.k = bArrStringToBytesForProtobuf3;
        int length2 = (StringUtils.stringToBytesForProtobuf(strB).length - bArrStringToBytesForProtobuf3.length) + length;
        if (this.b) {
            EnumC1267t[] enumC1267tArr = EnumC1267t.a;
            c1241s.a = "autocollected".getBytes(ha1.b);
        }
        return new b36(MessageNano.toByteArray(c1241s), Integer.valueOf(length2));
    }
}
