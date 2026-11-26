package androidx.compose.ui;

import defpackage.aa4;
import defpackage.bm3;
import defpackage.e02;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.y22;
import defpackage.z22;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class SessionMutex<T> {
    private final AtomicReference<Session<T>> currentSessionHolder;

    public static final class Session<T> {
        private final mb4 job;
        private final T value;

        public Session(mb4 mb4Var, T t) {
            this.job = mb4Var;
            this.value = t;
        }

        public final mb4 getJob() {
            return this.job;
        }

        public final T getValue() {
            return this.value;
        }
    }

    private /* synthetic */ SessionMutex(AtomicReference atomicReference) {
        this.currentSessionHolder = atomicReference;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ SessionMutex m5668boximpl(AtomicReference atomicReference) {
        return new SessionMutex(atomicReference);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <T> AtomicReference<Session<T>> m5669constructorimpl() {
        return m5670constructorimpl(new AtomicReference(null));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5671equalsimpl(AtomicReference<Session<T>> atomicReference, Object obj) {
        return (obj instanceof SessionMutex) && aa4.e(atomicReference, ((SessionMutex) obj).m5677unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5672equalsimpl0(AtomicReference<Session<Object>> atomicReference, AtomicReference<Session<Object>> atomicReference2) {
        return aa4.e(atomicReference, atomicReference2);
    }

    /* JADX INFO: renamed from: getCurrentSession-impl, reason: not valid java name */
    public static final T m5673getCurrentSessionimpl(AtomicReference<Session<T>> atomicReference) {
        Session<T> session = atomicReference.get();
        if (session != null) {
            return session.getValue();
        }
        return null;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5674hashCodeimpl(AtomicReference<Session<T>> atomicReference) {
        return atomicReference.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5675toStringimpl(AtomicReference<Session<T>> atomicReference) {
        return "SessionMutex(currentSessionHolder=" + atomicReference + ')';
    }

    /* JADX INFO: renamed from: withSessionCancellingPrevious-impl, reason: not valid java name */
    public static final <R> Object m5676withSessionCancellingPreviousimpl(AtomicReference<Session<T>> atomicReference, nl3<? super y22, ? extends T> nl3Var, bm3<? super T, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        return z22.c(new SessionMutex$withSessionCancellingPrevious$2(nl3Var, atomicReference, bm3Var, null), e02Var);
    }

    public boolean equals(Object obj) {
        return m5671equalsimpl(this.currentSessionHolder, obj);
    }

    public int hashCode() {
        return m5674hashCodeimpl(this.currentSessionHolder);
    }

    public String toString() {
        return m5675toStringimpl(this.currentSessionHolder);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ AtomicReference m5677unboximpl() {
        return this.currentSessionHolder;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static <T> AtomicReference<Session<T>> m5670constructorimpl(AtomicReference<Session<T>> atomicReference) {
        return atomicReference;
    }
}
