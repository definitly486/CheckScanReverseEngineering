package androidx.camera.camera2.pipe;

import android.graphics.ColorSpace;
import android.os.Build;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.lt0;

/* JADX INFO: loaded from: classes.dex */
public final class CameraColorSpace {
    private final String colorSpaceName;
    public static final Companion Companion = new Companion(null);
    private static final String UNKNOWN = m196constructorimpl("UNKNOWN");
    private static final String SRGB = m196constructorimpl("SRGB");
    private static final String LINEAR_SRGB = m196constructorimpl("LINEAR_SRGB");
    private static final String EXTENDED_SRGB = m196constructorimpl("EXTENDED_SRGB");
    private static final String LINEAR_EXTENDED_SRGB = m196constructorimpl("LINEAR_EXTENDED_SRGB");
    private static final String BT709 = m196constructorimpl("BT709");
    private static final String BT2020 = m196constructorimpl("BT2020");
    private static final String DCI_P3 = m196constructorimpl("DCI_P3");
    private static final String DISPLAY_P3 = m196constructorimpl("DISPLAY_P3");
    private static final String NTSC_1953 = m196constructorimpl("NTSC_1953");
    private static final String SMPTE_C = m196constructorimpl("SMPTE_C");
    private static final String ADOBE_RGB = m196constructorimpl("ADOBE_RGB");
    private static final String PRO_PHOTO_RGB = m196constructorimpl("PRO_PHOTO_RGB");
    private static final String ACES = m196constructorimpl("ACES");
    private static final String ACESCG = m196constructorimpl("ACESCG");
    private static final String CIE_XYZ = m196constructorimpl("CIE_XYZ");
    private static final String CIE_LAB = m196constructorimpl("CIE_LAB");
    private static final String BT2020_HLG = m196constructorimpl("BT2020_HLG");
    private static final String BT2020_PQ = m196constructorimpl("BT2020_PQ");

