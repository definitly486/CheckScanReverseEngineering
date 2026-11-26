package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import defpackage.bm3;
import defpackage.e02;

/* JADX INFO: loaded from: classes2.dex */
public interface PointerInputScope extends Density {
    <R> Object awaitPointerEventScope(bm3<? super AwaitPointerEventScope, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var);

    /* JADX INFO: renamed from: getExtendedTouchPadding-NH-jbRc */
    default long mo1424getExtendedTouchPaddingNHjbRc() {
        return Size.Companion.m6065getZeroNHjbRc();
    }

    default boolean getInterceptOutOfBoundsChildEvents() {
        return false;
    }

    /* JADX INFO: renamed from: getSize-YbymL2g */
    long mo1425getSizeYbymL2g();

    ViewConfiguration getViewConfiguration();

    default void setInterceptOutOfBoundsChildEvents(boolean z) {
    }

    public static final class DefaultImpls {
        @Deprecated
        /* JADX INFO: renamed from: getExtendedTouchPadding-NH-jbRc, reason: not valid java name */
        public static long m7608getExtendedTouchPaddingNHjbRc(PointerInputScope pointerInputScope) {
            return PointerInputScope.super.mo1424getExtendedTouchPaddingNHjbRc();
        }

        @Deprecated
        public static boolean getInterceptOutOfBoundsChildEvents(PointerInputScope pointerInputScope) {
            return PointerInputScope.super.getInterceptOutOfBoundsChildEvents();
        }

        public static /* synthetic */ void getInterceptOutOfBoundsChildEvents$annotations() {
        }

        @Deprecated
        /* JADX INFO: renamed from: roundToPx--R2X_6o, reason: not valid java name */
        public static int m7609roundToPxR2X_6o(PointerInputScope pointerInputScope, long j) {
            return PointerInputScope.super.mo1427roundToPxR2X_6o(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: roundToPx-0680j_4, reason: not valid java name */
        public static int m7610roundToPx0680j_4(PointerInputScope pointerInputScope, float f) {
            return PointerInputScope.super.mo1428roundToPx0680j_4(f);
        }

        @Deprecated
        public static void setInterceptOutOfBoundsChildEvents(PointerInputScope pointerInputScope, boolean z) {
            PointerInputScope.super.setInterceptOutOfBoundsChildEvents(z);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-GaN1DYA, reason: not valid java name */
        public static float m7611toDpGaN1DYA(PointerInputScope pointerInputScope, long j) {
            return PointerInputScope.super.mo1429toDpGaN1DYA(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m7612toDpu2uoSUM(PointerInputScope pointerInputScope, float f) {
            return PointerInputScope.super.mo1430toDpu2uoSUM(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDpSize-k-rfVVM, reason: not valid java name */
        public static long m7614toDpSizekrfVVM(PointerInputScope pointerInputScope, long j) {
            return PointerInputScope.super.mo1432toDpSizekrfVVM(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toPx--R2X_6o, reason: not valid java name */
        public static float m7615toPxR2X_6o(PointerInputScope pointerInputScope, long j) {
            return PointerInputScope.super.mo1433toPxR2X_6o(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toPx-0680j_4, reason: not valid java name */
        public static float m7616toPx0680j_4(PointerInputScope pointerInputScope, float f) {
            return PointerInputScope.super.mo1434toPx0680j_4(f);
        }

        @Deprecated
        public static Rect toRect(PointerInputScope pointerInputScope, DpRect dpRect) {
            return PointerInputScope.super.toRect(dpRect);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSize-XkaWNTQ, reason: not valid java name */
        public static long m7617toSizeXkaWNTQ(PointerInputScope pointerInputScope, long j) {
            return PointerInputScope.super.mo1435toSizeXkaWNTQ(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-0xMU5do, reason: not valid java name */
        public static long m7618toSp0xMU5do(PointerInputScope pointerInputScope, float f) {
            return PointerInputScope.super.mo1436toSp0xMU5do(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m7619toSpkPz2Gy4(PointerInputScope pointerInputScope, float f) {
            return PointerInputScope.super.mo1437toSpkPz2Gy4(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m7613toDpu2uoSUM(PointerInputScope pointerInputScope, int i) {
            return PointerInputScope.super.mo1431toDpu2uoSUM(i);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m7620toSpkPz2Gy4(PointerInputScope pointerInputScope, int i) {
            return PointerInputScope.super.mo1438toSpkPz2Gy4(i);
        }
    }
}
