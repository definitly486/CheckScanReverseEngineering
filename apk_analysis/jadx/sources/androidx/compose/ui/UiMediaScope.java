package androidx.compose.ui;

import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public interface UiMediaScope {
    boolean getHasCamera();

    boolean getHasMicrophone();

    /* JADX INFO: renamed from: getKeyboardKind-J9_QTjY, reason: not valid java name */
    String mo5678getKeyboardKindJ9_QTjY();

    /* JADX INFO: renamed from: getPointerPrecision-fpxItnM, reason: not valid java name */
    String mo5679getPointerPrecisionfpxItnM();

    /* JADX INFO: renamed from: getViewingDistance-tKro-MQ, reason: not valid java name */
    String mo5680getViewingDistancetKroMQ();

    /* JADX INFO: renamed from: getWindowHeight-D9Ej5fM, reason: not valid java name */
    float mo5681getWindowHeightD9Ej5fM();

    /* JADX INFO: renamed from: getWindowPosture-m18o9QQ, reason: not valid java name */
    String mo5682getWindowPosturem18o9QQ();

    /* JADX INFO: renamed from: getWindowWidth-D9Ej5fM, reason: not valid java name */
    float mo5683getWindowWidthD9Ej5fM();

    public static final class KeyboardKind {
        private final String description;
        public static final Companion Companion = new Companion(null);
        private static final String Physical = m5685constructorimpl("Physical");
        private static final String Virtual = m5685constructorimpl("Virtual");
        private static final String None = m5685constructorimpl("None");

        private /* synthetic */ KeyboardKind(String str) {
            this.description = str;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ KeyboardKind m5684boximpl(String str) {
            return new KeyboardKind(str);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        private static String m5685constructorimpl(String str) {
            return str;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m5686equalsimpl(String str, Object obj) {
            return (obj instanceof KeyboardKind) && aa4.e(str, ((KeyboardKind) obj).m5690unboximpl());
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m5687equalsimpl0(String str, String str2) {
            return aa4.e(str, str2);
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m5688hashCodeimpl(String str) {
            return str.hashCode();
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m5689toStringimpl(String str) {
            return str;
        }

        public boolean equals(Object obj) {
            return m5686equalsimpl(this.description, obj);
        }

        public int hashCode() {
            return m5688hashCodeimpl(this.description);
        }

        public String toString() {
            return m5689toStringimpl(this.description);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ String m5690unboximpl() {
            return this.description;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getNone-J9_QTjY, reason: not valid java name */
            public final String m5691getNoneJ9_QTjY() {
                return KeyboardKind.None;
            }

            /* JADX INFO: renamed from: getPhysical-J9_QTjY, reason: not valid java name */
            public final String m5692getPhysicalJ9_QTjY() {
                return KeyboardKind.Physical;
            }

            /* JADX INFO: renamed from: getVirtual-J9_QTjY, reason: not valid java name */
            public final String m5693getVirtualJ9_QTjY() {
                return KeyboardKind.Virtual;
            }

            private Companion() {
            }
        }
    }

    public static final class PointerPrecision {
        private final String description;
        public static final Companion Companion = new Companion(null);
        private static final String Fine = m5695constructorimpl("Fine");
        private static final String Coarse = m5695constructorimpl("Coarse");
        private static final String Blunt = m5695constructorimpl("Blunt");
        private static final String None = m5695constructorimpl("None");

        private /* synthetic */ PointerPrecision(String str) {
            this.description = str;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ PointerPrecision m5694boximpl(String str) {
            return new PointerPrecision(str);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        private static String m5695constructorimpl(String str) {
            return str;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m5696equalsimpl(String str, Object obj) {
            return (obj instanceof PointerPrecision) && aa4.e(str, ((PointerPrecision) obj).m5700unboximpl());
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m5697equalsimpl0(String str, String str2) {
            return aa4.e(str, str2);
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m5698hashCodeimpl(String str) {
            return str.hashCode();
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m5699toStringimpl(String str) {
            return str;
        }

        public boolean equals(Object obj) {
            return m5696equalsimpl(this.description, obj);
        }

        public int hashCode() {
            return m5698hashCodeimpl(this.description);
        }

        public String toString() {
            return m5699toStringimpl(this.description);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ String m5700unboximpl() {
            return this.description;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getBlunt-fpxItnM, reason: not valid java name */
            public final String m5701getBluntfpxItnM() {
                return PointerPrecision.Blunt;
            }

            /* JADX INFO: renamed from: getCoarse-fpxItnM, reason: not valid java name */
            public final String m5702getCoarsefpxItnM() {
                return PointerPrecision.Coarse;
            }

            /* JADX INFO: renamed from: getFine-fpxItnM, reason: not valid java name */
            public final String m5703getFinefpxItnM() {
                return PointerPrecision.Fine;
            }

            /* JADX INFO: renamed from: getNone-fpxItnM, reason: not valid java name */
            public final String m5704getNonefpxItnM() {
                return PointerPrecision.None;
            }

            private Companion() {
            }
        }
    }

    public static final class Posture {
        private final String description;
        public static final Companion Companion = new Companion(null);
        private static final String Flat = m5706constructorimpl("Flat");
        private static final String Tabletop = m5706constructorimpl("Tabletop");
        private static final String Book = m5706constructorimpl("Book");

        private /* synthetic */ Posture(String str) {
            this.description = str;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Posture m5705boximpl(String str) {
            return new Posture(str);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        private static String m5706constructorimpl(String str) {
            return str;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m5707equalsimpl(String str, Object obj) {
            return (obj instanceof Posture) && aa4.e(str, ((Posture) obj).m5711unboximpl());
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m5708equalsimpl0(String str, String str2) {
            return aa4.e(str, str2);
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m5709hashCodeimpl(String str) {
            return str.hashCode();
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m5710toStringimpl(String str) {
            return str;
        }

        public boolean equals(Object obj) {
            return m5707equalsimpl(this.description, obj);
        }

        public int hashCode() {
            return m5709hashCodeimpl(this.description);
        }

        public String toString() {
            return m5710toStringimpl(this.description);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ String m5711unboximpl() {
            return this.description;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getBook-m18o9QQ, reason: not valid java name */
            public final String m5712getBookm18o9QQ() {
                return Posture.Book;
            }

            /* JADX INFO: renamed from: getFlat-m18o9QQ, reason: not valid java name */
            public final String m5713getFlatm18o9QQ() {
                return Posture.Flat;
            }

            /* JADX INFO: renamed from: getTabletop-m18o9QQ, reason: not valid java name */
            public final String m5714getTabletopm18o9QQ() {
                return Posture.Tabletop;
            }

            private Companion() {
            }
        }
    }

    public static final class ViewingDistance {
        private final String description;
        public static final Companion Companion = new Companion(null);
        private static final String Near = m5716constructorimpl("Near");
        private static final String Medium = m5716constructorimpl("Medium");
        private static final String Far = m5716constructorimpl("Far");

        private /* synthetic */ ViewingDistance(String str) {
            this.description = str;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ ViewingDistance m5715boximpl(String str) {
            return new ViewingDistance(str);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        private static String m5716constructorimpl(String str) {
            return str;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m5717equalsimpl(String str, Object obj) {
            return (obj instanceof ViewingDistance) && aa4.e(str, ((ViewingDistance) obj).m5721unboximpl());
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m5718equalsimpl0(String str, String str2) {
            return aa4.e(str, str2);
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m5719hashCodeimpl(String str) {
            return str.hashCode();
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m5720toStringimpl(String str) {
            return str;
        }

        public boolean equals(Object obj) {
            return m5717equalsimpl(this.description, obj);
        }

        public int hashCode() {
            return m5719hashCodeimpl(this.description);
        }

        public String toString() {
            return m5720toStringimpl(this.description);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ String m5721unboximpl() {
            return this.description;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getFar-tKro-MQ, reason: not valid java name */
            public final String m5722getFartKroMQ() {
                return ViewingDistance.Far;
            }

            /* JADX INFO: renamed from: getMedium-tKro-MQ, reason: not valid java name */
            public final String m5723getMediumtKroMQ() {
                return ViewingDistance.Medium;
            }

            /* JADX INFO: renamed from: getNear-tKro-MQ, reason: not valid java name */
            public final String m5724getNeartKroMQ() {
                return ViewingDistance.Near;
            }

            private Companion() {
            }
        }
    }
}
