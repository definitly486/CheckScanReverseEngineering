package androidx.camera.camera2.pipe;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class Result3A {
    private final FrameMetadata frameMetadata;
    private final int status;

    public /* synthetic */ Result3A(int i, FrameMetadata frameMetadata, int i2, jh2 jh2Var) {
        this(i, (i2 & 2) != 0 ? null : frameMetadata, null);
    }

    /* JADX INFO: renamed from: copy-XT8YZL4$default, reason: not valid java name */
    public static /* synthetic */ Result3A m654copyXT8YZL4$default(Result3A result3A, int i, FrameMetadata frameMetadata, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = result3A.status;
        }
        if ((i2 & 2) != 0) {
            frameMetadata = result3A.frameMetadata;
        }
        return result3A.m656copyXT8YZL4(i, frameMetadata);
    }

    /* JADX INFO: renamed from: component1-JvTi9ms, reason: not valid java name */
    public final int m655component1JvTi9ms() {
        return this.status;
    }

    public final FrameMetadata component2() {
        return this.frameMetadata;
    }

    /* JADX INFO: renamed from: copy-XT8YZL4, reason: not valid java name */
    public final Result3A m656copyXT8YZL4(int i, FrameMetadata frameMetadata) {
        return new Result3A(i, frameMetadata, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Result3A)) {
            return false;
        }
        Result3A result3A = (Result3A) obj;
        return Status.m661equalsimpl0(this.status, result3A.status) && aa4.e(this.frameMetadata, result3A.frameMetadata);
    }

    public final FrameMetadata getFrameMetadata() {
        return this.frameMetadata;
    }

    /* JADX INFO: renamed from: getStatus-JvTi9ms, reason: not valid java name */
    public final int m657getStatusJvTi9ms() {
        return this.status;
    }

    public int hashCode() {
        int iM662hashCodeimpl = Status.m662hashCodeimpl(this.status) * 31;
        FrameMetadata frameMetadata = this.frameMetadata;
        return iM662hashCodeimpl + (frameMetadata == null ? 0 : frameMetadata.hashCode());
    }

    public String toString() {
        return "Result3A(status=" + ((Object) Status.m663toStringimpl(this.status)) + ", frameMetadata=" + this.frameMetadata + ')';
    }

    public static final class Status {
        private final int value;
        public static final Companion Companion = new Companion(null);
        private static final int OK = m659constructorimpl(0);
        private static final int FRAME_LIMIT_REACHED = m659constructorimpl(1);
        private static final int TIME_LIMIT_REACHED = m659constructorimpl(2);
        private static final int SUBMIT_CANCELLED = m659constructorimpl(3);
        private static final int SUBMIT_FAILED = m659constructorimpl(4);

        private /* synthetic */ Status(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Status m658boximpl(int i) {
            return new Status(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        private static int m659constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m660equalsimpl(int i, Object obj) {
            return (obj instanceof Status) && i == ((Status) obj).m664unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m661equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m662hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m663toStringimpl(int i) {
            return qz0.d("Status(value=", i, ')');
        }

        public boolean equals(Object obj) {
            return m660equalsimpl(this.value, obj);
        }

        public final int getValue() {
            return this.value;
        }

        public int hashCode() {
            return m662hashCodeimpl(this.value);
        }

        public String toString() {
            return m663toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m664unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getFRAME_LIMIT_REACHED-JvTi9ms, reason: not valid java name */
            public final int m665getFRAME_LIMIT_REACHEDJvTi9ms() {
                return Status.FRAME_LIMIT_REACHED;
            }

            /* JADX INFO: renamed from: getOK-JvTi9ms, reason: not valid java name */
            public final int m666getOKJvTi9ms() {
                return Status.OK;
            }

            /* JADX INFO: renamed from: getSUBMIT_CANCELLED-JvTi9ms, reason: not valid java name */
            public final int m667getSUBMIT_CANCELLEDJvTi9ms() {
                return Status.SUBMIT_CANCELLED;
            }

            /* JADX INFO: renamed from: getSUBMIT_FAILED-JvTi9ms, reason: not valid java name */
            public final int m668getSUBMIT_FAILEDJvTi9ms() {
                return Status.SUBMIT_FAILED;
            }

            /* JADX INFO: renamed from: getTIME_LIMIT_REACHED-JvTi9ms, reason: not valid java name */
            public final int m669getTIME_LIMIT_REACHEDJvTi9ms() {
                return Status.TIME_LIMIT_REACHED;
            }

            private Companion() {
            }
        }
    }

    private Result3A(int i, FrameMetadata frameMetadata) {
        this.status = i;
        this.frameMetadata = frameMetadata;
    }

    public /* synthetic */ Result3A(int i, FrameMetadata frameMetadata, jh2 jh2Var) {
        this(i, frameMetadata);
    }
}
