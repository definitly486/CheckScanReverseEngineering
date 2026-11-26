package io.appmetrica.analytics.productflow.impl;

import androidx.media3.datasource.cache.CacheDataSink;
import io.appmetrica.analytics.coreapi.internal.event.AppMetricaEventData;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringTrimmer;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: loaded from: classes5.dex */
public final class j extends AppMetricaEventData {
    public final TrimmingResult a;
    public final String b;
    public final int c;

    public j(h hVar) {
        HierarchicalStringTrimmer hierarchicalStringTrimmer = new HierarchicalStringTrimmer(1024);
        this.a = new i(new k(hierarchicalStringTrimmer), new p(new HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer(CacheDataSink.DEFAULT_BUFFER_SIZE, 1024, 1024)), hierarchicalStringTrimmer).a(hVar);
        this.b = "FlowStepEvent(productId=" + hVar.c() + ", productOfferId=" + hVar.d() + ", stepType=" + hVar.f() + ", stepOption=" + hVar.e() + ", price=" + hVar.b() + ", payload=" + hVar.a() + ')';
        this.c = 44;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.AppMetricaEventData
    public final int getBytesTruncated() {
        return this.a.getBytesTruncated();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.appmetrica.analytics.coreapi.internal.event.AppMetricaEventData
    public final byte[] getData() {
        return MessageNano.toByteArray((MessageNano) this.a.value);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.AppMetricaEventData
    public final String getDescription() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.event.AppMetricaEventData
    public final int getType() {
        return this.c;
    }
}
