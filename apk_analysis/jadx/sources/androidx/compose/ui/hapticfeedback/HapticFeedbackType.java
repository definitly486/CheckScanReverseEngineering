package androidx.compose.ui.hapticfeedback;

import defpackage.jh2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class HapticFeedbackType {
    public static final Companion Companion = new Companion(null);
    private final int value;

    private /* synthetic */ HapticFeedbackType(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ HapticFeedbackType m7002boximpl(int i) {
        return new HapticFeedbackType(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m7003constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7004equalsimpl(int i, Object obj) {
        return (obj instanceof HapticFeedbackType) && i == ((HapticFeedbackType) obj).m7008unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7005equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7006hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7007toStringimpl(int i) {
        Companion companion = Companion;
        if (m7005equalsimpl0(i, companion.m7009getConfirm5zf0vsI())) {
            return "Confirm";
        }
        if (m7005equalsimpl0(i, companion.m7010getContextClick5zf0vsI())) {
            return "ContextClick";
        }
        if (m7005equalsimpl0(i, companion.m7011getGestureEnd5zf0vsI())) {
            return "GestureEnd";
        }
        if (m7005equalsimpl0(i, companion.m7012getGestureThresholdActivate5zf0vsI())) {
            return "GestureThresholdActivate";
        }
        if (m7005equalsimpl0(i, companion.m7013getKeyboardTap5zf0vsI())) {
            return "KeyboardTap";
        }
        if (m7005equalsimpl0(i, companion.m7014getLongPress5zf0vsI())) {
            return "LongPress";
        }
        if (m7005equalsimpl0(i, companion.m7015getReject5zf0vsI())) {
            return "Reject";
        }
        if (m7005equalsimpl0(i, companion.m7016getSegmentFrequentTick5zf0vsI())) {
            return "SegmentFrequentTick";
        }
        if (m7005equalsimpl0(i, companion.m7017getSegmentTick5zf0vsI())) {
            return "SegmentTick";
        }
        if (m7005equalsimpl0(i, companion.m7018getTextHandleMove5zf0vsI())) {
            return "TextHandleMove";
        }
        if (m7005equalsimpl0(i, companion.m7019getToggleOff5zf0vsI())) {
            return "ToggleOff";
        }
        if (m7005equalsimpl0(i, companion.m7020getToggleOn5zf0vsI())) {
            return "ToggleOn";
        }
        return m7005equalsimpl0(i, companion.m7021getVirtualKey5zf0vsI()) ? "VirtualKey" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m7004equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m7006hashCodeimpl(this.value);
    }

    public String toString() {
        return m7007toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m7008unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getConfirm-5zf0vsI, reason: not valid java name */
        public final int m7009getConfirm5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7022getConfirm5zf0vsI();
        }

        /* JADX INFO: renamed from: getContextClick-5zf0vsI, reason: not valid java name */
        public final int m7010getContextClick5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7023getContextClick5zf0vsI();
        }

        /* JADX INFO: renamed from: getGestureEnd-5zf0vsI, reason: not valid java name */
        public final int m7011getGestureEnd5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7024getGestureEnd5zf0vsI();
        }

        /* JADX INFO: renamed from: getGestureThresholdActivate-5zf0vsI, reason: not valid java name */
        public final int m7012getGestureThresholdActivate5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7025getGestureThresholdActivate5zf0vsI();
        }

        /* JADX INFO: renamed from: getKeyboardTap-5zf0vsI, reason: not valid java name */
        public final int m7013getKeyboardTap5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7026getKeyboardTap5zf0vsI();
        }

        /* JADX INFO: renamed from: getLongPress-5zf0vsI, reason: not valid java name */
        public final int m7014getLongPress5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7027getLongPress5zf0vsI();
        }

        /* JADX INFO: renamed from: getReject-5zf0vsI, reason: not valid java name */
        public final int m7015getReject5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7028getReject5zf0vsI();
        }

        /* JADX INFO: renamed from: getSegmentFrequentTick-5zf0vsI, reason: not valid java name */
        public final int m7016getSegmentFrequentTick5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7029getSegmentFrequentTick5zf0vsI();
        }

        /* JADX INFO: renamed from: getSegmentTick-5zf0vsI, reason: not valid java name */
        public final int m7017getSegmentTick5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7030getSegmentTick5zf0vsI();
        }

        /* JADX INFO: renamed from: getTextHandleMove-5zf0vsI, reason: not valid java name */
        public final int m7018getTextHandleMove5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7031getTextHandleMove5zf0vsI();
        }

        /* JADX INFO: renamed from: getToggleOff-5zf0vsI, reason: not valid java name */
        public final int m7019getToggleOff5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7032getToggleOff5zf0vsI();
        }

        /* JADX INFO: renamed from: getToggleOn-5zf0vsI, reason: not valid java name */
        public final int m7020getToggleOn5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7033getToggleOn5zf0vsI();
        }

        /* JADX INFO: renamed from: getVirtualKey-5zf0vsI, reason: not valid java name */
        public final int m7021getVirtualKey5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m7034getVirtualKey5zf0vsI();
        }

        public final List<HapticFeedbackType> values() {
            return u96.i(HapticFeedbackType.m7002boximpl(m7009getConfirm5zf0vsI()), HapticFeedbackType.m7002boximpl(m7010getContextClick5zf0vsI()), HapticFeedbackType.m7002boximpl(m7011getGestureEnd5zf0vsI()), HapticFeedbackType.m7002boximpl(m7012getGestureThresholdActivate5zf0vsI()), HapticFeedbackType.m7002boximpl(m7013getKeyboardTap5zf0vsI()), HapticFeedbackType.m7002boximpl(m7014getLongPress5zf0vsI()), HapticFeedbackType.m7002boximpl(m7015getReject5zf0vsI()), HapticFeedbackType.m7002boximpl(m7016getSegmentFrequentTick5zf0vsI()), HapticFeedbackType.m7002boximpl(m7017getSegmentTick5zf0vsI()), HapticFeedbackType.m7002boximpl(m7018getTextHandleMove5zf0vsI()), HapticFeedbackType.m7002boximpl(m7019getToggleOff5zf0vsI()), HapticFeedbackType.m7002boximpl(m7020getToggleOn5zf0vsI()), HapticFeedbackType.m7002boximpl(m7021getVirtualKey5zf0vsI()));
        }

        private Companion() {
        }
    }
}
