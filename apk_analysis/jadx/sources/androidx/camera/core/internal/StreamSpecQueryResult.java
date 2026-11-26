package androidx.camera.core.internal;

import androidx.camera.core.UseCase;
import androidx.camera.core.impl.StreamSpec;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.mx2;
import defpackage.rg;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class StreamSpecQueryResult {
    private final int maxSupportedFrameRate;
    private final Map<UseCase, StreamSpec> streamSpecs;

    public /* synthetic */ StreamSpecQueryResult(Map map, int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? mx2.b : map, (i2 & 2) != 0 ? Integer.MAX_VALUE : i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StreamSpecQueryResult copy$default(StreamSpecQueryResult streamSpecQueryResult, Map map, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            map = streamSpecQueryResult.streamSpecs;
        }
        if ((i2 & 2) != 0) {
            i = streamSpecQueryResult.maxSupportedFrameRate;
        }
        return streamSpecQueryResult.copy(map, i);
    }

    public final Map<UseCase, StreamSpec> component1() {
        return this.streamSpecs;
    }

    public final int component2() {
        return this.maxSupportedFrameRate;
    }

    public final StreamSpecQueryResult copy(Map<UseCase, ? extends StreamSpec> map, int i) {
        map.getClass();
        return new StreamSpecQueryResult(map, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamSpecQueryResult)) {
            return false;
        }
        StreamSpecQueryResult streamSpecQueryResult = (StreamSpecQueryResult) obj;
        return aa4.e(this.streamSpecs, streamSpecQueryResult.streamSpecs) && this.maxSupportedFrameRate == streamSpecQueryResult.maxSupportedFrameRate;
    }

    public final int getMaxSupportedFrameRate() {
        return this.maxSupportedFrameRate;
    }

    public final Map<UseCase, StreamSpec> getStreamSpecs() {
        return this.streamSpecs;
    }

    public int hashCode() {
        return Integer.hashCode(this.maxSupportedFrameRate) + (this.streamSpecs.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StreamSpecQueryResult(streamSpecs=");
        sb.append(this.streamSpecs);
        sb.append(", maxSupportedFrameRate=");
        return rg.h(sb, this.maxSupportedFrameRate, ')');
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StreamSpecQueryResult(Map<UseCase, ? extends StreamSpec> map, int i) {
        map.getClass();
        this.streamSpecs = map;
        this.maxSupportedFrameRate = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StreamSpecQueryResult() {
        this(null, 0, 3, 0 == true ? 1 : 0);
    }
}