    private /* synthetic */ CameraColorSpace(String str) {
        this.colorSpaceName = str;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CameraColorSpace m195boximpl(String str) {
        return new CameraColorSpace(str);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static String m196constructorimpl(String str) {
        return str;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m197equalsimpl(String str, Object obj) {
        return (obj instanceof CameraColorSpace) && aa4.e(str, ((CameraColorSpace) obj).m203unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m198equalsimpl0(String str, String str2) {
        return aa4.e(str, str2);
    }

    /* JADX INFO: renamed from: fromColorSpaceNamed-5GKeQC8, reason: not valid java name */
    public static final String m199fromColorSpaceNamed5GKeQC8(ColorSpace.Named named) {
        return Companion.m204fromColorSpaceNamed5GKeQC8(named);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m200hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* JADX INFO: renamed from: toColorSpaceNamed-impl, reason: not valid java name */
    public static final ColorSpace.Named m201toColorSpaceNamedimpl(String str) {
        if (m198equalsimpl0(str, UNKNOWN)) {
            return null;
        }
        if (m198equalsimpl0(str, SRGB)) {
            return ColorSpace.Named.SRGB;
        }
        if (m198equalsimpl0(str, LINEAR_SRGB)) {
            return ColorSpace.Named.LINEAR_SRGB;
        }
        if (m198equalsimpl0(str, EXTENDED_SRGB)) {
            return ColorSpace.Named.EXTENDED_SRGB;
        }
        if (m198equalsimpl0(str, LINEAR_EXTENDED_SRGB)) {
            return ColorSpace.Named.LINEAR_EXTENDED_SRGB;
        }
        if (m198equalsimpl0(str, BT709)) {
            return ColorSpace.Named.BT709;
        }
        if (m198equalsimpl0(str, BT2020)) {
            return ColorSpace.Named.BT2020;
        }
        if (m198equalsimpl0(str, DCI_P3)) {
            return ColorSpace.Named.DCI_P3;
        }
        if (m198equalsimpl0(str, DISPLAY_P3)) {
            return ColorSpace.Named.DISPLAY_P3;
        }
        if (m198equalsimpl0(str, NTSC_1953)) {
            return ColorSpace.Named.NTSC_1953;
        }
        if (m198equalsimpl0(str, SMPTE_C)) {
            return ColorSpace.Named.SMPTE_C;
        }
        if (m198equalsimpl0(str, ADOBE_RGB)) {
            return ColorSpace.Named.ADOBE_RGB;
        }
        if (m198equalsimpl0(str, PRO_PHOTO_RGB)) {
            return ColorSpace.Named.PRO_PHOTO_RGB;
        }
        if (m198equalsimpl0(str, ACES)) {
            return ColorSpace.Named.ACES;
        }
        if (m198equalsimpl0(str, ACESCG)) {
            return ColorSpace.Named.ACESCG;
        }
        if (m198equalsimpl0(str, CIE_XYZ)) {
            return ColorSpace.Named.CIE_XYZ;
        }
        if (m198equalsimpl0(str, CIE_LAB)) {
            return ColorSpace.Named.CIE_LAB;
        }
        if (Build.VERSION.SDK_INT < 34) {
            return null;
        }
        if (m198equalsimpl0(str, BT2020_HLG)) {
            return ColorSpace.Named.BT2020_HLG;
        }
        if (m198equalsimpl0(str, BT2020_PQ)) {
            return ColorSpace.Named.BT2020_PQ;
        }
        return null;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m202toStringimpl(String str) {
        return lt0.d(')', "CameraColorSpace(colorSpaceName=", str);
    }

    public boolean equals(Object obj) {
        return m197equalsimpl(this.colorSpaceName, obj);
    }

    public final String getColorSpaceName() {
        return this.colorSpaceName;
    }

    public int hashCode() {
        return m200hashCodeimpl(this.colorSpaceName);
    }

    public String toString() {
        return m202toStringimpl(this.colorSpaceName);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ String m203unboximpl() {
        return this.colorSpaceName;
    }

    public static final class Companion {

        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ColorSpace.Named.values().length];
                try {
                    iArr[ColorSpace.Named.SRGB.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ColorSpace.Named.LINEAR_SRGB.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ColorSpace.Named.EXTENDED_SRGB.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ColorSpace.Named.LINEAR_EXTENDED_SRGB.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[ColorSpace.Named.BT709.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[ColorSpace.Named.BT2020.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[ColorSpace.Named.DCI_P3.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[ColorSpace.Named.DISPLAY_P3.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[ColorSpace.Named.NTSC_1953.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[ColorSpace.Named.SMPTE_C.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    iArr[ColorSpace.Named.ADOBE_RGB.ordinal()] = 11;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    iArr[ColorSpace.Named.PRO_PHOTO_RGB.ordinal()] = 12;
                } catch (NoSuchFieldError unused12) {
                }
                try {
                    iArr[ColorSpace.Named.ACES.ordinal()] = 13;
                } catch (NoSuchFieldError unused13) {
                }
                try {
                    iArr[ColorSpace.Named.ACESCG.ordinal()] = 14;
                } catch (NoSuchFieldError unused14) {
                }
                try {
                    iArr[ColorSpace.Named.CIE_XYZ.ordinal()] = 15;
                } catch (NoSuchFieldError unused15) {
                }
                try {
                    iArr[ColorSpace.Named.CIE_LAB.ordinal()] = 16;
                } catch (NoSuchFieldError unused16) {
                }
                try {
                    iArr[ColorSpace.Named.BT2020_HLG.ordinal()] = 17;
                } catch (NoSuchFieldError unused17) {
                }
                try {
                    iArr[ColorSpace.Named.BT2020_PQ.ordinal()] = 18;
                } catch (NoSuchFieldError unused18) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: fromColorSpaceNamed-5GKeQC8, reason: not valid java name */
        public final String m204fromColorSpaceNamed5GKeQC8(ColorSpace.Named named) {
            named.getClass();
            int[] iArr = WhenMappings.$EnumSwitchMapping$0;
            switch (iArr[named.ordinal()]) {
                case 1:
                    return m222getSRGBsh9K6P8();
                case 2:
                    return m218getLINEAR_SRGBsh9K6P8();
                case 3:
                    return m216getEXTENDED_SRGBsh9K6P8();
                case 4:
                    return m217getLINEAR_EXTENDED_SRGBsh9K6P8();
                case 5:
                    return m211getBT709sh9K6P8();
                case 6:
                    return m208getBT2020sh9K6P8();
                case 7:
                    return m214getDCI_P3sh9K6P8();
                case 8:
                    return m215getDISPLAY_P3sh9K6P8();
                case 9:
                    return m219getNTSC_1953sh9K6P8();
                case 10:
                    return m221getSMPTE_Csh9K6P8();
                case 11:
                    return m207getADOBE_RGBsh9K6P8();
                case 12:
                    return m220getPRO_PHOTO_RGBsh9K6P8();
                case 13:
                    return m205getACESsh9K6P8();
                case 14:
                    return m206getACESCGsh9K6P8();
                case 15:
                    return m213getCIE_XYZsh9K6P8();
                case 16:
                    return m212getCIE_LABsh9K6P8();
                default:
                    if (Build.VERSION.SDK_INT < 34) {
                        return null;
                    }
                    int i = iArr[named.ordinal()];
                    if (i == 17) {
                        return m209getBT2020_HLGsh9K6P8();
                    }
                    if (i != 18) {
                        return null;
                    }
                    return m210getBT2020_PQsh9K6P8();
            }
        }

        /* JADX INFO: renamed from: getACES-sh9K6P8, reason: not valid java name */
        public final String m205getACESsh9K6P8() {
            return CameraColorSpace.ACES;
        }

        /* JADX INFO: renamed from: getACESCG-sh9K6P8, reason: not valid java name */
        public final String m206getACESCGsh9K6P8() {
            return CameraColorSpace.ACESCG;
        }

        /* JADX INFO: renamed from: getADOBE_RGB-sh9K6P8, reason: not valid java name */
        public final String m207getADOBE_RGBsh9K6P8() {
            return CameraColorSpace.ADOBE_RGB;
        }

        /* JADX INFO: renamed from: getBT2020-sh9K6P8, reason: not valid java name */
        public final String m208getBT2020sh9K6P8() {
            return CameraColorSpace.BT2020;
        }

        /* JADX INFO: renamed from: getBT2020_HLG-sh9K6P8, reason: not valid java name */
        public final String m209getBT2020_HLGsh9K6P8() {
            return CameraColorSpace.BT2020_HLG;
        }

        /* JADX INFO: renamed from: getBT2020_PQ-sh9K6P8, reason: not valid java name */
        public final String m210getBT2020_PQsh9K6P8() {
            return CameraColorSpace.BT2020_PQ;
        }

        /* JADX INFO: renamed from: getBT709-sh9K6P8, reason: not valid java name */
        public final String m211getBT709sh9K6P8() {
            return CameraColorSpace.BT709;
        }

        /* JADX INFO: renamed from: getCIE_LAB-sh9K6P8, reason: not valid java name */
        public final String m212getCIE_LABsh9K6P8() {
            return CameraColorSpace.CIE_LAB;
        }

        /* JADX INFO: renamed from: getCIE_XYZ-sh9K6P8, reason: not valid java name */
        public final String m213getCIE_XYZsh9K6P8() {
            return CameraColorSpace.CIE_XYZ;
        }

        /* JADX INFO: renamed from: getDCI_P3-sh9K6P8, reason: not valid java name */
        public final String m214getDCI_P3sh9K6P8() {
            return CameraColorSpace.DCI_P3;
        }

        /* JADX INFO: renamed from: getDISPLAY_P3-sh9K6P8, reason: not valid java name */
        public final String m215getDISPLAY_P3sh9K6P8() {
            return CameraColorSpace.DISPLAY_P3;
        }

        /* JADX INFO: renamed from: getEXTENDED_SRGB-sh9K6P8, reason: not valid java name */
        public final String m216getEXTENDED_SRGBsh9K6P8() {
            return CameraColorSpace.EXTENDED_SRGB;
        }

        /* JADX INFO: renamed from: getLINEAR_EXTENDED_SRGB-sh9K6P8, reason: not valid java name */
        public final String m217getLINEAR_EXTENDED_SRGBsh9K6P8() {
            return CameraColorSpace.LINEAR_EXTENDED_SRGB;
        }

        /* JADX INFO: renamed from: getLINEAR_SRGB-sh9K6P8, reason: not valid java name */
        public final String m218getLINEAR_SRGBsh9K6P8() {
            return CameraColorSpace.LINEAR_SRGB;
        }

        /* JADX INFO: renamed from: getNTSC_1953-sh9K6P8, reason: not valid java name */
        public final String m219getNTSC_1953sh9K6P8() {
            return CameraColorSpace.NTSC_1953;
        }

        /* JADX INFO: renamed from: getPRO_PHOTO_RGB-sh9K6P8, reason: not valid java name */
        public final String m220getPRO_PHOTO_RGBsh9K6P8() {
            return CameraColorSpace.PRO_PHOTO_RGB;
        }

        /* JADX INFO: renamed from: getSMPTE_C-sh9K6P8, reason: not valid java name */
        public final String m221getSMPTE_Csh9K6P8() {
            return CameraColorSpace.SMPTE_C;
        }

        /* JADX INFO: renamed from: getSRGB-sh9K6P8, reason: not valid java name */
        public final String m222getSRGBsh9K6P8() {
            return CameraColorSpace.SRGB;
        }

        /* JADX INFO: renamed from: getUNKNOWN-sh9K6P8, reason: not valid java name */
        public final String m223getUNKNOWNsh9K6P8() {
            return CameraColorSpace.UNKNOWN;
        }

        private Companion() {
        }
    }
}
