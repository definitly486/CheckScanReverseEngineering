package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.vl;

/* JADX INFO: loaded from: classes.dex */
public final class AnimateBoundsModifierKt {
    private static final BoundsTransform DefaultBoundsTransform = new vl();

    /* JADX INFO: renamed from: androidx.compose.animation.AnimateBoundsModifierKt$animateBounds$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<IntSize, Constraints, Constraints> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(2);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Constraints invoke(IntSize intSize, Constraints constraints) {
            return Constraints.m8982boximpl(m1041invoke2pbfIzA(intSize.m9217unboximpl(), constraints.m9001unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-2pbfIzA, reason: not valid java name */
        public final long m1041invoke2pbfIzA(long j, long j2) {
            return j2;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.AnimateBoundsModifierKt$animateBounds$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements bm3<IntSize, Constraints, Constraints> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(2);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Constraints invoke(IntSize intSize, Constraints constraints) {
            return Constraints.m8982boximpl(m1042invoke2pbfIzA(intSize.m9217unboximpl(), constraints.m9001unboximpl()));
        }

        /* JADX INFO: renamed from: invoke-2pbfIzA, reason: not valid java name */
        public final long m1042invoke2pbfIzA(long j, long j2) {
            return Constraints.Companion.m9005fixedJhjzzOo((int) (j >> 32), (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FiniteAnimationSpec DefaultBoundsTransform$lambda$0(Rect rect, Rect rect2) {
        return AnimationSpecKt.spring(1.0f, 400.0f, VisibilityThresholdsKt.getVisibilityThreshold(Rect.Companion));
    }

    public static final Modifier animateBounds(Modifier modifier, LookaheadScope lookaheadScope, Modifier modifier2, BoundsTransform boundsTransform, boolean z) {
        return modifier.then(new BoundsAnimationElement(lookaheadScope, boundsTransform, AnonymousClass1.INSTANCE, z)).then(modifier2).then(new BoundsAnimationElement(lookaheadScope, boundsTransform, AnonymousClass2.INSTANCE, z));
    }

    public static /* synthetic */ Modifier animateBounds$default(Modifier modifier, LookaheadScope lookaheadScope, Modifier modifier2, BoundsTransform boundsTransform, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            modifier2 = Modifier.Companion;
        }
        if ((i & 4) != 0) {
            boundsTransform = DefaultBoundsTransform;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        return animateBounds(modifier, lookaheadScope, modifier2, boundsTransform, z);
    }
}
