package androidx.compose.foundation.gestures;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.relocation.BringIntoViewResponder;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.MeasuredSizeAwareModifierNode;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a31;
import defpackage.a32;
import defpackage.aa4;
import defpackage.av0;
import defpackage.c31;
import defpackage.c32;
import defpackage.e02;
import defpackage.ga1;
import defpackage.j59;
import defpackage.ll3;
import defpackage.me0;
import defpackage.w22;
import defpackage.zya;

/* JADX INFO: loaded from: classes.dex */
public final class ContentInViewNode extends Modifier.Node implements BringIntoViewResponder, CompositionLocalConsumerModifierNode, MeasuredSizeAwareModifierNode {
    public static final int $stable = 8;
    private BringIntoViewSpec bringIntoViewSpec;
    private ll3<Rect> getFocusedRect;
    private boolean isAnimationRunning;
    private Orientation orientation;
    private boolean reverseDirection;
    private final ScrollingLogic scrollingLogic;
    private final boolean shouldAutoInvalidate;
    private boolean trackingFocusedChild;
    private final BringIntoViewRequestPriorityQueue bringIntoViewRequests = new BringIntoViewRequestPriorityQueue();
    private long viewportSize = ContentInViewNodeKt.UnspecifiedIntSize;

    public static final class Request {
        public static final int $stable = 8;
        private final a31<j59> continuation;
        private final ll3<Rect> currentBounds;

        /* JADX WARN: Multi-variable type inference failed */
        public Request(ll3<Rect> ll3Var, a31<? super j59> a31Var) {
            this.currentBounds = ll3Var;
            this.continuation = a31Var;
        }

        public final a31<j59> getContinuation() {
            return this.continuation;
        }

        public final ll3<Rect> getCurrentBounds() {
            return this.currentBounds;
        }

