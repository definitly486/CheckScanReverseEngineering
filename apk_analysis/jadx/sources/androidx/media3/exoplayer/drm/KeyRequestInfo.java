package androidx.media3.exoplayer.drm;

import androidx.media3.common.DrmInitData;
import androidx.media3.exoplayer.source.LoadEventInfo;
import com.google.common.collect.j;
import java.util.List;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes3.dex */
public final class KeyRequestInfo {
    public final j<LoadEventInfo> loadInfos;
    public final j<DrmInitData.SchemeData> schemeDatas;

    public static final class Builder {
        private final j.a<LoadEventInfo> loadEventInfos;
        private j<DrmInitData.SchemeData> schemeDatas;

        public Builder() {
            j.b bVar = j.c;
            this.loadEventInfos = new j.a<>();
        }

        public Builder addLoadInfo(LoadEventInfo loadEventInfo) {
            this.loadEventInfos.c(loadEventInfo);
            return this;
        }

        @SideEffectFree
        public KeyRequestInfo build() {
            return new KeyRequestInfo(this);
        }

        public Builder setSchemeDatas(List<DrmInitData.SchemeData> list) {
            this.schemeDatas = j.o(list);
            return this;
        }
    }

    private KeyRequestInfo(Builder builder) {
        this.loadInfos = builder.loadEventInfos.g();
        this.schemeDatas = builder.schemeDatas;
    }
}
