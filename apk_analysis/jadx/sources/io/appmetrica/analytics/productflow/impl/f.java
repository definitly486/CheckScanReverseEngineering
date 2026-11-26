package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringTrimmer;
import io.appmetrica.analytics.productflow.OfferPrice;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class f {
    public final k a;
    public final p b;
    public final HierarchicalStringTrimmer c;

    public f(k kVar, p pVar, HierarchicalStringTrimmer hierarchicalStringTrimmer) {
        this.a = kVar;
        this.b = pVar;
        this.c = hierarchicalStringTrimmer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TrimmingResult a(e eVar) {
        TrimmingResult trimmingResultA;
        y yVar = new y();
        yVar.c = 2;
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim = this.c.trim(eVar.a);
        yVar.b = StringUtils.getUTF8Bytes(trimmingResultTrim.value);
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim2 = this.c.trim(eVar.b);
        yVar.a = StringUtils.getUTF8Bytes(trimmingResultTrim2.value);
        OfferPrice offerPrice = eVar.c;
        TrimmingResult trimmingResultA2 = null;
        if (offerPrice != null) {
            trimmingResultA = this.a.a(offerPrice);
            yVar.g = (r) trimmingResultA.value;
        } else {
            trimmingResultA = null;
        }
        Map map = eVar.d;
        if (map != null) {
            trimmingResultA2 = this.b.a(map);
            yVar.h = (t) trimmingResultA2.value;
        }
        return new TrimmingResult(yVar, BytesTruncatedInfo.total(trimmingResultTrim, trimmingResultTrim2, trimmingResultA, trimmingResultA2));
    }
}
