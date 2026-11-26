package androidx.camera.camera2.pipe;

import defpackage.cg;
import defpackage.n1;
import defpackage.oo5;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface FrameReference {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Frame acquire$default(Companion companion, FrameReference frameReference, Set set, int i, Object obj) {
            if ((i & 1) != 0) {
                set = null;
            }
            return companion.acquire(frameReference, set);
        }

        public final Frame acquire(FrameReference frameReference, Set<StreamId> set) {
            frameReference.getClass();
            Frame frameTryAcquire = frameReference.tryAcquire(set);
            if (frameTryAcquire != null) {
                return frameTryAcquire;
            }
            cg.f(frameReference, "Failed to acquire a strong reference to ", 33);
            return null;
        }
    }

    public static final class DefaultImpls {
        @Deprecated
        /* JADX INFO: renamed from: imageStatus-BWjvHWQ, reason: not valid java name */
        public static int m477imageStatusBWjvHWQ(FrameReference frameReference, int i) {
            return FrameReference.super.mo475imageStatusBWjvHWQ(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Frame tryAcquire$default(FrameReference frameReference, Set set, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: tryAcquire");
            return null;
        }
        if ((i & 1) != 0) {
            set = null;
        }
        return frameReference.tryAcquire(set);
    }

    /* JADX INFO: renamed from: getFrameId-OMxQvVY, reason: not valid java name */
    long mo471getFrameIdOMxQvVY();

    /* JADX INFO: renamed from: getFrameInfoStatus-U7r42EA, reason: not valid java name */
    int mo472getFrameInfoStatusU7r42EA();

    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM, reason: not valid java name */
    long mo473getFrameNumberUgla2oM();

    /* JADX INFO: renamed from: getFrameTimestamp-LS1Wq50, reason: not valid java name */
    long mo474getFrameTimestampLS1Wq50();

    Set<StreamId> getImageStreams();

    RequestMetadata getRequestMetadata();

    /* JADX INFO: renamed from: imageStatus-BWjvHWQ, reason: not valid java name */
    default int mo475imageStatusBWjvHWQ(int i) {
        throw new oo5("An operation is not implemented: Not yet implemented");
    }

    /* JADX INFO: renamed from: imageStatus-Oo2lJfM, reason: not valid java name */
    int mo476imageStatusOo2lJfM(int i);

    Frame tryAcquire(Set<StreamId> set);
}
