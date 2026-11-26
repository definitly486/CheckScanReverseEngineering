package androidx.camera.camera2.pipe;

import defpackage.jh2;
import defpackage.qz0;
import defpackage.u96;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FlashMode {
    public static final Companion Companion = new Companion(null);
    private static final int OFF;
    private static final int SINGLE;
    private static final int TORCH;
    private static final List<FlashMode> values;
    private final int value;

    static {
        int iM412constructorimpl = m412constructorimpl(0);
        OFF = iM412constructorimpl;
        int iM412constructorimpl2 = m412constructorimpl(1);
        SINGLE = iM412constructorimpl2;
        int iM412constructorimpl3 = m412constructorimpl(2);
        TORCH = iM412constructorimpl3;
        values = u96.i(m411boximpl(iM412constructorimpl), m411boximpl(iM412constructorimpl2), m411boximpl(iM412constructorimpl3));
    }

    private /* synthetic */ FlashMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FlashMode m411boximpl(int i) {
        return new FlashMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m412constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m413equalsimpl(int i, Object obj) {
        return (obj instanceof FlashMode) && i == ((FlashMode) obj).m418unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m414equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: fromIntOrNull-2-3f5tw, reason: not valid java name */
    public static final FlashMode m415fromIntOrNull23f5tw(int i) {
        return Companion.m419fromIntOrNull23f5tw(i);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m416hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m417toStringimpl(int i) {
        return qz0.d("FlashMode(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m413equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m416hashCodeimpl(this.value);
    }

    public String toString() {
        return m417toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m418unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: fromIntOrNull-2-3f5tw, reason: not valid java name */
        public final FlashMode m419fromIntOrNull23f5tw(int i) {
            Object next;
            Iterator it = FlashMode.values.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (((FlashMode) next).m418unboximpl() == i) {
                    return (FlashMode) next;
                }
            }
            next = null;
            return (FlashMode) next;
        }

        /* JADX INFO: renamed from: getOFF-Le5xUZU, reason: not valid java name */
        public final int m420getOFFLe5xUZU() {
            return FlashMode.OFF;
        }

        /* JADX INFO: renamed from: getSINGLE-Le5xUZU, reason: not valid java name */
        public final int m421getSINGLELe5xUZU() {
            return FlashMode.SINGLE;
        }

        /* JADX INFO: renamed from: getTORCH-Le5xUZU, reason: not valid java name */
        public final int m422getTORCHLe5xUZU() {
            return FlashMode.TORCH;
        }

        private Companion() {
        }
    }
}
