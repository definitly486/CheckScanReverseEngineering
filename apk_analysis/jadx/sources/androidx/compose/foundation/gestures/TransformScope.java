package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface TransformScope {

    public static final class DefaultImpls {
        @Deprecated
        /* JADX INFO: renamed from: transformByWithCentroid-IEwrmTk, reason: not valid java name */
        public static void m1649transformByWithCentroidIEwrmTk(TransformScope transformScope, long j, float f, long j2, float f2) {
            TransformScope.super.mo1477transformByWithCentroidIEwrmTk(j, f, j2, f2);
        }
    }

    /* JADX INFO: renamed from: transformBy-d-4ec7I$default, reason: not valid java name */
    static /* synthetic */ void m1646transformByd4ec7I$default(TransformScope transformScope, float f, long j, float f2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: transformBy-d-4ec7I");
            return;
        }
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        if ((i & 2) != 0) {
            j = Offset.Companion.m6003getZeroF1C5BW0();
        }
        if ((i & 4) != 0) {
            f2 = 0.0f;
        }
        transformScope.mo1476transformByd4ec7I(f, j, f2);
    }

    /* JADX INFO: renamed from: transformByWithCentroid-IEwrmTk$default, reason: not valid java name */
    static /* synthetic */ void m1647transformByWithCentroidIEwrmTk$default(TransformScope transformScope, long j, float f, long j2, float f2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: transformByWithCentroid-IEwrmTk");
            return;
        }
        if ((i & 1) != 0) {
            j = Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        long j3 = j;
        if ((i & 2) != 0) {
            f = 1.0f;
        }
        float f3 = f;
        if ((i & 4) != 0) {
            j2 = Offset.Companion.m6003getZeroF1C5BW0();
        }
        long j4 = j2;
        if ((i & 8) != 0) {
            f2 = 0.0f;
        }
        transformScope.mo1477transformByWithCentroidIEwrmTk(j3, f3, j4, f2);
    }

    /* JADX INFO: renamed from: transformBy-d-4ec7I */
    void mo1476transformByd4ec7I(float f, long j, float f2);

    /* JADX INFO: renamed from: transformByWithCentroid-IEwrmTk */
    default void mo1477transformByWithCentroidIEwrmTk(long j, float f, long j2, float f2) {
        mo1476transformByd4ec7I(f, j2, f2);
    }
}
