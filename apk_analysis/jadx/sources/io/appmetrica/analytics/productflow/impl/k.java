package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringTrimmer;
import io.appmetrica.analytics.coreutils.internal.proto.DecimalProtoModel;
import io.appmetrica.analytics.productflow.OfferPrice;

/* JADX INFO: loaded from: classes5.dex */
public final class k {
    public final HierarchicalStringTrimmer a;

    public k(HierarchicalStringTrimmer hierarchicalStringTrimmer) {
        this.a = hierarchicalStringTrimmer;
    }

    public final TrimmingResult a(OfferPrice offerPrice) {
        r rVar = new r();
        DecimalProtoModel decimalProtoModelFromDecimal = DecimalProtoModel.Companion.fromDecimal(offerPrice.getAmount());
        rVar.b = decimalProtoModelFromDecimal.getMantissa();
        rVar.c = decimalProtoModelFromDecimal.getExponent();
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim = this.a.trim(offerPrice.getUnit());
        rVar.a = StringUtils.getUTF8Bytes(trimmingResultTrim.value);
        return new TrimmingResult(rVar, new BytesTruncatedInfo(BytesTruncatedInfo.total(trimmingResultTrim).getBytesTruncated()));
    }
}
