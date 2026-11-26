package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.media.ImageSource;
import defpackage.lg;
import defpackage.n1;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface StreamGraph {

    public static final class DefaultImpls {
        @Deprecated
        /* JADX INFO: renamed from: get-aKI5c8E, reason: not valid java name */
        public static CameraStream m720getaKI5c8E(StreamGraph streamGraph, int i) {
            return StreamGraph.super.m716getaKI5c8E(i);
        }

        @Deprecated
        /* JADX INFO: renamed from: get-iYJqvbA, reason: not valid java name */
        public static OutputStream m721getiYJqvbA(StreamGraph streamGraph, int i) {
            return StreamGraph.super.m717getiYJqvbA(i);
        }
    }

    public static final class OutputLatency {
        private final long estimatedCaptureLatencyNs;
        private final long estimatedProcessingLatencyNs;

        public OutputLatency(long j, long j2) {
            this.estimatedCaptureLatencyNs = j;
            this.estimatedProcessingLatencyNs = j2;
        }

        public static /* synthetic */ OutputLatency copy$default(OutputLatency outputLatency, long j, long j2, int i, Object obj) {
            if ((i & 1) != 0) {
                j = outputLatency.estimatedCaptureLatencyNs;
            }
            if ((i & 2) != 0) {
                j2 = outputLatency.estimatedProcessingLatencyNs;
            }
            return outputLatency.copy(j, j2);
        }

        public final long component1() {
            return this.estimatedCaptureLatencyNs;
        }

        public final long component2() {
            return this.estimatedProcessingLatencyNs;
        }

        public final OutputLatency copy(long j, long j2) {
            return new OutputLatency(j, j2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OutputLatency)) {
                return false;
            }
            OutputLatency outputLatency = (OutputLatency) obj;
            return this.estimatedCaptureLatencyNs == outputLatency.estimatedCaptureLatencyNs && this.estimatedProcessingLatencyNs == outputLatency.estimatedProcessingLatencyNs;
        }

        public final long getEstimatedCaptureLatencyNs() {
            return this.estimatedCaptureLatencyNs;
        }

        public final long getEstimatedLatencyNs() {
            return this.estimatedCaptureLatencyNs + this.estimatedProcessingLatencyNs;
        }

        public final long getEstimatedProcessingLatencyNs() {
            return this.estimatedProcessingLatencyNs;
        }

        public int hashCode() {
            return Long.hashCode(this.estimatedProcessingLatencyNs) + (Long.hashCode(this.estimatedCaptureLatencyNs) * 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("OutputLatency(estimatedCaptureLatencyNs=");
            sb.append(this.estimatedCaptureLatencyNs);
            sb.append(", estimatedProcessingLatencyNs=");
            return lg.f(sb, this.estimatedProcessingLatencyNs, ')');
        }
    }

    /* JADX INFO: renamed from: getOutputLatency-IL232MI$default, reason: not valid java name */
    static /* synthetic */ OutputLatency m715getOutputLatencyIL232MI$default(StreamGraph streamGraph, int i, OutputId outputId, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: getOutputLatency-IL232MI");
            return null;
        }
        if ((i2 & 2) != 0) {
            outputId = null;
        }
        return streamGraph.mo719getOutputLatencyIL232MI(i, outputId);
    }

    CameraStream get(CameraStream.Config config);

    /* JADX INFO: renamed from: get-aKI5c8E, reason: not valid java name */
    default CameraStream m716getaKI5c8E(int i) {
        Object next;
        Iterator<T> it = getStreams().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (StreamId.m726equalsimpl0(((CameraStream) next).m383getIdptHMqGs(), i)) {
                return (CameraStream) next;
            }
        }
        next = null;
        return (CameraStream) next;
    }

    /* JADX INFO: renamed from: get-iYJqvbA, reason: not valid java name */
    default OutputStream m717getiYJqvbA(int i) {
        Object next;
        Iterator<T> it = getOutputs().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (OutputId.m506equalsimpl0(((OutputStream) next).mo527getId4LaLFng(), i)) {
                return (OutputStream) next;
            }
        }
        next = null;
        return (OutputStream) next;
    }

    /* JADX INFO: renamed from: getImageSource-aKI5c8E, reason: not valid java name */
    ImageSource mo718getImageSourceaKI5c8E(int i);

    List<InputStream> getInputs();

    /* JADX INFO: renamed from: getOutputLatency-IL232MI, reason: not valid java name */
    OutputLatency mo719getOutputLatencyIL232MI(int i, OutputId outputId);

    List<OutputStream> getOutputs();

    Set<StreamId> getStreamIds();

    List<CameraStream> getStreams();
}
