package io.appmetrica.analytics.productflow.impl;

import defpackage.me0;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringTrimmer;
import io.appmetrica.analytics.productflow.OfferPrice;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class c {
    public final k a;
    public final p b;
    public final HierarchicalStringTrimmer c;

    public c(k kVar, p pVar, HierarchicalStringTrimmer hierarchicalStringTrimmer) {
        this.a = kVar;
        this.b = pVar;
        this.c = hierarchicalStringTrimmer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TrimmingResult a(a aVar) {
        int i;
        TrimmingResult trimmingResultA;
        y yVar = new y();
        yVar.c = 4;
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim = this.c.trim(aVar.b);
        yVar.b = StringUtils.getUTF8Bytes(trimmingResultTrim.value);
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim2 = this.c.trim(aVar.c);
        yVar.a = StringUtils.getUTF8Bytes(trimmingResultTrim2.value);
        v vVar = new v();
        yVar.f = vVar;
        TrimmingResult trimmingResultA2 = null;
        switch (b.a[aVar.a.ordinal()]) {
            case 1:
                i = 1;
                break;
            case 2:
                i = 2;
                break;
            case 3:
                i = 3;
                break;
            case 4:
                i = 4;
                break;
            case 5:
                i = 5;
                break;
            case 6:
                i = 6;
                break;
            default:
                me0.e();
                return null;
        }
        vVar.a = i;
        OfferPrice offerPrice = aVar.d;
        if (offerPrice != null) {
            trimmingResultA = this.a.a(offerPrice);
            yVar.g = (r) trimmingResultA.value;
        } else {
            trimmingResultA = null;
        }
        Map map = aVar.e;
        if (map != null) {
            trimmingResultA2 = this.b.a(map);
            yVar.h = (t) trimmingResultA2.value;
        }
        return new TrimmingResult(yVar, BytesTruncatedInfo.total(trimmingResultTrim, trimmingResultTrim2, trimmingResultA, trimmingResultA2));
    }
}
