package androidx.compose.material3;

import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.ln;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class ColorScheme {
    public static final int $stable = 0;
    private final long background;
    private ChipColors defaultAssistChipColorsCached;
    private ButtonColors defaultButtonColorsCached;
    private CardColors defaultCardColorsCached;
    private CheckboxColors defaultCheckboxColorsCached;
    private DatePickerColors defaultDatePickerColorsCached;
    private ChipColors defaultElevatedAssistChipColorsCached;
    private ButtonColors defaultElevatedButtonColorsCached;
    private CardColors defaultElevatedCardColorsCached;
    private SelectableChipColors defaultElevatedFilterChipColorsCached;
    private ChipColors defaultElevatedSuggestionChipColorsCached;
    private IconButtonColors defaultFilledIconButtonColorsCached;
    private IconToggleButtonColors defaultFilledIconToggleButtonColorsCached;
    private ButtonColors defaultFilledTonalButtonColorsCached;
    private IconButtonColors defaultFilledTonalIconButtonColorsCached;
    private IconToggleButtonColors defaultFilledTonalIconToggleButtonColorsCached;
    private SelectableChipColors defaultFilterChipColorsCached;
    private IconButtonColors defaultIconButtonColorsCached;
    private IconButtonColors defaultIconButtonVibrantColorsCached;
    private IconToggleButtonColors defaultIconToggleButtonColorsCached;
    private IconToggleButtonColors defaultIconToggleButtonVibrantColorsCached;
    private SelectableChipColors defaultInputChipColorsCached;
    private ListItemColors defaultListItemColorsCached;
    private MenuItemColors defaultMenuItemColorsCached;
    private NavigationBarItemColors defaultNavigationBarItemColorsCached;
    private NavigationRailItemColors defaultNavigationRailItemColorsCached;
    private ButtonColors defaultOutlinedButtonColorsCached;
    private CardColors defaultOutlinedCardColorsCached;
    private IconButtonColors defaultOutlinedIconButtonColorsCached;
    private IconButtonColors defaultOutlinedIconButtonVibrantColorsCached;
    private IconToggleButtonColors defaultOutlinedIconToggleButtonColorsCached;
    private IconToggleButtonColors defaultOutlinedIconToggleButtonVibrantColorsCached;
    private TextFieldColors defaultOutlinedTextFieldColorsCached;
    private RadioButtonColors defaultRadioButtonColorsCached;
    private RichTooltipColors defaultRichTooltipColorsCached;
    private SegmentedButtonColors defaultSegmentedButtonColorsCached;
    private NavigationItemColors defaultShortNavigationBarItemColorsCached;
    private SliderColors defaultSliderColorsCached;
    private ChipColors defaultSuggestionChipColorsCached;
    private SwitchColors defaultSwitchColorsCached;
    private ButtonColors defaultTextButtonColorsCached;
    private TextFieldColors defaultTextFieldColorsCached;
    private TimePickerColors defaultTimePickerColorsCached;
    private TopAppBarColors defaultTopAppBarColorsCached;
    private DragHandleColors defaultVerticalDragHandleColorsCached;
    private NavigationItemColors defaultWideNavigationRailItemColorsCached;
    private WideNavigationRailColors defaultWideWideNavigationRailColorsCached;
    private final long error;
    private final long errorContainer;
    private final long inverseOnSurface;
    private final long inversePrimary;
    private final long inverseSurface;
    private final long onBackground;
    private final long onError;
    private final long onErrorContainer;
    private final long onPrimary;
    private final long onPrimaryContainer;
    private final long onPrimaryFixed;
    private final long onPrimaryFixedVariant;
    private final long onSecondary;
    private final long onSecondaryContainer;
    private final long onSecondaryFixed;
    private final long onSecondaryFixedVariant;
    private final long onSurface;
    private final long onSurfaceVariant;
    private final long onTertiary;
    private final long onTertiaryContainer;
    private final long onTertiaryFixed;
    private final long onTertiaryFixedVariant;
    private final long outline;
    private final long outlineVariant;
    private final long primary;
    private final long primaryContainer;
    private final long primaryFixed;
    private final long primaryFixedDim;
    private final long scrim;
    private final long secondary;
    private final long secondaryContainer;
    private final long secondaryFixed;
    private final long secondaryFixedDim;
    private final long surface;
    private final long surfaceBright;
    private final long surfaceContainer;
    private final long surfaceContainerHigh;
    private final long surfaceContainerHighest;
    private final long surfaceContainerLow;
    private final long surfaceContainerLowest;
    private final long surfaceDim;
    private final long surfaceTint;
    private final long surfaceVariant;
    private final long tertiary;
    private final long tertiaryContainer;
    private final long tertiaryFixed;
    private final long tertiaryFixedDim;

    private ColorScheme(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48) {
        this.primary = j;
        this.onPrimary = j2;
        this.primaryContainer = j3;
        this.onPrimaryContainer = j4;
        this.inversePrimary = j5;
        this.secondary = j6;
        this.onSecondary = j7;
        this.secondaryContainer = j8;
        this.onSecondaryContainer = j9;
        this.tertiary = j10;
        this.onTertiary = j11;
        this.tertiaryContainer = j12;
        this.onTertiaryContainer = j13;
        this.background = j14;
        this.onBackground = j15;
        this.surface = j16;
        this.onSurface = j17;
        this.surfaceVariant = j18;
        this.onSurfaceVariant = j19;
        this.surfaceTint = j20;
        this.inverseSurface = j21;
        this.inverseOnSurface = j22;
        this.error = j23;
        this.onError = j24;
        this.errorContainer = j25;
        this.onErrorContainer = j26;
        this.outline = j27;
        this.outlineVariant = j28;
        this.scrim = j29;
        this.surfaceBright = j30;
        this.surfaceDim = j31;
        this.surfaceContainer = j32;
        this.surfaceContainerHigh = j33;
        this.surfaceContainerHighest = j34;
        this.surfaceContainerLow = j35;
        this.surfaceContainerLowest = j36;
        this.primaryFixed = j37;
        this.primaryFixedDim = j38;
        this.onPrimaryFixed = j39;
        this.onPrimaryFixedVariant = j40;
        this.secondaryFixed = j41;
        this.secondaryFixedDim = j42;
        this.onSecondaryFixed = j43;
        this.onSecondaryFixedVariant = j44;
        this.tertiaryFixed = j45;
        this.tertiaryFixedDim = j46;
        this.onTertiaryFixed = j47;
        this.onTertiaryFixedVariant = j48;
    }

    /* JADX INFO: renamed from: copy-C-Xl9yA$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m3219copyCXl9yA$default(ColorScheme colorScheme, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, int i, int i2, Object obj) {
        long j37;
        long j38;
        long j39 = (i & 1) != 0 ? colorScheme.primary : j;
        long j40 = (i & 2) != 0 ? colorScheme.onPrimary : j2;
        long j41 = (i & 4) != 0 ? colorScheme.primaryContainer : j3;
        long j42 = (i & 8) != 0 ? colorScheme.onPrimaryContainer : j4;
        long j43 = (i & 16) != 0 ? colorScheme.inversePrimary : j5;
        long j44 = (i & 32) != 0 ? colorScheme.secondary : j6;
        long j45 = (i & 64) != 0 ? colorScheme.onSecondary : j7;
        long j46 = j39;
        long j47 = (i & 128) != 0 ? colorScheme.secondaryContainer : j8;
        long j48 = (i & 256) != 0 ? colorScheme.onSecondaryContainer : j9;
        long j49 = (i & 512) != 0 ? colorScheme.tertiary : j10;
        long j50 = (i & 1024) != 0 ? colorScheme.onTertiary : j11;
        long j51 = (i & 2048) != 0 ? colorScheme.tertiaryContainer : j12;
        long j52 = (i & 4096) != 0 ? colorScheme.onTertiaryContainer : j13;
        long j53 = (i & 8192) != 0 ? colorScheme.background : j14;
        long j54 = (i & 16384) != 0 ? colorScheme.onBackground : j15;
        long j55 = (i & 32768) != 0 ? colorScheme.surface : j16;
        long j56 = (i & 65536) != 0 ? colorScheme.onSurface : j17;
        long j57 = (i & 131072) != 0 ? colorScheme.surfaceVariant : j18;
        long j58 = (i & 262144) != 0 ? colorScheme.onSurfaceVariant : j19;
        long j59 = (i & 524288) != 0 ? colorScheme.surfaceTint : j20;
        long j60 = (i & 1048576) != 0 ? colorScheme.inverseSurface : j21;
        long j61 = (i & 2097152) != 0 ? colorScheme.inverseOnSurface : j22;
        long j62 = (i & 4194304) != 0 ? colorScheme.error : j23;
        long j63 = (i & 8388608) != 0 ? colorScheme.onError : j24;
        long j64 = (i & 16777216) != 0 ? colorScheme.errorContainer : j25;
        long j65 = (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? colorScheme.onErrorContainer : j26;
        long j66 = (i & 67108864) != 0 ? colorScheme.outline : j27;
        long j67 = (i & 134217728) != 0 ? colorScheme.outlineVariant : j28;
        long j68 = (i & 268435456) != 0 ? colorScheme.scrim : j29;
        long j69 = (i & 536870912) != 0 ? colorScheme.surfaceBright : j30;
        long j70 = (i & 1073741824) != 0 ? colorScheme.surfaceDim : j31;
        long j71 = (i & Integer.MIN_VALUE) != 0 ? colorScheme.surfaceContainer : j32;
        long j72 = (i2 & 1) != 0 ? colorScheme.surfaceContainerHigh : j33;
        long j73 = (i2 & 2) != 0 ? colorScheme.surfaceContainerHighest : j34;
        long j74 = (i2 & 4) != 0 ? colorScheme.surfaceContainerLow : j35;
        if ((i2 & 8) != 0) {
            j38 = j74;
            j37 = colorScheme.surfaceContainerLowest;
        } else {
            j37 = j36;
            j38 = j74;
        }
        return colorScheme.m3222copyCXl9yA(j46, j40, j41, j42, j43, j44, j45, j47, j48, j49, j50, j51, j52, j53, j54, j55, j56, j57, j58, j59, j60, j61, j62, j63, j64, j65, j66, j67, j68, j69, j70, j71, j72, j73, j38, j37);
    }

    /* JADX INFO: renamed from: copy-G1PFc-w$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m3220copyG1PFcw$default(ColorScheme colorScheme, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, int i, Object obj) {
        long j30;
        long j31;
        long j32 = (i & 1) != 0 ? colorScheme.primary : j;
        long j33 = (i & 2) != 0 ? colorScheme.onPrimary : j2;
        long j34 = (i & 4) != 0 ? colorScheme.primaryContainer : j3;
        long j35 = (i & 8) != 0 ? colorScheme.onPrimaryContainer : j4;
        long j36 = (i & 16) != 0 ? colorScheme.inversePrimary : j5;
        long j37 = (i & 32) != 0 ? colorScheme.secondary : j6;
        long j38 = (i & 64) != 0 ? colorScheme.onSecondary : j7;
        long j39 = j32;
        long j40 = (i & 128) != 0 ? colorScheme.secondaryContainer : j8;
        long j41 = (i & 256) != 0 ? colorScheme.onSecondaryContainer : j9;
        long j42 = (i & 512) != 0 ? colorScheme.tertiary : j10;
        long j43 = (i & 1024) != 0 ? colorScheme.onTertiary : j11;
        long j44 = (i & 2048) != 0 ? colorScheme.tertiaryContainer : j12;
        long j45 = (i & 4096) != 0 ? colorScheme.onTertiaryContainer : j13;
        long j46 = (i & 8192) != 0 ? colorScheme.background : j14;
        long j47 = (i & 16384) != 0 ? colorScheme.onBackground : j15;
        long j48 = (i & 32768) != 0 ? colorScheme.surface : j16;
        long j49 = (i & 65536) != 0 ? colorScheme.onSurface : j17;
        long j50 = (i & 131072) != 0 ? colorScheme.surfaceVariant : j18;
        long j51 = (i & 262144) != 0 ? colorScheme.onSurfaceVariant : j19;
        long j52 = (i & 524288) != 0 ? colorScheme.surfaceTint : j20;
        long j53 = (i & 1048576) != 0 ? colorScheme.inverseSurface : j21;
        long j54 = (i & 2097152) != 0 ? colorScheme.inverseOnSurface : j22;
        long j55 = (i & 4194304) != 0 ? colorScheme.error : j23;
        long j56 = (i & 8388608) != 0 ? colorScheme.onError : j24;
        long j57 = (i & 16777216) != 0 ? colorScheme.errorContainer : j25;
        long j58 = (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? colorScheme.onErrorContainer : j26;
        long j59 = (i & 67108864) != 0 ? colorScheme.outline : j27;
        long j60 = (i & 134217728) != 0 ? colorScheme.outlineVariant : j28;
        if ((i & 268435456) != 0) {
            j31 = j60;
            j30 = colorScheme.scrim;
        } else {
            j30 = j29;
            j31 = j60;
        }
        return colorScheme.m3223copyG1PFcw(j39, j33, j34, j35, j36, j37, j38, j40, j41, j42, j43, j44, j45, j46, j47, j48, j49, j50, j51, j52, j53, j54, j55, j56, j57, j58, j59, j31, j30);
    }

    /* JADX INFO: renamed from: copy-_VG5OTI$default, reason: not valid java name */
    public static /* synthetic */ ColorScheme m3221copy_VG5OTI$default(ColorScheme colorScheme, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48, int i, int i2, Object obj) {
        long j49;
        long j50;
        long j51 = (i & 1) != 0 ? colorScheme.primary : j;
        long j52 = (i & 2) != 0 ? colorScheme.onPrimary : j2;
        long j53 = (i & 4) != 0 ? colorScheme.primaryContainer : j3;
        long j54 = (i & 8) != 0 ? colorScheme.onPrimaryContainer : j4;
        long j55 = (i & 16) != 0 ? colorScheme.inversePrimary : j5;
        long j56 = (i & 32) != 0 ? colorScheme.secondary : j6;
        long j57 = (i & 64) != 0 ? colorScheme.onSecondary : j7;
        long j58 = (i & 128) != 0 ? colorScheme.secondaryContainer : j8;
        long j59 = (i & 256) != 0 ? colorScheme.onSecondaryContainer : j9;
        long j60 = (i & 512) != 0 ? colorScheme.tertiary : j10;
        long j61 = (i & 1024) != 0 ? colorScheme.onTertiary : j11;
        long j62 = (i & 2048) != 0 ? colorScheme.tertiaryContainer : j12;
        long j63 = (i & 4096) != 0 ? colorScheme.onTertiaryContainer : j13;
        long j64 = (i & 8192) != 0 ? colorScheme.background : j14;
        long j65 = (i & 16384) != 0 ? colorScheme.onBackground : j15;
        long j66 = (i & 32768) != 0 ? colorScheme.surface : j16;
        long j67 = (i & 65536) != 0 ? colorScheme.onSurface : j17;
        long j68 = (i & 131072) != 0 ? colorScheme.surfaceVariant : j18;
        long j69 = (i & 262144) != 0 ? colorScheme.onSurfaceVariant : j19;
        long j70 = (i & 524288) != 0 ? colorScheme.surfaceTint : j20;
        long j71 = (i & 1048576) != 0 ? colorScheme.inverseSurface : j21;
        long j72 = (i & 2097152) != 0 ? colorScheme.inverseOnSurface : j22;
        long j73 = (i & 4194304) != 0 ? colorScheme.error : j23;
        long j74 = (i & 8388608) != 0 ? colorScheme.onError : j24;
        long j75 = (i & 16777216) != 0 ? colorScheme.errorContainer : j25;
        long j76 = (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? colorScheme.onErrorContainer : j26;
        long j77 = (i & 67108864) != 0 ? colorScheme.outline : j27;
        long j78 = (i & 134217728) != 0 ? colorScheme.outlineVariant : j28;
        long j79 = (i & 268435456) != 0 ? colorScheme.scrim : j29;
        long j80 = (i & 536870912) != 0 ? colorScheme.surfaceBright : j30;
        long j81 = (i & 1073741824) != 0 ? colorScheme.surfaceDim : j31;
        long j82 = (i & Integer.MIN_VALUE) != 0 ? colorScheme.surfaceContainer : j32;
        long j83 = (i2 & 1) != 0 ? colorScheme.surfaceContainerHigh : j33;
        long j84 = (i2 & 2) != 0 ? colorScheme.surfaceContainerHighest : j34;
        long j85 = (i2 & 4) != 0 ? colorScheme.surfaceContainerLow : j35;
        long j86 = (i2 & 8) != 0 ? colorScheme.surfaceContainerLowest : j36;
        long j87 = (i2 & 16) != 0 ? colorScheme.primaryFixed : j37;
        long j88 = (i2 & 32) != 0 ? colorScheme.primaryFixedDim : j38;
        long j89 = (i2 & 64) != 0 ? colorScheme.onPrimaryFixed : j39;
        long j90 = (i2 & 128) != 0 ? colorScheme.onPrimaryFixedVariant : j40;
        long j91 = (i2 & 256) != 0 ? colorScheme.secondaryFixed : j41;
        long j92 = (i2 & 512) != 0 ? colorScheme.secondaryFixedDim : j42;
        long j93 = (i2 & 1024) != 0 ? colorScheme.onSecondaryFixed : j43;
        long j94 = (i2 & 2048) != 0 ? colorScheme.onSecondaryFixedVariant : j44;
        long j95 = (i2 & 4096) != 0 ? colorScheme.tertiaryFixed : j45;
        long j96 = (i2 & 8192) != 0 ? colorScheme.tertiaryFixedDim : j46;
        long j97 = (i2 & 16384) != 0 ? colorScheme.onTertiaryFixed : j47;
        if ((i2 & 32768) != 0) {
            j50 = j97;
            j49 = colorScheme.onTertiaryFixedVariant;
        } else {
            j49 = j48;
            j50 = j97;
        }
        return colorScheme.m3224copy_VG5OTI(j51, j52, j53, j54, j55, j56, j57, j58, j59, j60, j61, j62, j63, j64, j65, j66, j67, j68, j69, j70, j71, j72, j73, j74, j75, j76, j77, j78, j79, j80, j81, j82, j83, j84, j85, j86, j87, j88, j89, j90, j91, j92, j93, j94, j95, j96, j50, j49);
    }

    public static /* synthetic */ void getDefaultDatePickerColorsCached$material3$annotations() {
    }

    public static /* synthetic */ void getDefaultRichTooltipColorsCached$material3$annotations() {
    }

    public static /* synthetic */ void getDefaultTimePickerColorsCached$material3$annotations() {
    }

    public static /* synthetic */ void getDefaultTopAppBarColorsCached$material3$annotations() {
    }

    @ul2
    /* JADX INFO: renamed from: copy-C-Xl9yA, reason: not valid java name */
    public final /* synthetic */ ColorScheme m3222copyCXl9yA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36) {
        return m3221copy_VG5OTI$default(this, j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 65520, null);
    }

    @ul2
    /* JADX INFO: renamed from: copy-G1PFc-w, reason: not valid java name */
    public final /* synthetic */ ColorScheme m3223copyG1PFcw(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29) {
        return m3221copy_VG5OTI$default(this, j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -536870912, 65535, null);
    }

    /* JADX INFO: renamed from: copy-_VG5OTI, reason: not valid java name */
    public final ColorScheme m3224copy_VG5OTI(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48) {
        return new ColorScheme(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, j37, j38, j39, j40, j41, j42, j43, j44, j45, j46, j47, j48, null);
    }

    /* JADX INFO: renamed from: getBackground-0d7_KjU, reason: not valid java name */
    public final long m3225getBackground0d7_KjU() {
        return this.background;
    }

    public final ChipColors getDefaultAssistChipColorsCached$material3() {
        return this.defaultAssistChipColorsCached;
    }

    public final ButtonColors getDefaultButtonColorsCached$material3() {
        return this.defaultButtonColorsCached;
    }

    public final CardColors getDefaultCardColorsCached$material3() {
        return this.defaultCardColorsCached;
    }

    public final CheckboxColors getDefaultCheckboxColorsCached$material3() {
        return this.defaultCheckboxColorsCached;
    }

    public final DatePickerColors getDefaultDatePickerColorsCached$material3() {
        return this.defaultDatePickerColorsCached;
    }

    public final ChipColors getDefaultElevatedAssistChipColorsCached$material3() {
        return this.defaultElevatedAssistChipColorsCached;
    }

    public final ButtonColors getDefaultElevatedButtonColorsCached$material3() {
        return this.defaultElevatedButtonColorsCached;
    }

    public final CardColors getDefaultElevatedCardColorsCached$material3() {
        return this.defaultElevatedCardColorsCached;
    }

    public final SelectableChipColors getDefaultElevatedFilterChipColorsCached$material3() {
        return this.defaultElevatedFilterChipColorsCached;
    }

    public final ChipColors getDefaultElevatedSuggestionChipColorsCached$material3() {
        return this.defaultElevatedSuggestionChipColorsCached;
    }

    public final IconButtonColors getDefaultFilledIconButtonColorsCached$material3() {
        return this.defaultFilledIconButtonColorsCached;
    }

    public final IconToggleButtonColors getDefaultFilledIconToggleButtonColorsCached$material3() {
        return this.defaultFilledIconToggleButtonColorsCached;
    }

    public final ButtonColors getDefaultFilledTonalButtonColorsCached$material3() {
        return this.defaultFilledTonalButtonColorsCached;
    }

    public final IconButtonColors getDefaultFilledTonalIconButtonColorsCached$material3() {
        return this.defaultFilledTonalIconButtonColorsCached;
    }

    public final IconToggleButtonColors getDefaultFilledTonalIconToggleButtonColorsCached$material3() {
        return this.defaultFilledTonalIconToggleButtonColorsCached;
    }

    public final SelectableChipColors getDefaultFilterChipColorsCached$material3() {
        return this.defaultFilterChipColorsCached;
    }

    public final IconButtonColors getDefaultIconButtonColorsCached$material3() {
        return this.defaultIconButtonColorsCached;
    }

    public final IconButtonColors getDefaultIconButtonVibrantColorsCached$material3() {
        return this.defaultIconButtonVibrantColorsCached;
    }

    public final IconToggleButtonColors getDefaultIconToggleButtonColorsCached$material3() {
        return this.defaultIconToggleButtonColorsCached;
    }

    public final IconToggleButtonColors getDefaultIconToggleButtonVibrantColorsCached$material3() {
        return this.defaultIconToggleButtonVibrantColorsCached;
    }

    public final SelectableChipColors getDefaultInputChipColorsCached$material3() {
        return this.defaultInputChipColorsCached;
    }

    public final ListItemColors getDefaultListItemColorsCached$material3() {
        return this.defaultListItemColorsCached;
    }

    public final MenuItemColors getDefaultMenuItemColorsCached$material3() {
        return this.defaultMenuItemColorsCached;
    }

    public final NavigationBarItemColors getDefaultNavigationBarItemColorsCached$material3() {
        return this.defaultNavigationBarItemColorsCached;
    }

    public final NavigationRailItemColors getDefaultNavigationRailItemColorsCached$material3() {
        return this.defaultNavigationRailItemColorsCached;
    }

    public final ButtonColors getDefaultOutlinedButtonColorsCached$material3() {
        return this.defaultOutlinedButtonColorsCached;
    }

    public final CardColors getDefaultOutlinedCardColorsCached$material3() {
        return this.defaultOutlinedCardColorsCached;
    }

    public final IconButtonColors getDefaultOutlinedIconButtonColorsCached$material3() {
        return this.defaultOutlinedIconButtonColorsCached;
    }

    public final IconButtonColors getDefaultOutlinedIconButtonVibrantColorsCached$material3() {
        return this.defaultOutlinedIconButtonVibrantColorsCached;
    }

    public final IconToggleButtonColors getDefaultOutlinedIconToggleButtonColorsCached$material3() {
        return this.defaultOutlinedIconToggleButtonColorsCached;
    }

    public final IconToggleButtonColors getDefaultOutlinedIconToggleButtonVibrantColorsCached$material3() {
        return this.defaultOutlinedIconToggleButtonVibrantColorsCached;
    }

    public final TextFieldColors getDefaultOutlinedTextFieldColorsCached$material3() {
        return this.defaultOutlinedTextFieldColorsCached;
    }

    public final RadioButtonColors getDefaultRadioButtonColorsCached$material3() {
        return this.defaultRadioButtonColorsCached;
    }

    public final RichTooltipColors getDefaultRichTooltipColorsCached$material3() {
        return this.defaultRichTooltipColorsCached;
    }

    public final SegmentedButtonColors getDefaultSegmentedButtonColorsCached$material3() {
        return this.defaultSegmentedButtonColorsCached;
    }

    public final NavigationItemColors getDefaultShortNavigationBarItemColorsCached$material3() {
        return this.defaultShortNavigationBarItemColorsCached;
    }

    public final SliderColors getDefaultSliderColorsCached$material3() {
        return this.defaultSliderColorsCached;
    }

    public final ChipColors getDefaultSuggestionChipColorsCached$material3() {
        return this.defaultSuggestionChipColorsCached;
    }

    public final SwitchColors getDefaultSwitchColorsCached$material3() {
        return this.defaultSwitchColorsCached;
    }

    public final ButtonColors getDefaultTextButtonColorsCached$material3() {
        return this.defaultTextButtonColorsCached;
    }

    public final TextFieldColors getDefaultTextFieldColorsCached$material3() {
        return this.defaultTextFieldColorsCached;
    }

    public final TimePickerColors getDefaultTimePickerColorsCached$material3() {
        return this.defaultTimePickerColorsCached;
    }

    public final TopAppBarColors getDefaultTopAppBarColorsCached$material3() {
        return this.defaultTopAppBarColorsCached;
    }

    public final DragHandleColors getDefaultVerticalDragHandleColorsCached$material3() {
        return this.defaultVerticalDragHandleColorsCached;
    }

    public final NavigationItemColors getDefaultWideNavigationRailItemColorsCached$material3() {
        return this.defaultWideNavigationRailItemColorsCached;
    }

    public final WideNavigationRailColors getDefaultWideWideNavigationRailColorsCached$material3() {
        return this.defaultWideWideNavigationRailColorsCached;
    }

    /* JADX INFO: renamed from: getError-0d7_KjU, reason: not valid java name */
    public final long m3226getError0d7_KjU() {
        return this.error;
    }

    /* JADX INFO: renamed from: getErrorContainer-0d7_KjU, reason: not valid java name */
    public final long m3227getErrorContainer0d7_KjU() {
        return this.errorContainer;
    }

    /* JADX INFO: renamed from: getInverseOnSurface-0d7_KjU, reason: not valid java name */
    public final long m3228getInverseOnSurface0d7_KjU() {
        return this.inverseOnSurface;
    }

    /* JADX INFO: renamed from: getInversePrimary-0d7_KjU, reason: not valid java name */
    public final long m3229getInversePrimary0d7_KjU() {
        return this.inversePrimary;
    }

    /* JADX INFO: renamed from: getInverseSurface-0d7_KjU, reason: not valid java name */
    public final long m3230getInverseSurface0d7_KjU() {
        return this.inverseSurface;
    }

    /* JADX INFO: renamed from: getOnBackground-0d7_KjU, reason: not valid java name */
    public final long m3231getOnBackground0d7_KjU() {
        return this.onBackground;
    }

    /* JADX INFO: renamed from: getOnError-0d7_KjU, reason: not valid java name */
    public final long m3232getOnError0d7_KjU() {
        return this.onError;
    }

    /* JADX INFO: renamed from: getOnErrorContainer-0d7_KjU, reason: not valid java name */
    public final long m3233getOnErrorContainer0d7_KjU() {
        return this.onErrorContainer;
    }

    /* JADX INFO: renamed from: getOnPrimary-0d7_KjU, reason: not valid java name */
    public final long m3234getOnPrimary0d7_KjU() {
        return this.onPrimary;
    }

    /* JADX INFO: renamed from: getOnPrimaryContainer-0d7_KjU, reason: not valid java name */
    public final long m3235getOnPrimaryContainer0d7_KjU() {
        return this.onPrimaryContainer;
    }

    /* JADX INFO: renamed from: getOnPrimaryFixed-0d7_KjU, reason: not valid java name */
    public final long m3236getOnPrimaryFixed0d7_KjU() {
        return this.onPrimaryFixed;
    }

    /* JADX INFO: renamed from: getOnPrimaryFixedVariant-0d7_KjU, reason: not valid java name */
    public final long m3237getOnPrimaryFixedVariant0d7_KjU() {
        return this.onPrimaryFixedVariant;
    }

    /* JADX INFO: renamed from: getOnSecondary-0d7_KjU, reason: not valid java name */
    public final long m3238getOnSecondary0d7_KjU() {
        return this.onSecondary;
    }

    /* JADX INFO: renamed from: getOnSecondaryContainer-0d7_KjU, reason: not valid java name */
    public final long m3239getOnSecondaryContainer0d7_KjU() {
        return this.onSecondaryContainer;
    }

    /* JADX INFO: renamed from: getOnSecondaryFixed-0d7_KjU, reason: not valid java name */
    public final long m3240getOnSecondaryFixed0d7_KjU() {
        return this.onSecondaryFixed;
    }

    /* JADX INFO: renamed from: getOnSecondaryFixedVariant-0d7_KjU, reason: not valid java name */
    public final long m3241getOnSecondaryFixedVariant0d7_KjU() {
        return this.onSecondaryFixedVariant;
    }

    /* JADX INFO: renamed from: getOnSurface-0d7_KjU, reason: not valid java name */
    public final long m3242getOnSurface0d7_KjU() {
        return this.onSurface;
    }

    /* JADX INFO: renamed from: getOnSurfaceVariant-0d7_KjU, reason: not valid java name */
    public final long m3243getOnSurfaceVariant0d7_KjU() {
        return this.onSurfaceVariant;
    }

    /* JADX INFO: renamed from: getOnTertiary-0d7_KjU, reason: not valid java name */
    public final long m3244getOnTertiary0d7_KjU() {
        return this.onTertiary;
    }

    /* JADX INFO: renamed from: getOnTertiaryContainer-0d7_KjU, reason: not valid java name */
    public final long m3245getOnTertiaryContainer0d7_KjU() {
        return this.onTertiaryContainer;
    }

    /* JADX INFO: renamed from: getOnTertiaryFixed-0d7_KjU, reason: not valid java name */
    public final long m3246getOnTertiaryFixed0d7_KjU() {
        return this.onTertiaryFixed;
    }

    /* JADX INFO: renamed from: getOnTertiaryFixedVariant-0d7_KjU, reason: not valid java name */
    public final long m3247getOnTertiaryFixedVariant0d7_KjU() {
        return this.onTertiaryFixedVariant;
    }

    /* JADX INFO: renamed from: getOutline-0d7_KjU, reason: not valid java name */
    public final long m3248getOutline0d7_KjU() {
        return this.outline;
    }

    /* JADX INFO: renamed from: getOutlineVariant-0d7_KjU, reason: not valid java name */
    public final long m3249getOutlineVariant0d7_KjU() {
        return this.outlineVariant;
    }

    /* JADX INFO: renamed from: getPrimary-0d7_KjU, reason: not valid java name */
    public final long m3250getPrimary0d7_KjU() {
        return this.primary;
    }

    /* JADX INFO: renamed from: getPrimaryContainer-0d7_KjU, reason: not valid java name */
    public final long m3251getPrimaryContainer0d7_KjU() {
        return this.primaryContainer;
    }

    /* JADX INFO: renamed from: getPrimaryFixed-0d7_KjU, reason: not valid java name */
    public final long m3252getPrimaryFixed0d7_KjU() {
        return this.primaryFixed;
    }

    /* JADX INFO: renamed from: getPrimaryFixedDim-0d7_KjU, reason: not valid java name */
    public final long m3253getPrimaryFixedDim0d7_KjU() {
        return this.primaryFixedDim;
    }

    /* JADX INFO: renamed from: getScrim-0d7_KjU, reason: not valid java name */
    public final long m3254getScrim0d7_KjU() {
        return this.scrim;
    }

    /* JADX INFO: renamed from: getSecondary-0d7_KjU, reason: not valid java name */
    public final long m3255getSecondary0d7_KjU() {
        return this.secondary;
    }

    /* JADX INFO: renamed from: getSecondaryContainer-0d7_KjU, reason: not valid java name */
    public final long m3256getSecondaryContainer0d7_KjU() {
        return this.secondaryContainer;
    }

    /* JADX INFO: renamed from: getSecondaryFixed-0d7_KjU, reason: not valid java name */
    public final long m3257getSecondaryFixed0d7_KjU() {
        return this.secondaryFixed;
    }

    /* JADX INFO: renamed from: getSecondaryFixedDim-0d7_KjU, reason: not valid java name */
    public final long m3258getSecondaryFixedDim0d7_KjU() {
        return this.secondaryFixedDim;
    }

    /* JADX INFO: renamed from: getSurface-0d7_KjU, reason: not valid java name */
    public final long m3259getSurface0d7_KjU() {
        return this.surface;
    }

    /* JADX INFO: renamed from: getSurfaceBright-0d7_KjU, reason: not valid java name */
    public final long m3260getSurfaceBright0d7_KjU() {
        return this.surfaceBright;
    }

    /* JADX INFO: renamed from: getSurfaceContainer-0d7_KjU, reason: not valid java name */
    public final long m3261getSurfaceContainer0d7_KjU() {
        return this.surfaceContainer;
    }

    /* JADX INFO: renamed from: getSurfaceContainerHigh-0d7_KjU, reason: not valid java name */
    public final long m3262getSurfaceContainerHigh0d7_KjU() {
        return this.surfaceContainerHigh;
    }

    /* JADX INFO: renamed from: getSurfaceContainerHighest-0d7_KjU, reason: not valid java name */
    public final long m3263getSurfaceContainerHighest0d7_KjU() {
        return this.surfaceContainerHighest;
    }

    /* JADX INFO: renamed from: getSurfaceContainerLow-0d7_KjU, reason: not valid java name */
    public final long m3264getSurfaceContainerLow0d7_KjU() {
        return this.surfaceContainerLow;
    }

    /* JADX INFO: renamed from: getSurfaceContainerLowest-0d7_KjU, reason: not valid java name */
    public final long m3265getSurfaceContainerLowest0d7_KjU() {
        return this.surfaceContainerLowest;
    }

    /* JADX INFO: renamed from: getSurfaceDim-0d7_KjU, reason: not valid java name */
    public final long m3266getSurfaceDim0d7_KjU() {
        return this.surfaceDim;
    }

    /* JADX INFO: renamed from: getSurfaceTint-0d7_KjU, reason: not valid java name */
    public final long m3267getSurfaceTint0d7_KjU() {
        return this.surfaceTint;
    }

    /* JADX INFO: renamed from: getSurfaceVariant-0d7_KjU, reason: not valid java name */
    public final long m3268getSurfaceVariant0d7_KjU() {
        return this.surfaceVariant;
    }

    /* JADX INFO: renamed from: getTertiary-0d7_KjU, reason: not valid java name */
    public final long m3269getTertiary0d7_KjU() {
        return this.tertiary;
    }

    /* JADX INFO: renamed from: getTertiaryContainer-0d7_KjU, reason: not valid java name */
    public final long m3270getTertiaryContainer0d7_KjU() {
        return this.tertiaryContainer;
    }

    /* JADX INFO: renamed from: getTertiaryFixed-0d7_KjU, reason: not valid java name */
    public final long m3271getTertiaryFixed0d7_KjU() {
        return this.tertiaryFixed;
    }

    /* JADX INFO: renamed from: getTertiaryFixedDim-0d7_KjU, reason: not valid java name */
    public final long m3272getTertiaryFixedDim0d7_KjU() {
        return this.tertiaryFixedDim;
    }

    public final void setDefaultAssistChipColorsCached$material3(ChipColors chipColors) {
        this.defaultAssistChipColorsCached = chipColors;
    }

    public final void setDefaultButtonColorsCached$material3(ButtonColors buttonColors) {
        this.defaultButtonColorsCached = buttonColors;
    }

    public final void setDefaultCardColorsCached$material3(CardColors cardColors) {
        this.defaultCardColorsCached = cardColors;
    }

    public final void setDefaultCheckboxColorsCached$material3(CheckboxColors checkboxColors) {
        this.defaultCheckboxColorsCached = checkboxColors;
    }

    public final void setDefaultDatePickerColorsCached$material3(DatePickerColors datePickerColors) {
        this.defaultDatePickerColorsCached = datePickerColors;
    }

    public final void setDefaultElevatedAssistChipColorsCached$material3(ChipColors chipColors) {
        this.defaultElevatedAssistChipColorsCached = chipColors;
    }

    public final void setDefaultElevatedButtonColorsCached$material3(ButtonColors buttonColors) {
        this.defaultElevatedButtonColorsCached = buttonColors;
    }

    public final void setDefaultElevatedCardColorsCached$material3(CardColors cardColors) {
        this.defaultElevatedCardColorsCached = cardColors;
    }

    public final void setDefaultElevatedFilterChipColorsCached$material3(SelectableChipColors selectableChipColors) {
        this.defaultElevatedFilterChipColorsCached = selectableChipColors;
    }

    public final void setDefaultElevatedSuggestionChipColorsCached$material3(ChipColors chipColors) {
        this.defaultElevatedSuggestionChipColorsCached = chipColors;
    }

    public final void setDefaultFilledIconButtonColorsCached$material3(IconButtonColors iconButtonColors) {
        this.defaultFilledIconButtonColorsCached = iconButtonColors;
    }

    public final void setDefaultFilledIconToggleButtonColorsCached$material3(IconToggleButtonColors iconToggleButtonColors) {
        this.defaultFilledIconToggleButtonColorsCached = iconToggleButtonColors;
    }

    public final void setDefaultFilledTonalButtonColorsCached$material3(ButtonColors buttonColors) {
        this.defaultFilledTonalButtonColorsCached = buttonColors;
    }

    public final void setDefaultFilledTonalIconButtonColorsCached$material3(IconButtonColors iconButtonColors) {
        this.defaultFilledTonalIconButtonColorsCached = iconButtonColors;
    }

    public final void setDefaultFilledTonalIconToggleButtonColorsCached$material3(IconToggleButtonColors iconToggleButtonColors) {
        this.defaultFilledTonalIconToggleButtonColorsCached = iconToggleButtonColors;
    }

    public final void setDefaultFilterChipColorsCached$material3(SelectableChipColors selectableChipColors) {
        this.defaultFilterChipColorsCached = selectableChipColors;
    }

    public final void setDefaultIconButtonColorsCached$material3(IconButtonColors iconButtonColors) {
        this.defaultIconButtonColorsCached = iconButtonColors;
    }

    public final void setDefaultIconButtonVibrantColorsCached$material3(IconButtonColors iconButtonColors) {
        this.defaultIconButtonVibrantColorsCached = iconButtonColors;
    }

    public final void setDefaultIconToggleButtonColorsCached$material3(IconToggleButtonColors iconToggleButtonColors) {
        this.defaultIconToggleButtonColorsCached = iconToggleButtonColors;
    }

    public final void setDefaultIconToggleButtonVibrantColorsCached$material3(IconToggleButtonColors iconToggleButtonColors) {
        this.defaultIconToggleButtonVibrantColorsCached = iconToggleButtonColors;
    }

    public final void setDefaultInputChipColorsCached$material3(SelectableChipColors selectableChipColors) {
        this.defaultInputChipColorsCached = selectableChipColors;
    }

    public final void setDefaultListItemColorsCached$material3(ListItemColors listItemColors) {
        this.defaultListItemColorsCached = listItemColors;
    }

    public final void setDefaultMenuItemColorsCached$material3(MenuItemColors menuItemColors) {
        this.defaultMenuItemColorsCached = menuItemColors;
    }

    public final void setDefaultNavigationBarItemColorsCached$material3(NavigationBarItemColors navigationBarItemColors) {
        this.defaultNavigationBarItemColorsCached = navigationBarItemColors;
    }

    public final void setDefaultNavigationRailItemColorsCached$material3(NavigationRailItemColors navigationRailItemColors) {
        this.defaultNavigationRailItemColorsCached = navigationRailItemColors;
    }

    public final void setDefaultOutlinedButtonColorsCached$material3(ButtonColors buttonColors) {
        this.defaultOutlinedButtonColorsCached = buttonColors;
    }

    public final void setDefaultOutlinedCardColorsCached$material3(CardColors cardColors) {
        this.defaultOutlinedCardColorsCached = cardColors;
    }

    public final void setDefaultOutlinedIconButtonColorsCached$material3(IconButtonColors iconButtonColors) {
        this.defaultOutlinedIconButtonColorsCached = iconButtonColors;
    }

    public final void setDefaultOutlinedIconButtonVibrantColorsCached$material3(IconButtonColors iconButtonColors) {
        this.defaultOutlinedIconButtonVibrantColorsCached = iconButtonColors;
    }

    public final void setDefaultOutlinedIconToggleButtonColorsCached$material3(IconToggleButtonColors iconToggleButtonColors) {
        this.defaultOutlinedIconToggleButtonColorsCached = iconToggleButtonColors;
    }

    public final void setDefaultOutlinedIconToggleButtonVibrantColorsCached$material3(IconToggleButtonColors iconToggleButtonColors) {
        this.defaultOutlinedIconToggleButtonVibrantColorsCached = iconToggleButtonColors;
    }

    public final void setDefaultOutlinedTextFieldColorsCached$material3(TextFieldColors textFieldColors) {
        this.defaultOutlinedTextFieldColorsCached = textFieldColors;
    }

    public final void setDefaultRadioButtonColorsCached$material3(RadioButtonColors radioButtonColors) {
        this.defaultRadioButtonColorsCached = radioButtonColors;
    }

    public final void setDefaultRichTooltipColorsCached$material3(RichTooltipColors richTooltipColors) {
        this.defaultRichTooltipColorsCached = richTooltipColors;
    }

    public final void setDefaultSegmentedButtonColorsCached$material3(SegmentedButtonColors segmentedButtonColors) {
        this.defaultSegmentedButtonColorsCached = segmentedButtonColors;
    }

    public final void setDefaultShortNavigationBarItemColorsCached$material3(NavigationItemColors navigationItemColors) {
        this.defaultShortNavigationBarItemColorsCached = navigationItemColors;
    }

    public final void setDefaultSliderColorsCached$material3(SliderColors sliderColors) {
        this.defaultSliderColorsCached = sliderColors;
    }

    public final void setDefaultSuggestionChipColorsCached$material3(ChipColors chipColors) {
        this.defaultSuggestionChipColorsCached = chipColors;
    }

    public final void setDefaultSwitchColorsCached$material3(SwitchColors switchColors) {
        this.defaultSwitchColorsCached = switchColors;
    }

    public final void setDefaultTextButtonColorsCached$material3(ButtonColors buttonColors) {
        this.defaultTextButtonColorsCached = buttonColors;
    }

    public final void setDefaultTextFieldColorsCached$material3(TextFieldColors textFieldColors) {
        this.defaultTextFieldColorsCached = textFieldColors;
    }

    public final void setDefaultTimePickerColorsCached$material3(TimePickerColors timePickerColors) {
        this.defaultTimePickerColorsCached = timePickerColors;
    }

    public final void setDefaultTopAppBarColorsCached$material3(TopAppBarColors topAppBarColors) {
        this.defaultTopAppBarColorsCached = topAppBarColors;
    }

    public final void setDefaultVerticalDragHandleColorsCached$material3(DragHandleColors dragHandleColors) {
        this.defaultVerticalDragHandleColorsCached = dragHandleColors;
    }

    public final void setDefaultWideNavigationRailItemColorsCached$material3(NavigationItemColors navigationItemColors) {
        this.defaultWideNavigationRailItemColorsCached = navigationItemColors;
    }

    public final void setDefaultWideWideNavigationRailColorsCached$material3(WideNavigationRailColors wideNavigationRailColors) {
        this.defaultWideWideNavigationRailColorsCached = wideNavigationRailColors;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColorScheme(primary=");
        ln.g(this.primary, "onPrimary=", sb);
        ln.g(this.onPrimary, "primaryContainer=", sb);
        ln.g(this.primaryContainer, "onPrimaryContainer=", sb);
        ln.g(this.onPrimaryContainer, "inversePrimary=", sb);
        ln.g(this.inversePrimary, "secondary=", sb);
        ln.g(this.secondary, "onSecondary=", sb);
        ln.g(this.onSecondary, "secondaryContainer=", sb);
        ln.g(this.secondaryContainer, "onSecondaryContainer=", sb);
        ln.g(this.onSecondaryContainer, "tertiary=", sb);
        ln.g(this.tertiary, "onTertiary=", sb);
        ln.g(this.onTertiary, "tertiaryContainer=", sb);
        ln.g(this.tertiaryContainer, "onTertiaryContainer=", sb);
        ln.g(this.onTertiaryContainer, "background=", sb);
        ln.g(this.background, "onBackground=", sb);
        ln.g(this.onBackground, "surface=", sb);
        ln.g(this.surface, "onSurface=", sb);
        ln.g(this.onSurface, "surfaceVariant=", sb);
        ln.g(this.surfaceVariant, "onSurfaceVariant=", sb);
        ln.g(this.onSurfaceVariant, "surfaceTint=", sb);
        ln.g(this.surfaceTint, "inverseSurface=", sb);
        ln.g(this.inverseSurface, "inverseOnSurface=", sb);
        ln.g(this.inverseOnSurface, "error=", sb);
        ln.g(this.error, "onError=", sb);
        ln.g(this.onError, "errorContainer=", sb);
        ln.g(this.errorContainer, "onErrorContainer=", sb);
        ln.g(this.onErrorContainer, "outline=", sb);
        ln.g(this.outline, "outlineVariant=", sb);
        ln.g(this.outlineVariant, "scrim=", sb);
        ln.g(this.scrim, "surfaceBright=", sb);
        ln.g(this.surfaceBright, "surfaceDim=", sb);
        ln.g(this.surfaceDim, "surfaceContainer=", sb);
        ln.g(this.surfaceContainer, "surfaceContainerHigh=", sb);
        ln.g(this.surfaceContainerHigh, "surfaceContainerHighest=", sb);
        ln.g(this.surfaceContainerHighest, "surfaceContainerLow=", sb);
        ln.g(this.surfaceContainerLow, "surfaceContainerLowest=", sb);
        ln.g(this.surfaceContainerLowest, "primaryFixed=", sb);
        ln.g(this.primaryFixed, "primaryFixedDim=", sb);
        ln.g(this.primaryFixedDim, "onPrimaryFixed=", sb);
        ln.g(this.onPrimaryContainer, "onPrimaryFixedVariant=", sb);
        ln.g(this.onPrimaryFixedVariant, "secondaryFixed=", sb);
        ln.g(this.secondaryFixed, "secondaryFixedDim=", sb);
        ln.g(this.secondaryFixedDim, "onSecondaryFixed=", sb);
        ln.g(this.onSecondaryFixed, "onSecondaryFixedVariant=", sb);
        ln.g(this.onSecondaryFixedVariant, "tertiaryFixed=", sb);
        ln.g(this.tertiaryFixed, "tertiaryFixedDim=", sb);
        ln.g(this.tertiaryFixedDim, "onTertiaryFixed=", sb);
        ln.g(this.onTertiaryFixed, "onTertiaryFixedVariant=", sb);
        sb.append((Object) Color.m6240toStringimpl(this.onTertiaryFixedVariant));
        sb.append(')');
        return sb.toString();
    }

    @ul2
    public /* synthetic */ ColorScheme(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36);
    }

    @ul2
    public /* synthetic */ ColorScheme(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29);
    }

    public /* synthetic */ ColorScheme(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, j37, j38, j39, j40, j41, j42, j43, j44, j45, j46, j47, j48);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private ColorScheme(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36) {
        Color.Companion companion = Color.Companion;
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private ColorScheme(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29) {
        Color.Companion companion = Color.Companion;
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), companion.m6268getUnspecified0d7_KjU(), null);
    }
}
