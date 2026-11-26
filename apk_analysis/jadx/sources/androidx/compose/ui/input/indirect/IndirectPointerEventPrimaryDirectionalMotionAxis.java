package androidx.compose.ui.input.indirect;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
public final class IndirectPointerEventPrimaryDirectionalMotionAxis {
    public static final Companion Companion = new Companion(null);
    private static final int None = m7053constructorimpl(0);
    private static final int X = m7053constructorimpl(1);
    private static final int Y = m7053constructorimpl(2);
    private final int value;

    private /* synthetic */ IndirectPointerEventPrimaryDirectionalMotionAxis(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ IndirectPointerEventPrimaryDirectionalMotionAxis m7052boximpl(int i) {
        return new IndirectPointerEventPrimaryDirectionalMotionAxis(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m7053constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7054equalsimpl(int i, Object obj) {
        return (obj instanceof IndirectPointerEventPrimaryDirectionalMotionAxis) && i == ((IndirectPointerEventPrimaryDirectionalMotionAxis) obj).m7058unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7055equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7056hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7057toStringimpl(int i) {
        return qz0.d("IndirectPointerEventPrimaryDirectionalMotionAxis(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m7054equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m7056hashCodeimpl(this.value);
    }

    public String toString() {
        return m7057toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m7058unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getNone-nZO2Niw, reason: not valid java name */
        public final int m7059getNonenZO2Niw() {
            return IndirectPointerEventPrimaryDirectionalMotionAxis.None;
        }

        /* JADX INFO: renamed from: getX-nZO2Niw, reason: not valid java name */
        public final int m7060getXnZO2Niw() {
            return IndirectPointerEventPrimaryDirectionalMotionAxis.X;
        }

        /* JADX INFO: renamed from: getY-nZO2Niw, reason: not valid java name */
        public final int m7061getYnZO2Niw() {
            return IndirectPointerEventPrimaryDirectionalMotionAxis.Y;
        }

        private Companion() {
        }
    }
}
