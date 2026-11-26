package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringTrimmer;
import io.appmetrica.analytics.productflow.OfferPrice;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class i {
    public final k a;
    public final p b;
    public final HierarchicalStringTrimmer c;

    public i(k kVar, p pVar, HierarchicalStringTrimmer hierarchicalStringTrimmer) {
        this.a = kVar;
        this.b = pVar;
        this.c = hierarchicalStringTrimmer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TrimmingResult a(h hVar) {
        TrimmingResult trimmingResultA;
        y yVar = new y();
        yVar.c = 3;
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim = this.c.trim(hVar.a);
        yVar.b = StringUtils.getUTF8Bytes(trimmingResultTrim.value);
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim2 = this.c.trim(hVar.b);
        yVar.a = StringUtils.getUTF8Bytes(trimmingResultTrim2.value);
        yVar.e = new x();
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim3 = this.c.trim(hVar.c);
        yVar.e.a = StringUtils.getUTF8Bytes(trimmingResultTrim3.value);
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim4 = this.c.trim(hVar.d);
        yVar.e.b = StringUtils.getUTF8Bytes(trimmingResultTrim4.value);
        OfferPrice offerPrice = hVar.e;
        TrimmingResult trimmingResultA2 = null;
        if (offerPrice != null) {
            trimmingResultA = this.a.a(offerPrice);
            yVar.g = (r) trimmingResultA.value;
        } else {
            trimmingResultA = null;
        }
        Map map = hVar.f;
        if (map != null) {
            trimmingResultA2 = this.b.a(map);
            yVar.h = (t) trimmingResultA2.value;
        }
        return new TrimmingResult(yVar, BytesTruncatedInfo.total(trimmingResultTrim, trimmingResultTrim2, trimmingResultTrim3, trimmingResultTrim4, trimmingResultA, trimmingResultA2));
    }
}