        public String toString() {
            w22 w22Var = (w22) this.continuation.getContext().get(w22.d);
            String str = w22Var != null ? w22Var.c : null;
            StringBuilder sb = new StringBuilder("Request@");
            int iHashCode = hashCode();
            ga1.b(16);
            String string = Integer.toString(iHashCode, 16);
            string.getClass();
            sb.append(string);
            sb.append(str != null ? me0.c("[", str, "](") : "(");
            sb.append("currentBounds()=");
            sb.append(this.currentBounds.invoke());
            sb.append(", continuation=");
            sb.append(this.continuation);
            sb.append(')');
            return sb.toString();
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.Vertical.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.Horizontal.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ContentInViewNode(Orientation orientation, ScrollingLogic scrollingLogic, boolean z, BringIntoViewSpec bringIntoViewSpec, ll3<Rect> ll3Var) {
        this.orientation = orientation;
        this.scrollingLogic = scrollingLogic;
        this.reverseDirection = z;
        this.bringIntoViewSpec = bringIntoViewSpec;
        this.getFocusedRect = ll3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: calculateScrollDelta-I_oMVgE, reason: not valid java name */
    public final float m1460calculateScrollDeltaI_oMVgE(BringIntoViewSpec bringIntoViewSpec, long j) {
        long j2 = this.viewportSize;
        Rect rectFindBringIntoViewRequest = findBringIntoViewRequest();
        if (rectFindBringIntoViewRequest == null) {
            rectFindBringIntoViewRequest = this.trackingFocusedChild ? this.getFocusedRect.invoke() : null;
            if (rectFindBringIntoViewRequest == null) {
                return 0.0f;
            }
        }
        long jM9225toSizeozmzZPI = IntSizeKt.m9225toSizeozmzZPI(j2);
        int i = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
        if (i == 1) {
            return bringIntoViewSpec.calculateScrollDistance(rectFindBringIntoViewRequest.getTop() - IntOffset.m9171getYimpl(j), rectFindBringIntoViewRequest.getBottom() - rectFindBringIntoViewRequest.getTop(), Float.intBitsToFloat((int) (jM9225toSizeozmzZPI & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        }
        if (i == 2) {
            return bringIntoViewSpec.calculateScrollDistance(rectFindBringIntoViewRequest.getLeft() - IntOffset.m9170getXimpl(j), rectFindBringIntoViewRequest.getRight() - rectFindBringIntoViewRequest.getLeft(), Float.intBitsToFloat((int) (jM9225toSizeozmzZPI >> 32)));
        }
        me0.e();
        return 0.0f;
    }

    /* JADX INFO: renamed from: compareTo-TemP2vQ, reason: not valid java name */
    private final int m1461compareToTemP2vQ(long j, long j2) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
        if (i == 1) {
            return aa4.f((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE), (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        if (i == 2) {
            return aa4.f((int) (j >> 32), (int) (j2 >> 32));
        }
        me0.e();
        return 0;
    }

    /* JADX INFO: renamed from: compareTo-iLBOSCw, reason: not valid java name */
    private final int m1462compareToiLBOSCw(long j, long j2) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
        if (i == 1) {
            return Float.compare(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        }
        if (i == 2) {
            return Float.compare(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 >> 32)));
        }
        me0.e();
        return 0;
    }

    private final Rect computeDestination(Rect rect) {
        return rect.m6024translatek4lQ0M(Offset.m5979constructorimpl(m1467relocationOffsetfbGrOKE(rect, m1469getViewportSizeOrZeroYbymL2g$foundation(), IntOffset.Companion.m9181getZeronOccac()) ^ (-9223372034707292160L)));
    }

    private final Rect findBringIntoViewRequest() {
        MutableVector mutableVector = this.bringIntoViewRequests.requests;
        int size = mutableVector.getSize() - 1;
        Object[] objArr = mutableVector.content;
        Rect rect = null;
        if (size < objArr.length) {
            while (size >= 0) {
                Rect rectInvoke = ((Request) objArr[size]).getCurrentBounds().invoke();
                if (rectInvoke != null) {
                    if (m1462compareToiLBOSCw(rectInvoke.m6020getSizeNHjbRc(), IntSizeKt.m9225toSizeozmzZPI(m1469getViewportSizeOrZeroYbymL2g$foundation())) > 0) {
                        return rect == null ? rectInvoke : rect;
                    }
                    rect = rectInvoke;
                }
                size--;
            }
        }
        return rect;
    }

    /* JADX INFO: renamed from: isMaxVisible--EQwtKw, reason: not valid java name */
    private final boolean m1463isMaxVisibleEQwtKw(Rect rect, long j, long j2) {
        long jM1467relocationOffsetfbGrOKE = m1467relocationOffsetfbGrOKE(rect, j, j2);
        return Math.abs(Float.intBitsToFloat((int) (jM1467relocationOffsetfbGrOKE >> 32))) <= 0.5f && Math.abs(Float.intBitsToFloat((int) (jM1467relocationOffsetfbGrOKE & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) <= 0.5f;
    }

    /* JADX INFO: renamed from: isMaxVisible--EQwtKw$default, reason: not valid java name */
    public static /* synthetic */ boolean m1464isMaxVisibleEQwtKw$default(ContentInViewNode contentInViewNode, Rect rect, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = contentInViewNode.m1469getViewportSizeOrZeroYbymL2g$foundation();
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = IntOffset.Companion.m9181getZeronOccac();
        }
        return contentInViewNode.m1463isMaxVisibleEQwtKw(rect, j3, j2);
    }

    /* JADX INFO: renamed from: launchAnimation--gyyYBs, reason: not valid java name */
    private final void m1465launchAnimationgyyYBs(long j) {
        BringIntoViewSpec bringIntoViewSpecRequireBringIntoViewSpec = requireBringIntoViewSpec();
        if (this.isAnimationRunning) {
            InlineClassHelperKt.throwIllegalStateException("launchAnimation called when previous animation was running");
        }
        av0.c(getCoroutineScope(), null, c32.UNDISPATCHED, new ContentInViewNode$launchAnimation$2(this, new UpdatableAnimationState(requireBringIntoViewSpec().getScrollAnimationSpec()), bringIntoViewSpecRequireBringIntoViewSpec, j, null), 1);
    }

    /* JADX INFO: renamed from: launchAnimation--gyyYBs$default, reason: not valid java name */
    public static /* synthetic */ void m1466launchAnimationgyyYBs$default(ContentInViewNode contentInViewNode, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = IntOffset.Companion.m9181getZeronOccac();
        }
        contentInViewNode.m1465launchAnimationgyyYBs(j);
    }

    /* JADX INFO: renamed from: relocationOffset-fbGrOKE, reason: not valid java name */
    private final long m1467relocationOffsetfbGrOKE(Rect rect, long j, long j2) {
        long jM9225toSizeozmzZPI = IntSizeKt.m9225toSizeozmzZPI(j);
        int i = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
        if (i == 1) {
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(requireBringIntoViewSpec().calculateScrollDistance(rect.getTop() - IntOffset.m9171getYimpl(j2), rect.getBottom() - rect.getTop(), Float.intBitsToFloat((int) (jM9225toSizeozmzZPI & MuxerUtil.UNSIGNED_INT_MAX_VALUE))))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        if (i == 2) {
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(requireBringIntoViewSpec().calculateScrollDistance(rect.getLeft() - IntOffset.m9170getXimpl(j2), rect.getRight() - rect.getLeft(), Float.intBitsToFloat((int) (jM9225toSizeozmzZPI >> 32))))) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        me0.e();
        return 0L;
    }

    private final BringIntoViewSpec requireBringIntoViewSpec() {
        BringIntoViewSpec bringIntoViewSpec = this.bringIntoViewSpec;
        return bringIntoViewSpec == null ? (BringIntoViewSpec) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, BringIntoViewSpec_androidKt.getLocalBringIntoViewSpec()) : bringIntoViewSpec;
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewResponder
    public Object bringChildIntoView(ll3<Rect> ll3Var, e02<? super j59> e02Var) throws Throwable {
        Rect rectInvoke = ll3Var.invoke();
        if (rectInvoke == null || m1464isMaxVisibleEQwtKw$default(this, rectInvoke, 0L, 0L, 3, null)) {
            return j59.a;
        }
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        if (this.bringIntoViewRequests.enqueue(new Request(ll3Var, c31Var)) && !this.isAnimationRunning) {
            m1466launchAnimationgyyYBs$default(this, 0L, 1, null);
        }
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewResponder
    public Rect calculateRectForParent(Rect rect) {
        if (IntSize.m9211equalsimpl0(this.viewportSize, ContentInViewNodeKt.UnspecifiedIntSize)) {
            InlineClassHelperKt.throwIllegalStateException("Expected BringIntoViewRequester to not be used before parents are placed.");
        }
        return computeDestination(rect);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    /* JADX INFO: renamed from: getViewportSize-YbymL2g$foundation, reason: not valid java name */
    public final long m1468getViewportSizeYbymL2g$foundation() {
        return this.viewportSize;
    }

    /* JADX INFO: renamed from: getViewportSizeOrZero-YbymL2g$foundation, reason: not valid java name */
    public final long m1469getViewportSizeOrZeroYbymL2g$foundation() {
        long j = this.viewportSize;
        return IntSize.m9211equalsimpl0(j, ContentInViewNodeKt.UnspecifiedIntSize) ? IntSize.Companion.m9218getZeroYbymL2g() : j;
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* JADX INFO: renamed from: onRemeasured-ozmzZPI */
    public void mo1423onRemeasuredozmzZPI(long j) {
        long jM9181getZeronOccac;
        long jM1469getViewportSizeOrZeroYbymL2g$foundation = m1469getViewportSizeOrZeroYbymL2g$foundation();
        this.viewportSize = j;
        if (m1461compareToTemP2vQ(j, jM1469getViewportSizeOrZeroYbymL2g$foundation) >= 0) {
            return;
        }
        if (this.reverseDirection) {
            jM9181getZeronOccac = IntOffset.Companion.m9181getZeronOccac();
        } else {
            jM9181getZeronOccac = this.orientation == Orientation.Vertical ? IntOffset.m9164constructorimpl(((long) (((int) (jM1469getViewportSizeOrZeroYbymL2g$foundation & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - ((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) : IntOffset.m9164constructorimpl(((long) (((int) (jM1469getViewportSizeOrZeroYbymL2g$foundation >> 32)) - ((int) (j >> 32)))) << 32);
        }
        long j2 = jM9181getZeronOccac;
        Rect rectInvoke = this.getFocusedRect.invoke();
        if (rectInvoke == null || this.isAnimationRunning || this.trackingFocusedChild || !m1464isMaxVisibleEQwtKw$default(this, rectInvoke, jM1469getViewportSizeOrZeroYbymL2g$foundation, 0L, 2, null) || m1464isMaxVisibleEQwtKw$default(this, rectInvoke, 0L, j2, 1, null)) {
            return;
        }
        this.trackingFocusedChild = true;
        m1465launchAnimationgyyYBs(j2);
    }

    public final void update(Orientation orientation, boolean z, BringIntoViewSpec bringIntoViewSpec) {
        this.orientation = orientation;
        this.reverseDirection = z;
        this.bringIntoViewSpec = bringIntoViewSpec;
    }
}
