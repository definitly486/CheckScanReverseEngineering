package androidx.camera.camera2.pipe;

import defpackage.jh2;
import defpackage.qz0;
import defpackage.u96;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AfMode {
    private static final int AUTO;
    private static final int CONTINUOUS_PICTURE;
    private static final int CONTINUOUS_VIDEO;
    public static final Companion Companion = new Companion(null);
    private static final int EDOF;
    private static final int MACRO;
    private static final int OFF;
    private static final List<AfMode> values;
    private final int value;

    static {
        int iM123constructorimpl = m123constructorimpl(0);
        OFF = iM123constructorimpl;
        int iM123constructorimpl2 = m123constructorimpl(1);
        AUTO = iM123constructorimpl2;
        int iM123constructorimpl3 = m123constructorimpl(2);
        MACRO = iM123constructorimpl3;
        int iM123constructorimpl4 = m123constructorimpl(3);
        CONTINUOUS_VIDEO = iM123constructorimpl4;
        int iM123constructorimpl5 = m123constructorimpl(4);
        CONTINUOUS_PICTURE = iM123constructorimpl5;
        int iM123constructorimpl6 = m123constructorimpl(5);
        EDOF = iM123constructorimpl6;
        values = u96.i(m122boximpl(iM123constructorimpl), m122boximpl(iM123constructorimpl2), m122boximpl(iM123constructorimpl3), m122boximpl(iM123constructorimpl4), m122boximpl(iM123constructorimpl5), m122boximpl(iM123constructorimpl6));
    }

    private /* synthetic */ AfMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AfMode m122boximpl(int i) {
        return new AfMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m123constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m124equalsimpl(int i, Object obj) {
        return (obj instanceof AfMode) && i == ((AfMode) obj).m131unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m125equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: fromIntOrNull-MKXwA8g, reason: not valid java name */
    public static final AfMode m126fromIntOrNullMKXwA8g(int i) {
        return Companion.m132fromIntOrNullMKXwA8g(i);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m127hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: isContinuous-impl, reason: not valid java name */
    public static final boolean m128isContinuousimpl(int i) {
        return i == 3 || i == 4;
    }

    /* JADX INFO: renamed from: isOn-impl, reason: not valid java name */
    public static final boolean m129isOnimpl(int i) {
        return i != 0;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m130toStringimpl(int i) {
        return qz0.d("AfMode(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m124equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m127hashCodeimpl(this.value);
    }

    public String toString() {
        return m130toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m131unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: fromIntOrNull-MKXwA8g, reason: not valid java name */
        public final AfMode m132fromIntOrNullMKXwA8g(int i) {
            Object next;
            Iterator<T> it = getValues().iterator();
            while (it.hasNext()) {
                next = it.next();
                if (((AfMode) next).m131unboximpl() == i) {
                    return (AfMode) next;
                }
            }
            next = null;
            return (AfMode) next;
        }

        /* JADX INFO: renamed from: getAUTO-vHZNRtE, reason: not valid java name */
        public final int m133getAUTOvHZNRtE() {
            return AfMode.AUTO;
        }

        /* JADX INFO: renamed from: getCONTINUOUS_PICTURE-vHZNRtE, reason: not valid java name */
        public final int m134getCONTINUOUS_PICTUREvHZNRtE() {
            return AfMode.CONTINUOUS_PICTURE;
        }

        /* JADX INFO: renamed from: getCONTINUOUS_VIDEO-vHZNRtE, reason: not valid java name */
        public final int m135getCONTINUOUS_VIDEOvHZNRtE() {
            return AfMode.CONTINUOUS_VIDEO;
        }

        /* JADX INFO: renamed from: getEDOF-vHZNRtE, reason: not valid java name */
        public final int m136getEDOFvHZNRtE() {
            return AfMode.EDOF;
        }

        /* JADX INFO: renamed from: getMACRO-vHZNRtE, reason: not valid java name */
        public final int m137getMACROvHZNRtE() {
            return AfMode.MACRO;
        }

        /* JADX INFO: renamed from: getOFF-vHZNRtE, reason: not valid java name */
        public final int m138getOFFvHZNRtE() {
            return AfMode.OFF;
        }

        public final List<AfMode> getValues() {
            return AfMode.values;
        }

        private Companion() {
        }
    }
}
