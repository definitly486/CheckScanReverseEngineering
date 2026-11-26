package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.OutputStatus;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.mk2;
import defpackage.xp1;

/* JADX INFO: loaded from: classes.dex */
public final class OutputResult<T> {
    public static final Companion Companion = new Companion(null);
    private final Object result;

    private /* synthetic */ OutputResult(Object obj) {
        this.result = obj;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ OutputResult m964boximpl(Object obj) {
        return new OutputResult(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <T> Object m965constructorimpl(Object obj) {
        return obj;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m966equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof OutputResult) && aa4.e(obj, ((OutputResult) obj2).m974unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m967equalsimpl0(Object obj, Object obj2) {
        return aa4.e(obj, obj2);
    }

    /* JADX INFO: renamed from: getAvailable-impl, reason: not valid java name */
    public static final boolean m968getAvailableimpl(Object obj) {
        return (m969getFailureimpl(obj) || obj == null) ? false : true;
    }

    /* JADX INFO: renamed from: getFailure-impl, reason: not valid java name */
    public static final boolean m969getFailureimpl(Object obj) {
        return obj instanceof OutputStatus;
    }

    public static /* synthetic */ void getOutput$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getOutput-impl, reason: not valid java name */
    public static final T m970getOutputimpl(Object obj) {
        if (m968getAvailableimpl(obj)) {
            return obj;
        }
        return null;
    }

    /* JADX INFO: renamed from: getStatus-U7r42EA, reason: not valid java name */
    public static final int m971getStatusU7r42EA(Object obj) {
        if (m968getAvailableimpl(obj)) {
            return OutputStatus.Companion.m517getAVAILABLEU7r42EA();
        }
        return obj == null ? OutputStatus.Companion.m523getUNAVAILABLEU7r42EA() : ((OutputStatus) obj).m516unboximpl();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m972hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m973toStringimpl(Object obj) {
        return "OutputResult(result=" + obj + ')';
    }

    public boolean equals(Object obj) {
        return m966equalsimpl(this.result, obj);
    }

    public int hashCode() {
        return m972hashCodeimpl(this.result);
    }

    public String toString() {
        return m973toStringimpl(this.result);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Object m974unboximpl() {
        return this.result;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: completeWithFailure-zfbXvnA, reason: not valid java name */
        public final <T> boolean m975completeWithFailurezfbXvnA(xp1<OutputResult<T>> xp1Var, int i) {
            xp1Var.getClass();
            return xp1Var.f(OutputResult.m964boximpl(OutputResult.m965constructorimpl(OutputStatus.m510boximpl(i))));
        }

        public final <T> boolean completeWithOutput(xp1<OutputResult<T>> xp1Var, T t) {
            xp1Var.getClass();
            return xp1Var.f(OutputResult.m964boximpl(OutputResult.m965constructorimpl(t)));
        }

        /* JADX INFO: renamed from: failure-SpuARzU, reason: not valid java name */
        public final <T> Object m976failureSpuARzU(int i) {
            return OutputResult.m965constructorimpl(OutputStatus.m510boximpl(i));
        }

        /* JADX INFO: renamed from: from-EASlEvA, reason: not valid java name */
        public final <T> Object m977fromEASlEvA(T t) {
            return OutputResult.m965constructorimpl(t);
        }

        public final <T> T outputOrNull(mk2<? extends OutputResult<? extends T>> mk2Var) {
            mk2Var.getClass();
            if (mk2Var.P() && !mk2Var.isCancelled()) {
                T t = (T) mk2Var.m().m974unboximpl();
                if (OutputResult.m968getAvailableimpl(t)) {
                    return t;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: outputStatus-NkQ9T_M, reason: not valid java name */
        public final <T> int m978outputStatusNkQ9T_M(mk2<? extends OutputResult<? extends T>> mk2Var) {
            mk2Var.getClass();
            if (!mk2Var.P()) {
                return OutputStatus.Companion.m522getPENDINGU7r42EA();
            }
            if (mk2Var.isCancelled()) {
                return OutputStatus.Companion.m523getUNAVAILABLEU7r42EA();
            }
            Object objM974unboximpl = mk2Var.m().m974unboximpl();
            if (OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                return OutputStatus.Companion.m517getAVAILABLEU7r42EA();
            }
            return objM974unboximpl == null ? OutputStatus.Companion.m523getUNAVAILABLEU7r42EA() : ((OutputStatus) objM974unboximpl).m516unboximpl();
        }

        private Companion() {
        }
    }
}
