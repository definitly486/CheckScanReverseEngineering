package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import defpackage.e02;

/* JADX INFO: loaded from: classes2.dex */
public interface NestedScrollConnection {

    public static final class DefaultImpls {
        @Deprecated
        /* JADX INFO: renamed from: onPostFling-RZ2iAVY, reason: not valid java name */
        public static Object m7415onPostFlingRZ2iAVY(NestedScrollConnection nestedScrollConnection, long j, long j2, e02<? super Velocity> e02Var) {
            return NestedScrollConnection.super.mo1601onPostFlingRZ2iAVY(j, j2, e02Var);
        }

        @Deprecated
        /* JADX INFO: renamed from: onPostScroll-DzOQY0M, reason: not valid java name */
        public static long m7416onPostScrollDzOQY0M(NestedScrollConnection nestedScrollConnection, long j, long j2, int i) {
            return NestedScrollConnection.super.mo1602onPostScrollDzOQY0M(j, j2, i);
        }

        @Deprecated
        /* JADX INFO: renamed from: onPreFling-QWom1Mo, reason: not valid java name */
        public static Object m7417onPreFlingQWom1Mo(NestedScrollConnection nestedScrollConnection, long j, e02<? super Velocity> e02Var) {
            return NestedScrollConnection.super.mo2130onPreFlingQWom1Mo(j, e02Var);
        }

        @Deprecated
        /* JADX INFO: renamed from: onPreScroll-OzD1aCk, reason: not valid java name */
        public static long m7418onPreScrollOzD1aCk(NestedScrollConnection nestedScrollConnection, long j, int i) {
            return NestedScrollConnection.super.mo2131onPreScrollOzD1aCk(j, i);
        }
    }

    /* JADX INFO: renamed from: onPostFling-RZ2iAVY$suspendImpl, reason: not valid java name */
    static /* synthetic */ Object m7413onPostFlingRZ2iAVY$suspendImpl(NestedScrollConnection nestedScrollConnection, long j, long j2, e02<? super Velocity> e02Var) {
        return Velocity.m9271boximpl(Velocity.Companion.m9291getZero9UxMQ8M());
    }

    /* JADX INFO: renamed from: onPreFling-QWom1Mo$suspendImpl, reason: not valid java name */
    static /* synthetic */ Object m7414onPreFlingQWom1Mo$suspendImpl(NestedScrollConnection nestedScrollConnection, long j, e02<? super Velocity> e02Var) {
        return Velocity.m9271boximpl(Velocity.Companion.m9291getZero9UxMQ8M());
    }

    /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
    default Object mo1601onPostFlingRZ2iAVY(long j, long j2, e02<? super Velocity> e02Var) {
        return m7413onPostFlingRZ2iAVY$suspendImpl(this, j, j2, e02Var);
    }

    /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
    default long mo1602onPostScrollDzOQY0M(long j, long j2, int i) {
        return Offset.Companion.m6003getZeroF1C5BW0();
    }

    /* JADX INFO: renamed from: onPreFling-QWom1Mo */
    default Object mo2130onPreFlingQWom1Mo(long j, e02<? super Velocity> e02Var) {
        return m7414onPreFlingQWom1Mo$suspendImpl(this, j, e02Var);
    }

    /* JADX INFO: renamed from: onPreScroll-OzD1aCk */
    default long mo2131onPreScrollOzD1aCk(long j, int i) {
        return Offset.Companion.m6003getZeroF1C5BW0();
    }
}
