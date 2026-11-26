package androidx.compose.foundation.text;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class KeyModifiers {
    private static final int ALT_FLAG = 1;
    private static final int Alt;
    private static final int AltMeta;
    private static final int AltShift;
    private static final int CTRL_FLAG = 2;
    private static final int Ctrl;
    private static final int CtrlAlt;
    private static final int CtrlMeta;
    private static final int CtrlShift;
    private static final int META_FLAG = 4;
    private static final int Meta;
    private static final int SHIFT_FLAG = 8;
    private static final int Shift;
    private static final int ShiftMeta;
    private final int flags;
    public static final Companion Companion = new Companion(null);
    private static final int None = m2499constructorimpl(0);

    static {
        int iM2499constructorimpl = m2499constructorimpl(1);
        Alt = iM2499constructorimpl;
        int iM2499constructorimpl2 = m2499constructorimpl(2);
        Ctrl = iM2499constructorimpl2;
        int iM2499constructorimpl3 = m2499constructorimpl(4);
        Meta = iM2499constructorimpl3;
        int iM2499constructorimpl4 = m2499constructorimpl(8);
        Shift = iM2499constructorimpl4;
        AltShift = m2516plus1uj4btU(iM2499constructorimpl, iM2499constructorimpl4);
        CtrlShift = m2516plus1uj4btU(iM2499constructorimpl2, iM2499constructorimpl4);
        ShiftMeta = m2516plus1uj4btU(iM2499constructorimpl3, iM2499constructorimpl4);
        CtrlAlt = m2516plus1uj4btU(iM2499constructorimpl2, iM2499constructorimpl);
        CtrlMeta = m2516plus1uj4btU(iM2499constructorimpl2, iM2499constructorimpl3);
        AltMeta = m2516plus1uj4btU(iM2499constructorimpl3, iM2499constructorimpl4);
    }

    private /* synthetic */ KeyModifiers(int i) {
        this.flags = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ KeyModifiers m2498boximpl(int i) {
        return new KeyModifiers(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m2500constructorimpl(boolean z, boolean z2, boolean z3, boolean z4) {
        return m2499constructorimpl((z ? 1 : 0) | (z2 ? 2 : 0) | (z3 ? 4 : 0) | (z4 ? 8 : 0));
    }

    /* JADX INFO: renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ int m2501constructorimpl$default(boolean z, boolean z2, boolean z3, boolean z4, int i, jh2 jh2Var) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            z3 = false;
        }
        if ((i & 8) != 0) {
            z4 = false;
        }
        return m2500constructorimpl(z, z2, z3, z4);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2502equalsimpl(int i, Object obj) {
        return (obj instanceof KeyModifiers) && i == ((KeyModifiers) obj).m2518unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2503equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: getAlt-AuQ4EfA, reason: not valid java name */
    public static final int m2504getAltAuQ4EfA() {
        return Companion.m2530getAltAuQ4EfA();
    }

    /* JADX INFO: renamed from: getAltMeta-AuQ4EfA, reason: not valid java name */
    public static final int m2505getAltMetaAuQ4EfA() {
        return Companion.m2531getAltMetaAuQ4EfA();
    }

    /* JADX INFO: renamed from: getAltShift-AuQ4EfA, reason: not valid java name */
    public static final int m2506getAltShiftAuQ4EfA() {
        return Companion.m2532getAltShiftAuQ4EfA();
    }

    /* JADX INFO: renamed from: getCtrl-AuQ4EfA, reason: not valid java name */
    public static final int m2507getCtrlAuQ4EfA() {
        return Companion.m2533getCtrlAuQ4EfA();
    }

    /* JADX INFO: renamed from: getCtrlAlt-AuQ4EfA, reason: not valid java name */
    public static final int m2508getCtrlAltAuQ4EfA() {
        return Companion.m2534getCtrlAltAuQ4EfA();
    }

    /* JADX INFO: renamed from: getCtrlMeta-AuQ4EfA, reason: not valid java name */
    public static final int m2509getCtrlMetaAuQ4EfA() {
        return Companion.m2535getCtrlMetaAuQ4EfA();
    }

    /* JADX INFO: renamed from: getCtrlShift-AuQ4EfA, reason: not valid java name */
    public static final int m2510getCtrlShiftAuQ4EfA() {
        return Companion.m2536getCtrlShiftAuQ4EfA();
    }

    /* JADX INFO: renamed from: getMeta-AuQ4EfA, reason: not valid java name */
    public static final int m2511getMetaAuQ4EfA() {
        return Companion.m2537getMetaAuQ4EfA();
    }

    /* JADX INFO: renamed from: getNone-AuQ4EfA, reason: not valid java name */
    public static final int m2512getNoneAuQ4EfA() {
        return Companion.m2538getNoneAuQ4EfA();
    }

    /* JADX INFO: renamed from: getShift-AuQ4EfA, reason: not valid java name */
    public static final int m2513getShiftAuQ4EfA() {
        return Companion.m2539getShiftAuQ4EfA();
    }

    /* JADX INFO: renamed from: getShiftMeta-AuQ4EfA, reason: not valid java name */
    public static final int m2514getShiftMetaAuQ4EfA() {
        return Companion.m2540getShiftMetaAuQ4EfA();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2515hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: plus-1uj4btU, reason: not valid java name */
    public static final int m2516plus1uj4btU(int i, int i2) {
        return m2499constructorimpl(i | i2);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2517toStringimpl(int i) {
        return qz0.d("KeyModifiers(flags=", i, ')');
    }

    public boolean equals(Object obj) {
        return m2502equalsimpl(this.flags, obj);
    }

    public int hashCode() {
        return m2515hashCodeimpl(this.flags);
    }

    public String toString() {
        return m2517toStringimpl(this.flags);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2518unboximpl() {
        return this.flags;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAlt-AuQ4EfA$annotations, reason: not valid java name */
        public static /* synthetic */ void m2519getAltAuQ4EfA$annotations() {
        }

        /* JADX INFO: renamed from: getAltMeta-AuQ4EfA$annotations, reason: not valid java name */
        public static /* synthetic */ void m2520getAltMetaAuQ4EfA$annotations() {
        }

        /* JADX INFO: renamed from: getAltShift-AuQ4EfA$annotations, reason: not valid java name */
        public static /* synthetic */ void m2521getAltShiftAuQ4EfA$annotations() {
        }

        /* JADX INFO: renamed from: getCtrl-AuQ4EfA$annotations, reason: not valid java name */
        public static /* synthetic */ void m2522getCtrlAuQ4EfA$annotations() {
        }

        /* JADX INFO: renamed from: getCtrlAlt-AuQ4EfA$annotations, reason: not valid java name */
        public static /* synthetic */ void m2523getCtrlAltAuQ4EfA$annotations() {
        }

        /* JADX INFO: renamed from: getCtrlMeta-AuQ4EfA$annotations, reason: not valid java name */
        public static /* synthetic */ void m2524getCtrlMetaAuQ4EfA$annotations() {
        }

        /* JADX INFO: renamed from: getCtrlShift-AuQ4EfA$annotations, reason: not valid java name */
        public static /* synthetic */ void m2525getCtrlShiftAuQ4EfA$annotations() {
        }

        /* JADX INFO: renamed from: getMeta-AuQ4EfA$annotations, reason: not valid java name */
        public static /* synthetic */ void m2526getMetaAuQ4EfA$annotations() {
        }

        /* JADX INFO: renamed from: getNone-AuQ4EfA$annotations, reason: not valid java name */
        public static /* synthetic */ void m2527getNoneAuQ4EfA$annotations() {
        }

        /* JADX INFO: renamed from: getShift-AuQ4EfA$annotations, reason: not valid java name */
        public static /* synthetic */ void m2528getShiftAuQ4EfA$annotations() {
        }

        /* JADX INFO: renamed from: getShiftMeta-AuQ4EfA$annotations, reason: not valid java name */
        public static /* synthetic */ void m2529getShiftMetaAuQ4EfA$annotations() {
        }

        /* JADX INFO: renamed from: getAlt-AuQ4EfA, reason: not valid java name */
        public final int m2530getAltAuQ4EfA() {
            return KeyModifiers.Alt;
        }

        /* JADX INFO: renamed from: getAltMeta-AuQ4EfA, reason: not valid java name */
        public final int m2531getAltMetaAuQ4EfA() {
            return KeyModifiers.AltMeta;
        }

        /* JADX INFO: renamed from: getAltShift-AuQ4EfA, reason: not valid java name */
        public final int m2532getAltShiftAuQ4EfA() {
            return KeyModifiers.AltShift;
        }

        /* JADX INFO: renamed from: getCtrl-AuQ4EfA, reason: not valid java name */
        public final int m2533getCtrlAuQ4EfA() {
            return KeyModifiers.Ctrl;
        }

        /* JADX INFO: renamed from: getCtrlAlt-AuQ4EfA, reason: not valid java name */
        public final int m2534getCtrlAltAuQ4EfA() {
            return KeyModifiers.CtrlAlt;
        }

        /* JADX INFO: renamed from: getCtrlMeta-AuQ4EfA, reason: not valid java name */
        public final int m2535getCtrlMetaAuQ4EfA() {
            return KeyModifiers.CtrlMeta;
        }

        /* JADX INFO: renamed from: getCtrlShift-AuQ4EfA, reason: not valid java name */
        public final int m2536getCtrlShiftAuQ4EfA() {
            return KeyModifiers.CtrlShift;
        }

        /* JADX INFO: renamed from: getMeta-AuQ4EfA, reason: not valid java name */
        public final int m2537getMetaAuQ4EfA() {
            return KeyModifiers.Meta;
        }

        /* JADX INFO: renamed from: getNone-AuQ4EfA, reason: not valid java name */
        public final int m2538getNoneAuQ4EfA() {
            return KeyModifiers.None;
        }

        /* JADX INFO: renamed from: getShift-AuQ4EfA, reason: not valid java name */
        public final int m2539getShiftAuQ4EfA() {
            return KeyModifiers.Shift;
        }

        /* JADX INFO: renamed from: getShiftMeta-AuQ4EfA, reason: not valid java name */
        public final int m2540getShiftMetaAuQ4EfA() {
            return KeyModifiers.ShiftMeta;
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m2499constructorimpl(int i) {
        return i;
    }
}
