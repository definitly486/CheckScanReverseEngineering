package androidx.compose.material3;

import androidx.compose.material3.tokens.ColorDarkTokens;
import androidx.compose.material3.tokens.ColorLightTokens;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.PaletteTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;
import defpackage.me0;
import defpackage.qo;
import defpackage.ul2;
import defpackage.xn1;

/* JADX INFO: loaded from: classes2.dex */
public final class ColorSchemeKt {
    public static final float DisabledAlpha = 0.38f;
    private static final ProvidableCompositionLocal<ColorScheme> LocalColorScheme = CompositionLocalKt.staticCompositionLocalOf(new qo(1));
    private static final ProvidableCompositionLocal<Boolean> LocalTonalElevationEnabled = CompositionLocalKt.staticCompositionLocalOf(new xn1(0));

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ColorSchemeKeyTokens.values().length];
            try {
                iArr[ColorSchemeKeyTokens.Background.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Error.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ColorSchemeKeyTokens.ErrorContainer.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseOnSurface.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InversePrimary.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseSurface.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnBackground.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnError.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnErrorContainer.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimary.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryContainer.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondary.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryContainer.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurface.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurfaceVariant.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceTint.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiary.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryContainer.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Outline.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OutlineVariant.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Primary.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryContainer.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Scrim.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Secondary.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryContainer.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Surface.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceVariant.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceBright.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainer.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHigh.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHighest.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLow.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLowest.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceDim.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Tertiary.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryContainer.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryFixed.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryFixedDim.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryFixed.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryFixedVariant.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryFixed.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryFixedDim.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryFixed.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryFixedVariant.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryFixed.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryFixedDim.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryFixed.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryFixedVariant.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ColorScheme LocalColorScheme$lambda$1() {
        return m3287lightColorScheme_VG5OTI$default(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -1, 65535, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean LocalTonalElevationEnabled$lambda$2() {
        return true;
    }

    /* JADX INFO: renamed from: applyTonalElevation-RFCenO8, reason: not valid java name */
    public static final long m3273applyTonalElevationRFCenO8(ColorScheme colorScheme, long j, float f, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1610977682, i, -1, "androidx.compose.material3.applyTonalElevation (ColorScheme.kt:1539)");
        }
        boolean zBooleanValue = ((Boolean) composer.consume(LocalTonalElevationEnabled)).booleanValue();
        if (Color.m6233equalsimpl0(j, colorScheme.m3259getSurface0d7_KjU()) && zBooleanValue) {
            j = m3288surfaceColorAtElevation3ABfNKs(colorScheme, f);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return j;
    }

    /* JADX INFO: renamed from: contentColorFor-4WTKRHQ, reason: not valid java name */
    public static final long m3274contentColorFor4WTKRHQ(ColorScheme colorScheme, long j) {
        if (Color.m6233equalsimpl0(j, colorScheme.m3250getPrimary0d7_KjU())) {
            return colorScheme.m3234getOnPrimary0d7_KjU();
        }
        if (Color.m6233equalsimpl0(j, colorScheme.m3255getSecondary0d7_KjU())) {
            return colorScheme.m3238getOnSecondary0d7_KjU();
        }
        if (Color.m6233equalsimpl0(j, colorScheme.m3269getTertiary0d7_KjU())) {
            return colorScheme.m3244getOnTertiary0d7_KjU();
        }
        if (Color.m6233equalsimpl0(j, colorScheme.m3225getBackground0d7_KjU())) {
            return colorScheme.m3231getOnBackground0d7_KjU();
        }
        if (Color.m6233equalsimpl0(j, colorScheme.m3226getError0d7_KjU())) {
            return colorScheme.m3232getOnError0d7_KjU();
        }
        if (Color.m6233equalsimpl0(j, colorScheme.m3251getPrimaryContainer0d7_KjU())) {
            return colorScheme.m3235getOnPrimaryContainer0d7_KjU();
        }
        if (Color.m6233equalsimpl0(j, colorScheme.m3256getSecondaryContainer0d7_KjU())) {
            return colorScheme.m3239getOnSecondaryContainer0d7_KjU();
        }
        if (Color.m6233equalsimpl0(j, colorScheme.m3270getTertiaryContainer0d7_KjU())) {
            return colorScheme.m3245getOnTertiaryContainer0d7_KjU();
        }
        if (Color.m6233equalsimpl0(j, colorScheme.m3227getErrorContainer0d7_KjU())) {
            return colorScheme.m3233getOnErrorContainer0d7_KjU();
        }
        if (Color.m6233equalsimpl0(j, colorScheme.m3230getInverseSurface0d7_KjU())) {
            return colorScheme.m3228getInverseOnSurface0d7_KjU();
        }
        if (Color.m6233equalsimpl0(j, colorScheme.m3259getSurface0d7_KjU())) {
            return colorScheme.m3242getOnSurface0d7_KjU();
        }
        if (Color.m6233equalsimpl0(j, colorScheme.m3268getSurfaceVariant0d7_KjU())) {
            return colorScheme.m3243getOnSurfaceVariant0d7_KjU();
        }
        if (!Color.m6233equalsimpl0(j, colorScheme.m3260getSurfaceBright0d7_KjU()) && !Color.m6233equalsimpl0(j, colorScheme.m3261getSurfaceContainer0d7_KjU()) && !Color.m6233equalsimpl0(j, colorScheme.m3262getSurfaceContainerHigh0d7_KjU()) && !Color.m6233equalsimpl0(j, colorScheme.m3263getSurfaceContainerHighest0d7_KjU()) && !Color.m6233equalsimpl0(j, colorScheme.m3264getSurfaceContainerLow0d7_KjU()) && !Color.m6233equalsimpl0(j, colorScheme.m3265getSurfaceContainerLowest0d7_KjU()) && !Color.m6233equalsimpl0(j, colorScheme.m3266getSurfaceDim0d7_KjU())) {
            if (!Color.m6233equalsimpl0(j, colorScheme.m3252getPrimaryFixed0d7_KjU()) && !Color.m6233equalsimpl0(j, colorScheme.m3253getPrimaryFixedDim0d7_KjU())) {
                if (!Color.m6233equalsimpl0(j, colorScheme.m3257getSecondaryFixed0d7_KjU()) && !Color.m6233equalsimpl0(j, colorScheme.m3258getSecondaryFixedDim0d7_KjU())) {
                    if (!Color.m6233equalsimpl0(j, colorScheme.m3271getTertiaryFixed0d7_KjU()) && !Color.m6233equalsimpl0(j, colorScheme.m3272getTertiaryFixedDim0d7_KjU())) {
                        return Color.Companion.m6268getUnspecified0d7_KjU();
                    }
                    return colorScheme.m3246getOnTertiaryFixed0d7_KjU();
                }
                return colorScheme.m3240getOnSecondaryFixed0d7_KjU();
            }
            return colorScheme.m3236getOnPrimaryFixed0d7_KjU();
        }
        return colorScheme.m3242getOnSurface0d7_KjU();
    }

    /* JADX INFO: renamed from: contentColorFor-ek8zF_U, reason: not valid java name */
    public static final long m3275contentColorForek8zF_U(long j, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(509589638, i, -1, "androidx.compose.material3.contentColorFor (ColorScheme.kt:1112)");
        }
        composer.startReplaceGroup(89374938);
        long jM3274contentColorFor4WTKRHQ = m3274contentColorFor4WTKRHQ(MaterialTheme.INSTANCE.getColorScheme(composer, 6), j);
        if (jM3274contentColorFor4WTKRHQ == 16) {
            jM3274contentColorFor4WTKRHQ = ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
        }
        composer.endReplaceGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return jM3274contentColorFor4WTKRHQ;
    }

    @ul2
    /* JADX INFO: renamed from: darkColorScheme-C-Xl9yA, reason: not valid java name */
    public static final /* synthetic */ ColorScheme m3276darkColorSchemeCXl9yA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36) {
        return m3281darkColorScheme_VG5OTI$default(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 65520, null);
    }

    /* JADX INFO: renamed from: darkColorScheme-C-Xl9yA$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m3277darkColorSchemeCXl9yA$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, int i, int i2, Object obj) {
        long jM4607getPrimary0d7_KjU = (i & 1) != 0 ? ColorDarkTokens.INSTANCE.m4607getPrimary0d7_KjU() : j;
        long jM4591getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorDarkTokens.INSTANCE.m4591getOnPrimary0d7_KjU() : j2;
        long jM4608getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorDarkTokens.INSTANCE.m4608getPrimaryContainer0d7_KjU() : j3;
        long jM4592getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorDarkTokens.INSTANCE.m4592getOnPrimaryContainer0d7_KjU() : j4;
        long jM4586getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorDarkTokens.INSTANCE.m4586getInversePrimary0d7_KjU() : j5;
        long jM4612getSecondary0d7_KjU = (i & 32) != 0 ? ColorDarkTokens.INSTANCE.m4612getSecondary0d7_KjU() : j6;
        long jM4595getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorDarkTokens.INSTANCE.m4595getOnSecondary0d7_KjU() : j7;
        long jM4613getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorDarkTokens.INSTANCE.m4613getSecondaryContainer0d7_KjU() : j8;
        long j37 = jM4607getPrimary0d7_KjU;
        long jM4596getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorDarkTokens.INSTANCE.m4596getOnSecondaryContainer0d7_KjU() : j9;
        long jM4626getTertiary0d7_KjU = (i & 512) != 0 ? ColorDarkTokens.INSTANCE.m4626getTertiary0d7_KjU() : j10;
        long jM4601getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorDarkTokens.INSTANCE.m4601getOnTertiary0d7_KjU() : j11;
        long jM4627getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorDarkTokens.INSTANCE.m4627getTertiaryContainer0d7_KjU() : j12;
        long jM4602getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorDarkTokens.INSTANCE.m4602getOnTertiaryContainer0d7_KjU() : j13;
        long jM4582getBackground0d7_KjU = (i & 8192) != 0 ? ColorDarkTokens.INSTANCE.m4582getBackground0d7_KjU() : j14;
        long jM4588getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorDarkTokens.INSTANCE.m4588getOnBackground0d7_KjU() : j15;
        long jM4616getSurface0d7_KjU = (i & 32768) != 0 ? ColorDarkTokens.INSTANCE.m4616getSurface0d7_KjU() : j16;
        long jM4599getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorDarkTokens.INSTANCE.m4599getOnSurface0d7_KjU() : j17;
        long jM4625getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorDarkTokens.INSTANCE.m4625getSurfaceVariant0d7_KjU() : j18;
        long jM4600getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorDarkTokens.INSTANCE.m4600getOnSurfaceVariant0d7_KjU() : j19;
        long j38 = (i & 524288) != 0 ? j37 : j20;
        long jM4587getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorDarkTokens.INSTANCE.m4587getInverseSurface0d7_KjU() : j21;
        long jM4585getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorDarkTokens.INSTANCE.m4585getInverseOnSurface0d7_KjU() : j22;
        long jM4583getError0d7_KjU = (i & 4194304) != 0 ? ColorDarkTokens.INSTANCE.m4583getError0d7_KjU() : j23;
        long jM4589getOnError0d7_KjU = (i & 8388608) != 0 ? ColorDarkTokens.INSTANCE.m4589getOnError0d7_KjU() : j24;
        long jM4584getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorDarkTokens.INSTANCE.m4584getErrorContainer0d7_KjU() : j25;
        long jM4590getOnErrorContainer0d7_KjU = (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? ColorDarkTokens.INSTANCE.m4590getOnErrorContainer0d7_KjU() : j26;
        long jM4605getOutline0d7_KjU = (i & 67108864) != 0 ? ColorDarkTokens.INSTANCE.m4605getOutline0d7_KjU() : j27;
        long jM4606getOutlineVariant0d7_KjU = (i & 134217728) != 0 ? ColorDarkTokens.INSTANCE.m4606getOutlineVariant0d7_KjU() : j28;
        long jM4611getScrim0d7_KjU = (i & 268435456) != 0 ? ColorDarkTokens.INSTANCE.m4611getScrim0d7_KjU() : j29;
        long jM4617getSurfaceBright0d7_KjU = (i & 536870912) != 0 ? ColorDarkTokens.INSTANCE.m4617getSurfaceBright0d7_KjU() : j30;
        long jM4618getSurfaceContainer0d7_KjU = (i & 1073741824) != 0 ? ColorDarkTokens.INSTANCE.m4618getSurfaceContainer0d7_KjU() : j31;
        long jM4619getSurfaceContainerHigh0d7_KjU = (i & Integer.MIN_VALUE) != 0 ? ColorDarkTokens.INSTANCE.m4619getSurfaceContainerHigh0d7_KjU() : j32;
        long jM4620getSurfaceContainerHighest0d7_KjU = (i2 & 1) != 0 ? ColorDarkTokens.INSTANCE.m4620getSurfaceContainerHighest0d7_KjU() : j33;
        long jM4621getSurfaceContainerLow0d7_KjU = (i2 & 2) != 0 ? ColorDarkTokens.INSTANCE.m4621getSurfaceContainerLow0d7_KjU() : j34;
        long jM4622getSurfaceContainerLowest0d7_KjU = (i2 & 4) != 0 ? ColorDarkTokens.INSTANCE.m4622getSurfaceContainerLowest0d7_KjU() : j35;
        if ((i2 & 8) != 0) {
            j36 = ColorDarkTokens.INSTANCE.m4623getSurfaceDim0d7_KjU();
        }
        return m3276darkColorSchemeCXl9yA(j37, jM4591getOnPrimary0d7_KjU, jM4608getPrimaryContainer0d7_KjU, jM4592getOnPrimaryContainer0d7_KjU, jM4586getInversePrimary0d7_KjU, jM4612getSecondary0d7_KjU, jM4595getOnSecondary0d7_KjU, jM4613getSecondaryContainer0d7_KjU, jM4596getOnSecondaryContainer0d7_KjU, jM4626getTertiary0d7_KjU, jM4601getOnTertiary0d7_KjU, jM4627getTertiaryContainer0d7_KjU, jM4602getOnTertiaryContainer0d7_KjU, jM4582getBackground0d7_KjU, jM4588getOnBackground0d7_KjU, jM4616getSurface0d7_KjU, jM4599getOnSurface0d7_KjU, jM4625getSurfaceVariant0d7_KjU, jM4600getOnSurfaceVariant0d7_KjU, j38, jM4587getInverseSurface0d7_KjU, jM4585getInverseOnSurface0d7_KjU, jM4583getError0d7_KjU, jM4589getOnError0d7_KjU, jM4584getErrorContainer0d7_KjU, jM4590getOnErrorContainer0d7_KjU, jM4605getOutline0d7_KjU, jM4606getOutlineVariant0d7_KjU, jM4611getScrim0d7_KjU, jM4617getSurfaceBright0d7_KjU, jM4618getSurfaceContainer0d7_KjU, jM4619getSurfaceContainerHigh0d7_KjU, jM4620getSurfaceContainerHighest0d7_KjU, jM4621getSurfaceContainerLow0d7_KjU, jM4622getSurfaceContainerLowest0d7_KjU, j36);
    }

    @ul2
    /* JADX INFO: renamed from: darkColorScheme-G1PFc-w, reason: not valid java name */
    public static final /* synthetic */ ColorScheme m3278darkColorSchemeG1PFcw(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29) {
        return m3281darkColorScheme_VG5OTI$default(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -536870912, 65535, null);
    }

    /* JADX INFO: renamed from: darkColorScheme-G1PFc-w$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m3279darkColorSchemeG1PFcw$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, int i, Object obj) {
        long jM4607getPrimary0d7_KjU = (i & 1) != 0 ? ColorDarkTokens.INSTANCE.m4607getPrimary0d7_KjU() : j;
        long jM4591getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorDarkTokens.INSTANCE.m4591getOnPrimary0d7_KjU() : j2;
        long jM4608getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorDarkTokens.INSTANCE.m4608getPrimaryContainer0d7_KjU() : j3;
        long jM4592getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorDarkTokens.INSTANCE.m4592getOnPrimaryContainer0d7_KjU() : j4;
        long jM4586getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorDarkTokens.INSTANCE.m4586getInversePrimary0d7_KjU() : j5;
        long jM4612getSecondary0d7_KjU = (i & 32) != 0 ? ColorDarkTokens.INSTANCE.m4612getSecondary0d7_KjU() : j6;
        long jM4595getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorDarkTokens.INSTANCE.m4595getOnSecondary0d7_KjU() : j7;
        long jM4613getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorDarkTokens.INSTANCE.m4613getSecondaryContainer0d7_KjU() : j8;
        long j30 = jM4607getPrimary0d7_KjU;
        long jM4596getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorDarkTokens.INSTANCE.m4596getOnSecondaryContainer0d7_KjU() : j9;
        long jM4626getTertiary0d7_KjU = (i & 512) != 0 ? ColorDarkTokens.INSTANCE.m4626getTertiary0d7_KjU() : j10;
        long jM4601getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorDarkTokens.INSTANCE.m4601getOnTertiary0d7_KjU() : j11;
        long jM4627getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorDarkTokens.INSTANCE.m4627getTertiaryContainer0d7_KjU() : j12;
        long jM4602getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorDarkTokens.INSTANCE.m4602getOnTertiaryContainer0d7_KjU() : j13;
        long jM4582getBackground0d7_KjU = (i & 8192) != 0 ? ColorDarkTokens.INSTANCE.m4582getBackground0d7_KjU() : j14;
        long jM4588getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorDarkTokens.INSTANCE.m4588getOnBackground0d7_KjU() : j15;
        long jM4616getSurface0d7_KjU = (i & 32768) != 0 ? ColorDarkTokens.INSTANCE.m4616getSurface0d7_KjU() : j16;
        long jM4599getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorDarkTokens.INSTANCE.m4599getOnSurface0d7_KjU() : j17;
        long jM4625getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorDarkTokens.INSTANCE.m4625getSurfaceVariant0d7_KjU() : j18;
        long jM4600getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorDarkTokens.INSTANCE.m4600getOnSurfaceVariant0d7_KjU() : j19;
        long j31 = (i & 524288) != 0 ? j30 : j20;
        long jM4587getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorDarkTokens.INSTANCE.m4587getInverseSurface0d7_KjU() : j21;
        long jM4585getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorDarkTokens.INSTANCE.m4585getInverseOnSurface0d7_KjU() : j22;
        long jM4583getError0d7_KjU = (i & 4194304) != 0 ? ColorDarkTokens.INSTANCE.m4583getError0d7_KjU() : j23;
        long jM4589getOnError0d7_KjU = (i & 8388608) != 0 ? ColorDarkTokens.INSTANCE.m4589getOnError0d7_KjU() : j24;
        long jM4584getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorDarkTokens.INSTANCE.m4584getErrorContainer0d7_KjU() : j25;
        long jM4590getOnErrorContainer0d7_KjU = (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? ColorDarkTokens.INSTANCE.m4590getOnErrorContainer0d7_KjU() : j26;
        long jM4605getOutline0d7_KjU = (i & 67108864) != 0 ? ColorDarkTokens.INSTANCE.m4605getOutline0d7_KjU() : j27;
        long jM4606getOutlineVariant0d7_KjU = (i & 134217728) != 0 ? ColorDarkTokens.INSTANCE.m4606getOutlineVariant0d7_KjU() : j28;
        if ((i & 268435456) != 0) {
            j29 = ColorDarkTokens.INSTANCE.m4611getScrim0d7_KjU();
        }
        return m3278darkColorSchemeG1PFcw(j30, jM4591getOnPrimary0d7_KjU, jM4608getPrimaryContainer0d7_KjU, jM4592getOnPrimaryContainer0d7_KjU, jM4586getInversePrimary0d7_KjU, jM4612getSecondary0d7_KjU, jM4595getOnSecondary0d7_KjU, jM4613getSecondaryContainer0d7_KjU, jM4596getOnSecondaryContainer0d7_KjU, jM4626getTertiary0d7_KjU, jM4601getOnTertiary0d7_KjU, jM4627getTertiaryContainer0d7_KjU, jM4602getOnTertiaryContainer0d7_KjU, jM4582getBackground0d7_KjU, jM4588getOnBackground0d7_KjU, jM4616getSurface0d7_KjU, jM4599getOnSurface0d7_KjU, jM4625getSurfaceVariant0d7_KjU, jM4600getOnSurfaceVariant0d7_KjU, j31, jM4587getInverseSurface0d7_KjU, jM4585getInverseOnSurface0d7_KjU, jM4583getError0d7_KjU, jM4589getOnError0d7_KjU, jM4584getErrorContainer0d7_KjU, jM4590getOnErrorContainer0d7_KjU, jM4605getOutline0d7_KjU, jM4606getOutlineVariant0d7_KjU, j29);
    }

    /* JADX INFO: renamed from: darkColorScheme-_VG5OTI, reason: not valid java name */
    public static final ColorScheme m3280darkColorScheme_VG5OTI(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48) {
        return new ColorScheme(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j36, j31, j32, j33, j34, j35, j37, j38, j39, j40, j41, j42, j43, j44, j45, j46, j47, j48, null);
    }

    /* JADX INFO: renamed from: darkColorScheme-_VG5OTI$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m3281darkColorScheme_VG5OTI$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48, int i, int i2, Object obj) {
        long jM4607getPrimary0d7_KjU = (i & 1) != 0 ? ColorDarkTokens.INSTANCE.m4607getPrimary0d7_KjU() : j;
        long jM4591getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorDarkTokens.INSTANCE.m4591getOnPrimary0d7_KjU() : j2;
        long jM4608getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorDarkTokens.INSTANCE.m4608getPrimaryContainer0d7_KjU() : j3;
        long jM4592getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorDarkTokens.INSTANCE.m4592getOnPrimaryContainer0d7_KjU() : j4;
        long jM4586getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorDarkTokens.INSTANCE.m4586getInversePrimary0d7_KjU() : j5;
        long jM4612getSecondary0d7_KjU = (i & 32) != 0 ? ColorDarkTokens.INSTANCE.m4612getSecondary0d7_KjU() : j6;
        long jM4595getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorDarkTokens.INSTANCE.m4595getOnSecondary0d7_KjU() : j7;
        long j49 = jM4607getPrimary0d7_KjU;
        long jM4613getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorDarkTokens.INSTANCE.m4613getSecondaryContainer0d7_KjU() : j8;
        long jM4596getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorDarkTokens.INSTANCE.m4596getOnSecondaryContainer0d7_KjU() : j9;
        long jM4626getTertiary0d7_KjU = (i & 512) != 0 ? ColorDarkTokens.INSTANCE.m4626getTertiary0d7_KjU() : j10;
        long jM4601getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorDarkTokens.INSTANCE.m4601getOnTertiary0d7_KjU() : j11;
        long jM4627getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorDarkTokens.INSTANCE.m4627getTertiaryContainer0d7_KjU() : j12;
        long jM4602getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorDarkTokens.INSTANCE.m4602getOnTertiaryContainer0d7_KjU() : j13;
        long jM4582getBackground0d7_KjU = (i & 8192) != 0 ? ColorDarkTokens.INSTANCE.m4582getBackground0d7_KjU() : j14;
        long jM4588getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorDarkTokens.INSTANCE.m4588getOnBackground0d7_KjU() : j15;
        long jM4616getSurface0d7_KjU = (i & 32768) != 0 ? ColorDarkTokens.INSTANCE.m4616getSurface0d7_KjU() : j16;
        long jM4599getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorDarkTokens.INSTANCE.m4599getOnSurface0d7_KjU() : j17;
        long jM4625getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorDarkTokens.INSTANCE.m4625getSurfaceVariant0d7_KjU() : j18;
        long jM4600getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorDarkTokens.INSTANCE.m4600getOnSurfaceVariant0d7_KjU() : j19;
        long j50 = (i & 524288) != 0 ? j49 : j20;
        long jM4587getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorDarkTokens.INSTANCE.m4587getInverseSurface0d7_KjU() : j21;
        long jM4585getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorDarkTokens.INSTANCE.m4585getInverseOnSurface0d7_KjU() : j22;
        long jM4583getError0d7_KjU = (i & 4194304) != 0 ? ColorDarkTokens.INSTANCE.m4583getError0d7_KjU() : j23;
        long jM4589getOnError0d7_KjU = (i & 8388608) != 0 ? ColorDarkTokens.INSTANCE.m4589getOnError0d7_KjU() : j24;
        long jM4584getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorDarkTokens.INSTANCE.m4584getErrorContainer0d7_KjU() : j25;
        long jM4590getOnErrorContainer0d7_KjU = (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? ColorDarkTokens.INSTANCE.m4590getOnErrorContainer0d7_KjU() : j26;
        long jM4605getOutline0d7_KjU = (i & 67108864) != 0 ? ColorDarkTokens.INSTANCE.m4605getOutline0d7_KjU() : j27;
        long jM4606getOutlineVariant0d7_KjU = (i & 134217728) != 0 ? ColorDarkTokens.INSTANCE.m4606getOutlineVariant0d7_KjU() : j28;
        long jM4611getScrim0d7_KjU = (i & 268435456) != 0 ? ColorDarkTokens.INSTANCE.m4611getScrim0d7_KjU() : j29;
        long jM4617getSurfaceBright0d7_KjU = (i & 536870912) != 0 ? ColorDarkTokens.INSTANCE.m4617getSurfaceBright0d7_KjU() : j30;
        long jM4618getSurfaceContainer0d7_KjU = (i & 1073741824) != 0 ? ColorDarkTokens.INSTANCE.m4618getSurfaceContainer0d7_KjU() : j31;
        long jM4619getSurfaceContainerHigh0d7_KjU = (i & Integer.MIN_VALUE) != 0 ? ColorDarkTokens.INSTANCE.m4619getSurfaceContainerHigh0d7_KjU() : j32;
        long jM4620getSurfaceContainerHighest0d7_KjU = (i2 & 1) != 0 ? ColorDarkTokens.INSTANCE.m4620getSurfaceContainerHighest0d7_KjU() : j33;
        long jM4621getSurfaceContainerLow0d7_KjU = (i2 & 2) != 0 ? ColorDarkTokens.INSTANCE.m4621getSurfaceContainerLow0d7_KjU() : j34;
        long jM4622getSurfaceContainerLowest0d7_KjU = (i2 & 4) != 0 ? ColorDarkTokens.INSTANCE.m4622getSurfaceContainerLowest0d7_KjU() : j35;
        long jM4623getSurfaceDim0d7_KjU = (i2 & 8) != 0 ? ColorDarkTokens.INSTANCE.m4623getSurfaceDim0d7_KjU() : j36;
        long jM4609getPrimaryFixed0d7_KjU = (i2 & 16) != 0 ? ColorDarkTokens.INSTANCE.m4609getPrimaryFixed0d7_KjU() : j37;
        long jM4610getPrimaryFixedDim0d7_KjU = (i2 & 32) != 0 ? ColorDarkTokens.INSTANCE.m4610getPrimaryFixedDim0d7_KjU() : j38;
        long jM4593getOnPrimaryFixed0d7_KjU = (i2 & 64) != 0 ? ColorDarkTokens.INSTANCE.m4593getOnPrimaryFixed0d7_KjU() : j39;
        long jM4594getOnPrimaryFixedVariant0d7_KjU = (i2 & 128) != 0 ? ColorDarkTokens.INSTANCE.m4594getOnPrimaryFixedVariant0d7_KjU() : j40;
        long jM4614getSecondaryFixed0d7_KjU = (i2 & 256) != 0 ? ColorDarkTokens.INSTANCE.m4614getSecondaryFixed0d7_KjU() : j41;
        long jM4615getSecondaryFixedDim0d7_KjU = (i2 & 512) != 0 ? ColorDarkTokens.INSTANCE.m4615getSecondaryFixedDim0d7_KjU() : j42;
        long jM4597getOnSecondaryFixed0d7_KjU = (i2 & 1024) != 0 ? ColorDarkTokens.INSTANCE.m4597getOnSecondaryFixed0d7_KjU() : j43;
        long jM4598getOnSecondaryFixedVariant0d7_KjU = (i2 & 2048) != 0 ? ColorDarkTokens.INSTANCE.m4598getOnSecondaryFixedVariant0d7_KjU() : j44;
        long jM4628getTertiaryFixed0d7_KjU = (i2 & 4096) != 0 ? ColorDarkTokens.INSTANCE.m4628getTertiaryFixed0d7_KjU() : j45;
        long jM4629getTertiaryFixedDim0d7_KjU = (i2 & 8192) != 0 ? ColorDarkTokens.INSTANCE.m4629getTertiaryFixedDim0d7_KjU() : j46;
        long jM4603getOnTertiaryFixed0d7_KjU = (i2 & 16384) != 0 ? ColorDarkTokens.INSTANCE.m4603getOnTertiaryFixed0d7_KjU() : j47;
        if ((i2 & 32768) != 0) {
            j48 = ColorDarkTokens.INSTANCE.m4604getOnTertiaryFixedVariant0d7_KjU();
        }
        return m3280darkColorScheme_VG5OTI(j49, jM4591getOnPrimary0d7_KjU, jM4608getPrimaryContainer0d7_KjU, jM4592getOnPrimaryContainer0d7_KjU, jM4586getInversePrimary0d7_KjU, jM4612getSecondary0d7_KjU, jM4595getOnSecondary0d7_KjU, jM4613getSecondaryContainer0d7_KjU, jM4596getOnSecondaryContainer0d7_KjU, jM4626getTertiary0d7_KjU, jM4601getOnTertiary0d7_KjU, jM4627getTertiaryContainer0d7_KjU, jM4602getOnTertiaryContainer0d7_KjU, jM4582getBackground0d7_KjU, jM4588getOnBackground0d7_KjU, jM4616getSurface0d7_KjU, jM4599getOnSurface0d7_KjU, jM4625getSurfaceVariant0d7_KjU, jM4600getOnSurfaceVariant0d7_KjU, j50, jM4587getInverseSurface0d7_KjU, jM4585getInverseOnSurface0d7_KjU, jM4583getError0d7_KjU, jM4589getOnError0d7_KjU, jM4584getErrorContainer0d7_KjU, jM4590getOnErrorContainer0d7_KjU, jM4605getOutline0d7_KjU, jM4606getOutlineVariant0d7_KjU, jM4611getScrim0d7_KjU, jM4617getSurfaceBright0d7_KjU, jM4618getSurfaceContainer0d7_KjU, jM4619getSurfaceContainerHigh0d7_KjU, jM4620getSurfaceContainerHighest0d7_KjU, jM4621getSurfaceContainerLow0d7_KjU, jM4622getSurfaceContainerLowest0d7_KjU, jM4623getSurfaceDim0d7_KjU, jM4609getPrimaryFixed0d7_KjU, jM4610getPrimaryFixedDim0d7_KjU, jM4593getOnPrimaryFixed0d7_KjU, jM4594getOnPrimaryFixedVariant0d7_KjU, jM4614getSecondaryFixed0d7_KjU, jM4615getSecondaryFixedDim0d7_KjU, jM4597getOnSecondaryFixed0d7_KjU, jM4598getOnSecondaryFixedVariant0d7_KjU, jM4628getTertiaryFixed0d7_KjU, jM4629getTertiaryFixedDim0d7_KjU, jM4603getOnTertiaryFixed0d7_KjU, j48);
    }

    public static final ColorScheme expressiveLightColorScheme() {
        PaletteTokens paletteTokens = PaletteTokens.INSTANCE;
        return m3287lightColorScheme_VG5OTI$default(0L, 0L, 0L, paletteTokens.m5032getPrimary300d7_KjU(), 0L, 0L, 0L, 0L, paletteTokens.m5045getSecondary300d7_KjU(), 0L, 0L, 0L, paletteTokens.m5058getTertiary300d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, paletteTokens.m4982getError300d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -33558793, 65535, null);
    }

    public static final long fromToken(ColorScheme colorScheme, ColorSchemeKeyTokens colorSchemeKeyTokens) {
        switch (WhenMappings.$EnumSwitchMapping$0[colorSchemeKeyTokens.ordinal()]) {
            case 1:
                return colorScheme.m3225getBackground0d7_KjU();
            case 2:
                return colorScheme.m3226getError0d7_KjU();
            case 3:
                return colorScheme.m3227getErrorContainer0d7_KjU();
            case 4:
                return colorScheme.m3228getInverseOnSurface0d7_KjU();
            case 5:
                return colorScheme.m3229getInversePrimary0d7_KjU();
            case 6:
                return colorScheme.m3230getInverseSurface0d7_KjU();
            case 7:
                return colorScheme.m3231getOnBackground0d7_KjU();
            case 8:
                return colorScheme.m3232getOnError0d7_KjU();
            case 9:
                return colorScheme.m3233getOnErrorContainer0d7_KjU();
            case 10:
                return colorScheme.m3234getOnPrimary0d7_KjU();
            case 11:
                return colorScheme.m3235getOnPrimaryContainer0d7_KjU();
            case 12:
                return colorScheme.m3238getOnSecondary0d7_KjU();
            case 13:
                return colorScheme.m3239getOnSecondaryContainer0d7_KjU();
            case 14:
                return colorScheme.m3242getOnSurface0d7_KjU();
            case 15:
                return colorScheme.m3243getOnSurfaceVariant0d7_KjU();
            case 16:
                return colorScheme.m3267getSurfaceTint0d7_KjU();
            case 17:
                return colorScheme.m3244getOnTertiary0d7_KjU();
            case 18:
                return colorScheme.m3245getOnTertiaryContainer0d7_KjU();
            case 19:
                return colorScheme.m3248getOutline0d7_KjU();
            case 20:
                return colorScheme.m3249getOutlineVariant0d7_KjU();
            case 21:
                return colorScheme.m3250getPrimary0d7_KjU();
            case 22:
                return colorScheme.m3251getPrimaryContainer0d7_KjU();
            case 23:
                return colorScheme.m3254getScrim0d7_KjU();
            case 24:
                return colorScheme.m3255getSecondary0d7_KjU();
            case 25:
                return colorScheme.m3256getSecondaryContainer0d7_KjU();
            case 26:
                return colorScheme.m3259getSurface0d7_KjU();
            case 27:
                return colorScheme.m3268getSurfaceVariant0d7_KjU();
            case 28:
                return colorScheme.m3260getSurfaceBright0d7_KjU();
            case 29:
                return colorScheme.m3261getSurfaceContainer0d7_KjU();
            case 30:
                return colorScheme.m3262getSurfaceContainerHigh0d7_KjU();
            case 31:
                return colorScheme.m3263getSurfaceContainerHighest0d7_KjU();
            case 32:
                return colorScheme.m3264getSurfaceContainerLow0d7_KjU();
            case 33:
                return colorScheme.m3265getSurfaceContainerLowest0d7_KjU();
            case 34:
                return colorScheme.m3266getSurfaceDim0d7_KjU();
            case 35:
                return colorScheme.m3269getTertiary0d7_KjU();
            case 36:
                return colorScheme.m3270getTertiaryContainer0d7_KjU();
            case 37:
                return colorScheme.m3252getPrimaryFixed0d7_KjU();
            case 38:
                return colorScheme.m3253getPrimaryFixedDim0d7_KjU();
            case 39:
                return colorScheme.m3236getOnPrimaryFixed0d7_KjU();
            case 40:
                return colorScheme.m3237getOnPrimaryFixedVariant0d7_KjU();
            case 41:
                return colorScheme.m3257getSecondaryFixed0d7_KjU();
            case 42:
                return colorScheme.m3258getSecondaryFixedDim0d7_KjU();
            case 43:
                return colorScheme.m3240getOnSecondaryFixed0d7_KjU();
            case 44:
                return colorScheme.m3241getOnSecondaryFixedVariant0d7_KjU();
            case 45:
                return colorScheme.m3271getTertiaryFixed0d7_KjU();
            case 46:
                return colorScheme.m3272getTertiaryFixedDim0d7_KjU();
            case 47:
                return colorScheme.m3246getOnTertiaryFixed0d7_KjU();
            case 48:
                return colorScheme.m3247getOnTertiaryFixedVariant0d7_KjU();
            default:
                me0.e();
                return 0L;
        }
    }

    public static final ProvidableCompositionLocal<ColorScheme> getLocalColorScheme() {
        return LocalColorScheme;
    }

    public static final ProvidableCompositionLocal<Boolean> getLocalTonalElevationEnabled() {
        return LocalTonalElevationEnabled;
    }

    public static final long getValue(ColorSchemeKeyTokens colorSchemeKeyTokens, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-810780884, i, -1, "androidx.compose.material3.<get-value> (ColorScheme.kt:1524)");
        }
        long jFromToken = fromToken(MaterialTheme.INSTANCE.getColorScheme(composer, 6), colorSchemeKeyTokens);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return jFromToken;
    }

    @ul2
    /* JADX INFO: renamed from: lightColorScheme-C-Xl9yA, reason: not valid java name */
    public static final /* synthetic */ ColorScheme m3282lightColorSchemeCXl9yA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36) {
        return m3287lightColorScheme_VG5OTI$default(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 65520, null);
    }

    /* JADX INFO: renamed from: lightColorScheme-C-Xl9yA$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m3283lightColorSchemeCXl9yA$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, int i, int i2, Object obj) {
        long jM4655getPrimary0d7_KjU = (i & 1) != 0 ? ColorLightTokens.INSTANCE.m4655getPrimary0d7_KjU() : j;
        long jM4639getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorLightTokens.INSTANCE.m4639getOnPrimary0d7_KjU() : j2;
        long jM4656getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorLightTokens.INSTANCE.m4656getPrimaryContainer0d7_KjU() : j3;
        long jM4640getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorLightTokens.INSTANCE.m4640getOnPrimaryContainer0d7_KjU() : j4;
        long jM4634getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorLightTokens.INSTANCE.m4634getInversePrimary0d7_KjU() : j5;
        long jM4660getSecondary0d7_KjU = (i & 32) != 0 ? ColorLightTokens.INSTANCE.m4660getSecondary0d7_KjU() : j6;
        long jM4643getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorLightTokens.INSTANCE.m4643getOnSecondary0d7_KjU() : j7;
        long jM4661getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorLightTokens.INSTANCE.m4661getSecondaryContainer0d7_KjU() : j8;
        long j37 = jM4655getPrimary0d7_KjU;
        long jM4644getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorLightTokens.INSTANCE.m4644getOnSecondaryContainer0d7_KjU() : j9;
        long jM4674getTertiary0d7_KjU = (i & 512) != 0 ? ColorLightTokens.INSTANCE.m4674getTertiary0d7_KjU() : j10;
        long jM4649getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorLightTokens.INSTANCE.m4649getOnTertiary0d7_KjU() : j11;
        long jM4675getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorLightTokens.INSTANCE.m4675getTertiaryContainer0d7_KjU() : j12;
        long jM4650getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorLightTokens.INSTANCE.m4650getOnTertiaryContainer0d7_KjU() : j13;
        long jM4630getBackground0d7_KjU = (i & 8192) != 0 ? ColorLightTokens.INSTANCE.m4630getBackground0d7_KjU() : j14;
        long jM4636getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorLightTokens.INSTANCE.m4636getOnBackground0d7_KjU() : j15;
        long jM4664getSurface0d7_KjU = (i & 32768) != 0 ? ColorLightTokens.INSTANCE.m4664getSurface0d7_KjU() : j16;
        long jM4647getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorLightTokens.INSTANCE.m4647getOnSurface0d7_KjU() : j17;
        long jM4673getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorLightTokens.INSTANCE.m4673getSurfaceVariant0d7_KjU() : j18;
        long jM4648getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorLightTokens.INSTANCE.m4648getOnSurfaceVariant0d7_KjU() : j19;
        long j38 = (i & 524288) != 0 ? j37 : j20;
        long jM4635getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorLightTokens.INSTANCE.m4635getInverseSurface0d7_KjU() : j21;
        long jM4633getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorLightTokens.INSTANCE.m4633getInverseOnSurface0d7_KjU() : j22;
        long jM4631getError0d7_KjU = (i & 4194304) != 0 ? ColorLightTokens.INSTANCE.m4631getError0d7_KjU() : j23;
        long jM4637getOnError0d7_KjU = (i & 8388608) != 0 ? ColorLightTokens.INSTANCE.m4637getOnError0d7_KjU() : j24;
        long jM4632getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorLightTokens.INSTANCE.m4632getErrorContainer0d7_KjU() : j25;
        long jM4638getOnErrorContainer0d7_KjU = (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? ColorLightTokens.INSTANCE.m4638getOnErrorContainer0d7_KjU() : j26;
        long jM4653getOutline0d7_KjU = (i & 67108864) != 0 ? ColorLightTokens.INSTANCE.m4653getOutline0d7_KjU() : j27;
        long jM4654getOutlineVariant0d7_KjU = (i & 134217728) != 0 ? ColorLightTokens.INSTANCE.m4654getOutlineVariant0d7_KjU() : j28;
        long jM4659getScrim0d7_KjU = (i & 268435456) != 0 ? ColorLightTokens.INSTANCE.m4659getScrim0d7_KjU() : j29;
        long jM4665getSurfaceBright0d7_KjU = (i & 536870912) != 0 ? ColorLightTokens.INSTANCE.m4665getSurfaceBright0d7_KjU() : j30;
        long jM4666getSurfaceContainer0d7_KjU = (i & 1073741824) != 0 ? ColorLightTokens.INSTANCE.m4666getSurfaceContainer0d7_KjU() : j31;
        long jM4667getSurfaceContainerHigh0d7_KjU = (i & Integer.MIN_VALUE) != 0 ? ColorLightTokens.INSTANCE.m4667getSurfaceContainerHigh0d7_KjU() : j32;
        long jM4668getSurfaceContainerHighest0d7_KjU = (i2 & 1) != 0 ? ColorLightTokens.INSTANCE.m4668getSurfaceContainerHighest0d7_KjU() : j33;
        long jM4669getSurfaceContainerLow0d7_KjU = (i2 & 2) != 0 ? ColorLightTokens.INSTANCE.m4669getSurfaceContainerLow0d7_KjU() : j34;
        long jM4670getSurfaceContainerLowest0d7_KjU = (i2 & 4) != 0 ? ColorLightTokens.INSTANCE.m4670getSurfaceContainerLowest0d7_KjU() : j35;
        if ((i2 & 8) != 0) {
            j36 = ColorLightTokens.INSTANCE.m4671getSurfaceDim0d7_KjU();
        }
        return m3282lightColorSchemeCXl9yA(j37, jM4639getOnPrimary0d7_KjU, jM4656getPrimaryContainer0d7_KjU, jM4640getOnPrimaryContainer0d7_KjU, jM4634getInversePrimary0d7_KjU, jM4660getSecondary0d7_KjU, jM4643getOnSecondary0d7_KjU, jM4661getSecondaryContainer0d7_KjU, jM4644getOnSecondaryContainer0d7_KjU, jM4674getTertiary0d7_KjU, jM4649getOnTertiary0d7_KjU, jM4675getTertiaryContainer0d7_KjU, jM4650getOnTertiaryContainer0d7_KjU, jM4630getBackground0d7_KjU, jM4636getOnBackground0d7_KjU, jM4664getSurface0d7_KjU, jM4647getOnSurface0d7_KjU, jM4673getSurfaceVariant0d7_KjU, jM4648getOnSurfaceVariant0d7_KjU, j38, jM4635getInverseSurface0d7_KjU, jM4633getInverseOnSurface0d7_KjU, jM4631getError0d7_KjU, jM4637getOnError0d7_KjU, jM4632getErrorContainer0d7_KjU, jM4638getOnErrorContainer0d7_KjU, jM4653getOutline0d7_KjU, jM4654getOutlineVariant0d7_KjU, jM4659getScrim0d7_KjU, jM4665getSurfaceBright0d7_KjU, jM4666getSurfaceContainer0d7_KjU, jM4667getSurfaceContainerHigh0d7_KjU, jM4668getSurfaceContainerHighest0d7_KjU, jM4669getSurfaceContainerLow0d7_KjU, jM4670getSurfaceContainerLowest0d7_KjU, j36);
    }

    @ul2
    /* JADX INFO: renamed from: lightColorScheme-G1PFc-w, reason: not valid java name */
    public static final /* synthetic */ ColorScheme m3284lightColorSchemeG1PFcw(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29) {
        return m3287lightColorScheme_VG5OTI$default(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -536870912, 65535, null);
    }

    /* JADX INFO: renamed from: lightColorScheme-G1PFc-w$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m3285lightColorSchemeG1PFcw$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, int i, Object obj) {
        long jM4655getPrimary0d7_KjU = (i & 1) != 0 ? ColorLightTokens.INSTANCE.m4655getPrimary0d7_KjU() : j;
        long jM4639getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorLightTokens.INSTANCE.m4639getOnPrimary0d7_KjU() : j2;
        long jM4656getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorLightTokens.INSTANCE.m4656getPrimaryContainer0d7_KjU() : j3;
        long jM4640getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorLightTokens.INSTANCE.m4640getOnPrimaryContainer0d7_KjU() : j4;
        long jM4634getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorLightTokens.INSTANCE.m4634getInversePrimary0d7_KjU() : j5;
        long jM4660getSecondary0d7_KjU = (i & 32) != 0 ? ColorLightTokens.INSTANCE.m4660getSecondary0d7_KjU() : j6;
        long jM4643getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorLightTokens.INSTANCE.m4643getOnSecondary0d7_KjU() : j7;
        long jM4661getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorLightTokens.INSTANCE.m4661getSecondaryContainer0d7_KjU() : j8;
        long j30 = jM4655getPrimary0d7_KjU;
        long jM4644getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorLightTokens.INSTANCE.m4644getOnSecondaryContainer0d7_KjU() : j9;
        long jM4674getTertiary0d7_KjU = (i & 512) != 0 ? ColorLightTokens.INSTANCE.m4674getTertiary0d7_KjU() : j10;
        long jM4649getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorLightTokens.INSTANCE.m4649getOnTertiary0d7_KjU() : j11;
        long jM4675getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorLightTokens.INSTANCE.m4675getTertiaryContainer0d7_KjU() : j12;
        long jM4650getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorLightTokens.INSTANCE.m4650getOnTertiaryContainer0d7_KjU() : j13;
        long jM4630getBackground0d7_KjU = (i & 8192) != 0 ? ColorLightTokens.INSTANCE.m4630getBackground0d7_KjU() : j14;
        long jM4636getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorLightTokens.INSTANCE.m4636getOnBackground0d7_KjU() : j15;
        long jM4664getSurface0d7_KjU = (i & 32768) != 0 ? ColorLightTokens.INSTANCE.m4664getSurface0d7_KjU() : j16;
        long jM4647getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorLightTokens.INSTANCE.m4647getOnSurface0d7_KjU() : j17;
        long jM4673getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorLightTokens.INSTANCE.m4673getSurfaceVariant0d7_KjU() : j18;
        long jM4648getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorLightTokens.INSTANCE.m4648getOnSurfaceVariant0d7_KjU() : j19;
        long j31 = (i & 524288) != 0 ? j30 : j20;
        long jM4635getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorLightTokens.INSTANCE.m4635getInverseSurface0d7_KjU() : j21;
        long jM4633getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorLightTokens.INSTANCE.m4633getInverseOnSurface0d7_KjU() : j22;
        long jM4631getError0d7_KjU = (i & 4194304) != 0 ? ColorLightTokens.INSTANCE.m4631getError0d7_KjU() : j23;
        long jM4637getOnError0d7_KjU = (i & 8388608) != 0 ? ColorLightTokens.INSTANCE.m4637getOnError0d7_KjU() : j24;
        long jM4632getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorLightTokens.INSTANCE.m4632getErrorContainer0d7_KjU() : j25;
        long jM4638getOnErrorContainer0d7_KjU = (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? ColorLightTokens.INSTANCE.m4638getOnErrorContainer0d7_KjU() : j26;
        long jM4653getOutline0d7_KjU = (i & 67108864) != 0 ? ColorLightTokens.INSTANCE.m4653getOutline0d7_KjU() : j27;
        long jM4654getOutlineVariant0d7_KjU = (i & 134217728) != 0 ? ColorLightTokens.INSTANCE.m4654getOutlineVariant0d7_KjU() : j28;
        if ((i & 268435456) != 0) {
            j29 = ColorLightTokens.INSTANCE.m4659getScrim0d7_KjU();
        }
        return m3284lightColorSchemeG1PFcw(j30, jM4639getOnPrimary0d7_KjU, jM4656getPrimaryContainer0d7_KjU, jM4640getOnPrimaryContainer0d7_KjU, jM4634getInversePrimary0d7_KjU, jM4660getSecondary0d7_KjU, jM4643getOnSecondary0d7_KjU, jM4661getSecondaryContainer0d7_KjU, jM4644getOnSecondaryContainer0d7_KjU, jM4674getTertiary0d7_KjU, jM4649getOnTertiary0d7_KjU, jM4675getTertiaryContainer0d7_KjU, jM4650getOnTertiaryContainer0d7_KjU, jM4630getBackground0d7_KjU, jM4636getOnBackground0d7_KjU, jM4664getSurface0d7_KjU, jM4647getOnSurface0d7_KjU, jM4673getSurfaceVariant0d7_KjU, jM4648getOnSurfaceVariant0d7_KjU, j31, jM4635getInverseSurface0d7_KjU, jM4633getInverseOnSurface0d7_KjU, jM4631getError0d7_KjU, jM4637getOnError0d7_KjU, jM4632getErrorContainer0d7_KjU, jM4638getOnErrorContainer0d7_KjU, jM4653getOutline0d7_KjU, jM4654getOutlineVariant0d7_KjU, j29);
    }

    /* JADX INFO: renamed from: lightColorScheme-_VG5OTI, reason: not valid java name */
    public static final ColorScheme m3286lightColorScheme_VG5OTI(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48) {
        return new ColorScheme(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j36, j31, j32, j33, j34, j35, j37, j38, j39, j40, j41, j42, j43, j44, j45, j46, j47, j48, null);
    }

    /* JADX INFO: renamed from: lightColorScheme-_VG5OTI$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m3287lightColorScheme_VG5OTI$default(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48, int i, int i2, Object obj) {
        long jM4655getPrimary0d7_KjU = (i & 1) != 0 ? ColorLightTokens.INSTANCE.m4655getPrimary0d7_KjU() : j;
        long jM4639getOnPrimary0d7_KjU = (i & 2) != 0 ? ColorLightTokens.INSTANCE.m4639getOnPrimary0d7_KjU() : j2;
        long jM4656getPrimaryContainer0d7_KjU = (i & 4) != 0 ? ColorLightTokens.INSTANCE.m4656getPrimaryContainer0d7_KjU() : j3;
        long jM4640getOnPrimaryContainer0d7_KjU = (i & 8) != 0 ? ColorLightTokens.INSTANCE.m4640getOnPrimaryContainer0d7_KjU() : j4;
        long jM4634getInversePrimary0d7_KjU = (i & 16) != 0 ? ColorLightTokens.INSTANCE.m4634getInversePrimary0d7_KjU() : j5;
        long jM4660getSecondary0d7_KjU = (i & 32) != 0 ? ColorLightTokens.INSTANCE.m4660getSecondary0d7_KjU() : j6;
        long jM4643getOnSecondary0d7_KjU = (i & 64) != 0 ? ColorLightTokens.INSTANCE.m4643getOnSecondary0d7_KjU() : j7;
        long j49 = jM4655getPrimary0d7_KjU;
        long jM4661getSecondaryContainer0d7_KjU = (i & 128) != 0 ? ColorLightTokens.INSTANCE.m4661getSecondaryContainer0d7_KjU() : j8;
        long jM4644getOnSecondaryContainer0d7_KjU = (i & 256) != 0 ? ColorLightTokens.INSTANCE.m4644getOnSecondaryContainer0d7_KjU() : j9;
        long jM4674getTertiary0d7_KjU = (i & 512) != 0 ? ColorLightTokens.INSTANCE.m4674getTertiary0d7_KjU() : j10;
        long jM4649getOnTertiary0d7_KjU = (i & 1024) != 0 ? ColorLightTokens.INSTANCE.m4649getOnTertiary0d7_KjU() : j11;
        long jM4675getTertiaryContainer0d7_KjU = (i & 2048) != 0 ? ColorLightTokens.INSTANCE.m4675getTertiaryContainer0d7_KjU() : j12;
        long jM4650getOnTertiaryContainer0d7_KjU = (i & 4096) != 0 ? ColorLightTokens.INSTANCE.m4650getOnTertiaryContainer0d7_KjU() : j13;
        long jM4630getBackground0d7_KjU = (i & 8192) != 0 ? ColorLightTokens.INSTANCE.m4630getBackground0d7_KjU() : j14;
        long jM4636getOnBackground0d7_KjU = (i & 16384) != 0 ? ColorLightTokens.INSTANCE.m4636getOnBackground0d7_KjU() : j15;
        long jM4664getSurface0d7_KjU = (i & 32768) != 0 ? ColorLightTokens.INSTANCE.m4664getSurface0d7_KjU() : j16;
        long jM4647getOnSurface0d7_KjU = (i & 65536) != 0 ? ColorLightTokens.INSTANCE.m4647getOnSurface0d7_KjU() : j17;
        long jM4673getSurfaceVariant0d7_KjU = (i & 131072) != 0 ? ColorLightTokens.INSTANCE.m4673getSurfaceVariant0d7_KjU() : j18;
        long jM4648getOnSurfaceVariant0d7_KjU = (i & 262144) != 0 ? ColorLightTokens.INSTANCE.m4648getOnSurfaceVariant0d7_KjU() : j19;
        long j50 = (i & 524288) != 0 ? j49 : j20;
        long jM4635getInverseSurface0d7_KjU = (i & 1048576) != 0 ? ColorLightTokens.INSTANCE.m4635getInverseSurface0d7_KjU() : j21;
        long jM4633getInverseOnSurface0d7_KjU = (i & 2097152) != 0 ? ColorLightTokens.INSTANCE.m4633getInverseOnSurface0d7_KjU() : j22;
        long jM4631getError0d7_KjU = (i & 4194304) != 0 ? ColorLightTokens.INSTANCE.m4631getError0d7_KjU() : j23;
        long jM4637getOnError0d7_KjU = (i & 8388608) != 0 ? ColorLightTokens.INSTANCE.m4637getOnError0d7_KjU() : j24;
        long jM4632getErrorContainer0d7_KjU = (i & 16777216) != 0 ? ColorLightTokens.INSTANCE.m4632getErrorContainer0d7_KjU() : j25;
        long jM4638getOnErrorContainer0d7_KjU = (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? ColorLightTokens.INSTANCE.m4638getOnErrorContainer0d7_KjU() : j26;
        long jM4653getOutline0d7_KjU = (i & 67108864) != 0 ? ColorLightTokens.INSTANCE.m4653getOutline0d7_KjU() : j27;
        long jM4654getOutlineVariant0d7_KjU = (i & 134217728) != 0 ? ColorLightTokens.INSTANCE.m4654getOutlineVariant0d7_KjU() : j28;
        long jM4659getScrim0d7_KjU = (i & 268435456) != 0 ? ColorLightTokens.INSTANCE.m4659getScrim0d7_KjU() : j29;
        long jM4665getSurfaceBright0d7_KjU = (i & 536870912) != 0 ? ColorLightTokens.INSTANCE.m4665getSurfaceBright0d7_KjU() : j30;
        long jM4666getSurfaceContainer0d7_KjU = (i & 1073741824) != 0 ? ColorLightTokens.INSTANCE.m4666getSurfaceContainer0d7_KjU() : j31;
        long jM4667getSurfaceContainerHigh0d7_KjU = (i & Integer.MIN_VALUE) != 0 ? ColorLightTokens.INSTANCE.m4667getSurfaceContainerHigh0d7_KjU() : j32;
        long jM4668getSurfaceContainerHighest0d7_KjU = (i2 & 1) != 0 ? ColorLightTokens.INSTANCE.m4668getSurfaceContainerHighest0d7_KjU() : j33;
        long jM4669getSurfaceContainerLow0d7_KjU = (i2 & 2) != 0 ? ColorLightTokens.INSTANCE.m4669getSurfaceContainerLow0d7_KjU() : j34;
        long jM4670getSurfaceContainerLowest0d7_KjU = (i2 & 4) != 0 ? ColorLightTokens.INSTANCE.m4670getSurfaceContainerLowest0d7_KjU() : j35;
        long jM4671getSurfaceDim0d7_KjU = (i2 & 8) != 0 ? ColorLightTokens.INSTANCE.m4671getSurfaceDim0d7_KjU() : j36;
        long jM4657getPrimaryFixed0d7_KjU = (i2 & 16) != 0 ? ColorLightTokens.INSTANCE.m4657getPrimaryFixed0d7_KjU() : j37;
        long jM4658getPrimaryFixedDim0d7_KjU = (i2 & 32) != 0 ? ColorLightTokens.INSTANCE.m4658getPrimaryFixedDim0d7_KjU() : j38;
        long jM4641getOnPrimaryFixed0d7_KjU = (i2 & 64) != 0 ? ColorLightTokens.INSTANCE.m4641getOnPrimaryFixed0d7_KjU() : j39;
        long jM4642getOnPrimaryFixedVariant0d7_KjU = (i2 & 128) != 0 ? ColorLightTokens.INSTANCE.m4642getOnPrimaryFixedVariant0d7_KjU() : j40;
        long jM4662getSecondaryFixed0d7_KjU = (i2 & 256) != 0 ? ColorLightTokens.INSTANCE.m4662getSecondaryFixed0d7_KjU() : j41;
        long jM4663getSecondaryFixedDim0d7_KjU = (i2 & 512) != 0 ? ColorLightTokens.INSTANCE.m4663getSecondaryFixedDim0d7_KjU() : j42;
        long jM4645getOnSecondaryFixed0d7_KjU = (i2 & 1024) != 0 ? ColorLightTokens.INSTANCE.m4645getOnSecondaryFixed0d7_KjU() : j43;
        long jM4646getOnSecondaryFixedVariant0d7_KjU = (i2 & 2048) != 0 ? ColorLightTokens.INSTANCE.m4646getOnSecondaryFixedVariant0d7_KjU() : j44;
        long jM4676getTertiaryFixed0d7_KjU = (i2 & 4096) != 0 ? ColorLightTokens.INSTANCE.m4676getTertiaryFixed0d7_KjU() : j45;
        long jM4677getTertiaryFixedDim0d7_KjU = (i2 & 8192) != 0 ? ColorLightTokens.INSTANCE.m4677getTertiaryFixedDim0d7_KjU() : j46;
        long jM4651getOnTertiaryFixed0d7_KjU = (i2 & 16384) != 0 ? ColorLightTokens.INSTANCE.m4651getOnTertiaryFixed0d7_KjU() : j47;
        if ((i2 & 32768) != 0) {
            j48 = ColorLightTokens.INSTANCE.m4652getOnTertiaryFixedVariant0d7_KjU();
        }
        return m3286lightColorScheme_VG5OTI(j49, jM4639getOnPrimary0d7_KjU, jM4656getPrimaryContainer0d7_KjU, jM4640getOnPrimaryContainer0d7_KjU, jM4634getInversePrimary0d7_KjU, jM4660getSecondary0d7_KjU, jM4643getOnSecondary0d7_KjU, jM4661getSecondaryContainer0d7_KjU, jM4644getOnSecondaryContainer0d7_KjU, jM4674getTertiary0d7_KjU, jM4649getOnTertiary0d7_KjU, jM4675getTertiaryContainer0d7_KjU, jM4650getOnTertiaryContainer0d7_KjU, jM4630getBackground0d7_KjU, jM4636getOnBackground0d7_KjU, jM4664getSurface0d7_KjU, jM4647getOnSurface0d7_KjU, jM4673getSurfaceVariant0d7_KjU, jM4648getOnSurfaceVariant0d7_KjU, j50, jM4635getInverseSurface0d7_KjU, jM4633getInverseOnSurface0d7_KjU, jM4631getError0d7_KjU, jM4637getOnError0d7_KjU, jM4632getErrorContainer0d7_KjU, jM4638getOnErrorContainer0d7_KjU, jM4653getOutline0d7_KjU, jM4654getOutlineVariant0d7_KjU, jM4659getScrim0d7_KjU, jM4665getSurfaceBright0d7_KjU, jM4666getSurfaceContainer0d7_KjU, jM4667getSurfaceContainerHigh0d7_KjU, jM4668getSurfaceContainerHighest0d7_KjU, jM4669getSurfaceContainerLow0d7_KjU, jM4670getSurfaceContainerLowest0d7_KjU, jM4671getSurfaceDim0d7_KjU, jM4657getPrimaryFixed0d7_KjU, jM4658getPrimaryFixedDim0d7_KjU, jM4641getOnPrimaryFixed0d7_KjU, jM4642getOnPrimaryFixedVariant0d7_KjU, jM4662getSecondaryFixed0d7_KjU, jM4663getSecondaryFixedDim0d7_KjU, jM4645getOnSecondaryFixed0d7_KjU, jM4646getOnSecondaryFixedVariant0d7_KjU, jM4676getTertiaryFixed0d7_KjU, jM4677getTertiaryFixedDim0d7_KjU, jM4651getOnTertiaryFixed0d7_KjU, j48);
    }

    /* JADX INFO: renamed from: surfaceColorAtElevation-3ABfNKs, reason: not valid java name */
    public static final long m3288surfaceColorAtElevation3ABfNKs(ColorScheme colorScheme, float f) {
        if (Dp.m9047equalsimpl0(f, Dp.m9042constructorimpl(0.0f))) {
            return colorScheme.m3259getSurface0d7_KjU();
        }
        return ColorKt.m6277compositeOverOWjLjI(Color.m6231copywmQWz5c$default(colorScheme.m3267getSurfaceTint0d7_KjU(), ((((float) Math.log(f + 1.0f)) * 4.5f) + 2.0f) / 100.0f, 0.0f, 0.0f, 0.0f, 14, null), colorScheme.m3259getSurface0d7_KjU());
    }
}
