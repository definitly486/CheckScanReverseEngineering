package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringTrimmer;
import io.appmetrica.analytics.productflow.OfferPrice;
import io.appmetrica.analytics.productflow.OfferReferrer;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class n {
    public final k a;
    public final p b;
    public final l c;
    public final HierarchicalStringTrimmer d;

    public n(k kVar, p pVar, l lVar, HierarchicalStringTrimmer hierarchicalStringTrimmer) {
        this.a = kVar;
        this.b = pVar;
        this.c = lVar;
        this.d = hierarchicalStringTrimmer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TrimmingResult a(m mVar) {
        TrimmingResult trimmingResultA;
        TrimmingResult trimmingResultA2;
        char c;
        y yVar = new y();
        yVar.c = 1;
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim = this.d.trim(mVar.a);
        yVar.a = StringUtils.getUTF8Bytes(trimmingResultTrim.value);
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim2 = this.d.trim(mVar.c);
        yVar.b = StringUtils.getUTF8Bytes(trimmingResultTrim2.value);
        yVar.d = new w();
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim3 = this.d.trim(mVar.b);
        yVar.d.a = StringUtils.getUTF8Bytes(trimmingResultTrim3.value);
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim4 = this.d.trim(mVar.d);
        yVar.d.b = StringUtils.getUTF8Bytes(trimmingResultTrim4.value);
        OfferPrice offerPrice = mVar.e;
        TrimmingResult trimmingResult = null;
        if (offerPrice != null) {
            trimmingResultA = this.a.a(offerPrice);
            yVar.g = (r) trimmingResultA.value;
        } else {
            trimmingResultA = null;
        }
        Map map = mVar.f;
        if (map != null) {
            trimmingResultA2 = this.b.a(map);
            yVar.h = (t) trimmingResultA2.value;
        } else {
            trimmingResultA2 = null;
        }
        OfferReferrer offerReferrer = mVar.g;
        if (offerReferrer != null) {
            l lVar = this.c;
            lVar.getClass();
            u uVar = new u();
            TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim5 = lVar.a.trim(offerReferrer.getType());
            uVar.a = StringUtils.getUTF8Bytes(trimmingResultTrim5.value);
            c = 1;
            TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim6 = lVar.a.trim(offerReferrer.getIdentifier());
            uVar.b = StringUtils.getUTF8Bytes(trimmingResultTrim6.value);
            TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim7 = lVar.a.trim(offerReferrer.getScreen());
            uVar.c = StringUtils.getUTF8Bytes(trimmingResultTrim7.value);
            TrimmingResult trimmingResult2 = new TrimmingResult(uVar, BytesTruncatedInfo.total(trimmingResultTrim5, trimmingResultTrim6, trimmingResultTrim7));
            yVar.d.c = (u) trimmingResult2.value;
            trimmingResult = trimmingResult2;
        } else {
            c = 1;
        }
        BytesTruncatedProvider[] bytesTruncatedProviderArr = new BytesTruncatedProvider[7];
        bytesTruncatedProviderArr[0] = trimmingResultTrim;
        bytesTruncatedProviderArr[c] = trimmingResultTrim2;
        bytesTruncatedProviderArr[2] = trimmingResultTrim3;
        bytesTruncatedProviderArr[3] = trimmingResultTrim4;
        bytesTruncatedProviderArr[4] = trimmingResultA;
        bytesTruncatedProviderArr[5] = trimmingResultA2;
        bytesTruncatedProviderArr[6] = trimmingResult;
        return new TrimmingResult(yVar, BytesTruncatedInfo.total(bytesTruncatedProviderArr));
    }
}
