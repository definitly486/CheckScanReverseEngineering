package androidx.camera.camera2.pipe;

import defpackage.jh2;
import defpackage.qz0;
import defpackage.u96;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AeMode {
    public static final Companion Companion = new Companion(null);
    private static final int OFF;
    private static final int ON;
    private static final int ON_ALWAYS_FLASH;
    private static final int ON_AUTO_FLASH;
    private static final int ON_AUTO_FLASH_REDEYE;
    private static final int ON_EXTERNAL_FLASH;
    private static final int ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY;
    private static final List<AeMode> values;
    private final int value;

    static {
        int iM104constructorimpl = m104constructorimpl(0);
        OFF = iM104constructorimpl;
        int iM104constructorimpl2 = m104constructorimpl(1);
        ON = iM104constructorimpl2;
        int iM104constructorimpl3 = m104constructorimpl(3);
        ON_ALWAYS_FLASH = iM104constructorimpl3;
        int iM104constructorimpl4 = m104constructorimpl(2);
        ON_AUTO_FLASH = iM104constructorimpl4;
        int iM104constructorimpl5 = m104constructorimpl(4);
        ON_AUTO_FLASH_REDEYE = iM104constructorimpl5;
        int iM104constructorimpl6 = m104constructorimpl(5);
        ON_EXTERNAL_FLASH = iM104constructorimpl6;
        int iM104constructorimpl7 = m104constructorimpl(6);
        ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY = iM104constructorimpl7;
        values = u96.i(m103boximpl(iM104constructorimpl), m103boximpl(iM104constructorimpl2), m103boximpl(iM104constructorimpl4), m103boximpl(iM104constructorimpl3), m103boximpl(iM104constructorimpl5), m103boximpl(iM104constructorimpl6), m103boximpl(iM104constructorimpl7));
    }

    private /* synthetic */ AeMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AeMode m103boximpl(int i) {
        return new AeMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m104constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m105equalsimpl(int i, Object obj) {
        return (obj instanceof AeMode) && i == ((AeMode) obj).m112unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m106equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: fromInt-IwILmM0, reason: not valid java name */
    public static final int m107fromIntIwILmM0(int i) {
        return Companion.m113fromIntIwILmM0(i);
    }

    /* JADX INFO: renamed from: fromIntOrNull-kQd0u18, reason: not valid java name */
    public static final AeMode m108fromIntOrNullkQd0u18(int i) {
        return Companion.m114fromIntOrNullkQd0u18(i);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m109hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: isOn-impl, reason: not valid java name */
    public static final boolean m110isOnimpl(int i) {
        return i != 0;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m111toStringimpl(int i) {
        return qz0.d("AeMode(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m105equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m109hashCodeimpl(this.value);
    }

    public String toString() {
        return m111toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m112unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: fromInt-IwILmM0, reason: not valid java name */
        public final int m113fromIntIwILmM0(int i) {
            if (i == m115getOFFbOjpiJc()) {
                return m115getOFFbOjpiJc();
            }
            if (i == m116getONbOjpiJc()) {
                return m116getONbOjpiJc();
            }
            if (i == m118getON_AUTO_FLASHbOjpiJc()) {
                return m118getON_AUTO_FLASHbOjpiJc();
            }
            if (i == m117getON_ALWAYS_FLASHbOjpiJc()) {
                return m117getON_ALWAYS_FLASHbOjpiJc();
            }
            if (i == m119getON_AUTO_FLASH_REDEYEbOjpiJc()) {
                return m119getON_AUTO_FLASH_REDEYEbOjpiJc();
            }
            if (i == m120getON_EXTERNAL_FLASHbOjpiJc()) {
                return m120getON_EXTERNAL_FLASHbOjpiJc();
            }
            return i == m121getON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITYbOjpiJc() ? m121getON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITYbOjpiJc() : m116getONbOjpiJc();
        }

        /* JADX INFO: renamed from: fromIntOrNull-kQd0u18, reason: not valid java name */
        public final AeMode m114fromIntOrNullkQd0u18(int i) {
            Object next;
            Iterator<T> it = getValues().iterator();
            while (it.hasNext()) {
                next = it.next();
                if (((AeMode) next).m112unboximpl() == i) {
                    return (AeMode) next;
                }
            }
            next = null;
            return (AeMode) next;
        }

        /* JADX INFO: renamed from: getOFF-bOjpiJc, reason: not valid java name */
        public final int m115getOFFbOjpiJc() {
            return AeMode.OFF;
        }

        /* JADX INFO: renamed from: getON-bOjpiJc, reason: not valid java name */
        public final int m116getONbOjpiJc() {
            return AeMode.ON;
        }

        /* JADX INFO: renamed from: getON_ALWAYS_FLASH-bOjpiJc, reason: not valid java name */
        public final int m117getON_ALWAYS_FLASHbOjpiJc() {
            return AeMode.ON_ALWAYS_FLASH;
        }

        /* JADX INFO: renamed from: getON_AUTO_FLASH-bOjpiJc, reason: not valid java name */
        public final int m118getON_AUTO_FLASHbOjpiJc() {
            return AeMode.ON_AUTO_FLASH;
        }

        /* JADX INFO: renamed from: getON_AUTO_FLASH_REDEYE-bOjpiJc, reason: not valid java name */
        public final int m119getON_AUTO_FLASH_REDEYEbOjpiJc() {
            return AeMode.ON_AUTO_FLASH_REDEYE;
        }

        /* JADX INFO: renamed from: getON_EXTERNAL_FLASH-bOjpiJc, reason: not valid java name */
        public final int m120getON_EXTERNAL_FLASHbOjpiJc() {
            return AeMode.ON_EXTERNAL_FLASH;
        }

        /* JADX INFO: renamed from: getON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY-bOjpiJc, reason: not valid java name */
        public final int m121getON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITYbOjpiJc() {
            return AeMode.ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY;
        }

        public final List<AeMode> getValues() {
            return AeMode.values;
        }

        private Companion() {
        }
    }
}
