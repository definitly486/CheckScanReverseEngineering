package androidx.camera.camera2.pipe;

import defpackage.jh2;
import defpackage.qz0;
import defpackage.u96;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AwbMode {
    private static final int AUTO;
    private static final int CLOUDY_DAYLIGHT;
    public static final Companion Companion = new Companion(null);
    private static final int DAYLIGHT;
    private static final int FLUORESCENT;
    private static final int INCANDESCENT;
    private static final int OFF;
    private static final int SHADE;
    private static final int TWILIGHT;
    private static final List<AwbMode> values;
    private final int value;

    static {
        int iM150constructorimpl = m150constructorimpl(0);
        OFF = iM150constructorimpl;
        int iM150constructorimpl2 = m150constructorimpl(1);
        AUTO = iM150constructorimpl2;
        int iM150constructorimpl3 = m150constructorimpl(6);
        CLOUDY_DAYLIGHT = iM150constructorimpl3;
        int iM150constructorimpl4 = m150constructorimpl(5);
        DAYLIGHT = iM150constructorimpl4;
        int iM150constructorimpl5 = m150constructorimpl(2);
        INCANDESCENT = iM150constructorimpl5;
        int iM150constructorimpl6 = m150constructorimpl(3);
        FLUORESCENT = iM150constructorimpl6;
        int iM150constructorimpl7 = m150constructorimpl(8);
        SHADE = iM150constructorimpl7;
        int iM150constructorimpl8 = m150constructorimpl(7);
        TWILIGHT = iM150constructorimpl8;
        values = u96.i(m149boximpl(iM150constructorimpl), m149boximpl(iM150constructorimpl2), m149boximpl(iM150constructorimpl3), m149boximpl(iM150constructorimpl4), m149boximpl(iM150constructorimpl5), m149boximpl(iM150constructorimpl6), m149boximpl(iM150constructorimpl7), m149boximpl(iM150constructorimpl8));
    }

    private /* synthetic */ AwbMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AwbMode m149boximpl(int i) {
        return new AwbMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m150constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m151equalsimpl(int i, Object obj) {
        return (obj instanceof AwbMode) && i == ((AwbMode) obj).m157unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m152equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: fromIntOrNull--SaEiwI, reason: not valid java name */
    public static final AwbMode m153fromIntOrNullSaEiwI(int i) {
        return Companion.m158fromIntOrNullSaEiwI(i);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m154hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: isOn-impl, reason: not valid java name */
    public static final boolean m155isOnimpl(int i) {
        return i != 0;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m156toStringimpl(int i) {
        return qz0.d("AwbMode(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m151equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m154hashCodeimpl(this.value);
    }

    public String toString() {
        return m156toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m157unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: fromIntOrNull--SaEiwI, reason: not valid java name */
        public final AwbMode m158fromIntOrNullSaEiwI(int i) {
            Object next;
            Iterator<T> it = getValues().iterator();
            while (it.hasNext()) {
                next = it.next();
                if (((AwbMode) next).m157unboximpl() == i) {
                    return (AwbMode) next;
                }
            }
            next = null;
            return (AwbMode) next;
        }

        /* JADX INFO: renamed from: getAUTO-3hxnlF8, reason: not valid java name */
        public final int m159getAUTO3hxnlF8() {
            return AwbMode.AUTO;
        }

        /* JADX INFO: renamed from: getCLOUDY_DAYLIGHT-3hxnlF8, reason: not valid java name */
        public final int m160getCLOUDY_DAYLIGHT3hxnlF8() {
            return AwbMode.CLOUDY_DAYLIGHT;
        }

        /* JADX INFO: renamed from: getDAYLIGHT-3hxnlF8, reason: not valid java name */
        public final int m161getDAYLIGHT3hxnlF8() {
            return AwbMode.DAYLIGHT;
        }

        /* JADX INFO: renamed from: getFLUORESCENT-3hxnlF8, reason: not valid java name */
        public final int m162getFLUORESCENT3hxnlF8() {
            return AwbMode.FLUORESCENT;
        }

        /* JADX INFO: renamed from: getINCANDESCENT-3hxnlF8, reason: not valid java name */
        public final int m163getINCANDESCENT3hxnlF8() {
            return AwbMode.INCANDESCENT;
        }

        /* JADX INFO: renamed from: getOFF-3hxnlF8, reason: not valid java name */
        public final int m164getOFF3hxnlF8() {
            return AwbMode.OFF;
        }

        /* JADX INFO: renamed from: getSHADE-3hxnlF8, reason: not valid java name */
        public final int m165getSHADE3hxnlF8() {
            return AwbMode.SHADE;
        }

        /* JADX INFO: renamed from: getTWILIGHT-3hxnlF8, reason: not valid java name */
        public final int m166getTWILIGHT3hxnlF8() {
            return AwbMode.TWILIGHT;
        }

        public final List<AwbMode> getValues() {
            return AwbMode.values;
        }

        private Companion() {
        }
    }
}
