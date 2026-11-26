package androidx.compose.material3;

import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.LazyListSnapLayoutInfoProviderKt;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.DatePickerDefaults;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.material3.tokens.DividerTokens;
import androidx.compose.material3.tokens.ElevationTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.a02;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.y74;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class DatePickerDefaults {
    public static final int $stable = 0;
    public static final String YearAbbrMonthDaySkeleton = "yMMMd";
    public static final String YearMonthSkeleton = "yMMMM";
    public static final String YearMonthWeekdayDaySkeleton = "yMMMMEEEEd";
    public static final DatePickerDefaults INSTANCE = new DatePickerDefaults();
    private static final y74 YearRange = new y74(1900, 2100, 1);
    private static final float TonalElevation = ElevationTokens.INSTANCE.m4732getLevel0D9Ej5fM();
    private static final SelectableDates AllDates = new SelectableDates() { // from class: androidx.compose.material3.DatePickerDefaults$AllDates$1
    };

    private DatePickerDefaults() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DatePickerHeadline_ISIPfiY$lambda$3$lambda$2(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.m8279setLiveRegionhR3wRGc(semanticsPropertyReceiver, LiveRegionMode.Companion.m8253getPolite0phEisY());
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DatePickerHeadline_ISIPfiY$lambda$4(DatePickerDefaults datePickerDefaults, Long l, int i, DatePickerFormatter datePickerFormatter, Modifier modifier, long j, int i2, int i3, Composer composer, int i4) {
        datePickerDefaults.m3355DatePickerHeadlineISIPfiY(l, i, datePickerFormatter, modifier, j, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DatePickerTitle_FNtVw6o$lambda$1(DatePickerDefaults datePickerDefaults, int i, Modifier modifier, long j, int i2, int i3, Composer composer, int i4) {
        datePickerDefaults.m3356DatePickerTitleFNtVw6o(i, modifier, j, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    public static /* synthetic */ DatePickerFormatter dateFormatter$default(DatePickerDefaults datePickerDefaults, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = YearMonthSkeleton;
        }
        if ((i & 2) != 0) {
            str2 = YearAbbrMonthDaySkeleton;
        }
        if ((i & 4) != 0) {
            str3 = YearMonthWeekdayDaySkeleton;
        }
        return datePickerDefaults.dateFormatter(str, str2, str3);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0159  */
    /* JADX WARN: Code duplicated, block: B:101:0x016f  */
    /* JADX WARN: Code duplicated, block: B:103:0x017d  */
    /* JADX WARN: Code duplicated, block: B:105:0x0188  */
    /* JADX WARN: Code duplicated, block: B:107:0x019a  */
    /* JADX WARN: Code duplicated, block: B:108:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:110:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:111:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:113:0x01de  */
    /* JADX WARN: Code duplicated, block: B:116:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:117:0x0209  */
    /* JADX WARN: Code duplicated, block: B:119:0x0213  */
    /* JADX WARN: Code duplicated, block: B:120:0x0229  */
    /* JADX WARN: Code duplicated, block: B:127:0x0254  */
    /* JADX WARN: Code duplicated, block: B:130:0x029a  */
    /* JADX WARN: Code duplicated, block: B:132:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:135:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:137:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x0080  */
    /* JADX WARN: Code duplicated, block: B:51:0x0084  */
    /* JADX WARN: Code duplicated, block: B:53:0x008c  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0095  */
    /* JADX WARN: Code duplicated, block: B:60:0x009d  */
    /* JADX WARN: Code duplicated, block: B:61:0x009f  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:92:0x0105  */
    /* JADX WARN: Code duplicated, block: B:95:0x0127  */
    /* JADX WARN: Code duplicated, block: B:97:0x0139  */
    /* JADX WARN: Code duplicated, block: B:98:0x014f  */
    /* JADX INFO: renamed from: DatePickerHeadline-ISIPfiY, reason: not valid java name */
    public final void m3355DatePickerHeadlineISIPfiY(Long l, final int i, DatePickerFormatter datePickerFormatter, Modifier modifier, long j, Composer composer, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        long jM3343getHeadlineContentColor0d7_KjU;
        int i5;
        boolean z;
        Composer composer2;
        final Modifier modifier3;
        final long j2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        int i6;
        long j3;
        Modifier modifier5;
        String date$default;
        String date;
        String strM4461getString2EP1pXo;
        DisplayMode.Companion companion;
        String str;
        boolean zChanged;
        Object objRememberedValue;
        int i7;
        DisplayMode.Companion companion2;
        DisplayMode.Companion companion3;
        final Long l2 = l;
        final DatePickerFormatter datePickerFormatter2 = datePickerFormatter;
        Composer composerStartRestartGroup = composer.startRestartGroup(1913724796);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(l2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i3 & 2) != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= composerStartRestartGroup.changed(i) ? 32 : 16;
        }
        if ((i3 & 4) != 0) {
            i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= (i2 & 512) == 0 ? composerStartRestartGroup.changed(datePickerFormatter2) : composerStartRestartGroup.changedInstance(datePickerFormatter2) ? 256 : 128;
        }
        int i8 = i3 & 8;
        if (i8 == 0) {
            if ((i2 & 3072) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 2048 : 1024;
            }
            if ((i2 & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    jM3343getHeadlineContentColor0d7_KjU = j;
                    int i9 = composerStartRestartGroup.changed(jM3343getHeadlineContentColor0d7_KjU) ? 16384 : 8192;
                    i4 |= i9;
                } else {
                    jM3343getHeadlineContentColor0d7_KjU = j;
                }
                i4 |= i9;
            } else {
                jM3343getHeadlineContentColor0d7_KjU = j;
            }
            if ((i3 & 32) != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i5 = 131072;
                } else {
                    i5 = 65536;
                }
                i4 |= i5;
            }
            if ((74899 & i4) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 16) != 0) {
                        jM3343getHeadlineContentColor0d7_KjU = colors(composerStartRestartGroup, (i4 >> 15) & 14).m3343getHeadlineContentColor0d7_KjU();
                        i4 &= -57345;
                    }
                    i6 = i4;
                    j3 = jM3343getHeadlineContentColor0d7_KjU;
                    modifier5 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                    }
                    i6 = i4;
                    j3 = jM3343getHeadlineContentColor0d7_KjU;
                    modifier5 = modifier2;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1913724796, i6, -1, "androidx.compose.material3.DatePickerDefaults.DatePickerHeadline (DatePicker.kt:684)");
                }
                Locale localeDefaultLocale = CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0);
                date$default = DatePickerFormatter.formatDate$default(datePickerFormatter, l2, localeDefaultLocale, false, 4, null);
                datePickerFormatter2 = datePickerFormatter;
                l2 = l2;
                date = datePickerFormatter2.formatDate(l2, localeDefaultLocale, true);
                strM4461getString2EP1pXo = "";
                if (date == null) {
                    composerStartRestartGroup.startReplaceGroup(380185931);
                    companion3 = DisplayMode.Companion;
                    if (DisplayMode.m3404equalsimpl0(i, companion3.m3409getPickerjFl4v0())) {
                        composerStartRestartGroup.startReplaceGroup(843549871);
                        Strings.Companion companion4 = Strings.Companion;
                        date = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_no_selection_description), composerStartRestartGroup, 0);
                        composerStartRestartGroup.endReplaceGroup();
                    } else if (DisplayMode.m3404equalsimpl0(i, companion3.m3408getInputjFl4v0())) {
                        composerStartRestartGroup.startReplaceGroup(843552842);
                        Strings.Companion companion5 = Strings.Companion;
                        date = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_no_input_description), composerStartRestartGroup, 0);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(380407362);
                        composerStartRestartGroup.endReplaceGroup();
                        date = "";
                    }
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(843542258);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (date$default == null) {
                    composerStartRestartGroup.startReplaceGroup(380507587);
                    companion2 = DisplayMode.Companion;
                    if (DisplayMode.m3404equalsimpl0(i, companion2.m3409getPickerjFl4v0())) {
                        composerStartRestartGroup.startReplaceGroup(843560257);
                        Strings.Companion companion6 = Strings.Companion;
                        date$default = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_headline), composerStartRestartGroup, 0);
                        composerStartRestartGroup.endReplaceGroup();
                    } else if (DisplayMode.m3404equalsimpl0(i, companion2.m3408getInputjFl4v0())) {
                        composerStartRestartGroup.startReplaceGroup(843562784);
                        Strings.Companion companion7 = Strings.Companion;
                        date$default = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_headline), composerStartRestartGroup, 0);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(380705954);
                        composerStartRestartGroup.endReplaceGroup();
                        date$default = "";
                    }
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(843557408);
                    composerStartRestartGroup.endReplaceGroup();
                }
                companion = DisplayMode.Companion;
                if (DisplayMode.m3404equalsimpl0(i, companion.m3409getPickerjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(843570444);
                    Strings.Companion companion8 = Strings.Companion;
                    strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_headline_description), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else if (DisplayMode.m3404equalsimpl0(i, companion.m3408getInputjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(843573323);
                    Strings.Companion companion9 = Strings.Companion;
                    strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_headline_description), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(381043234);
                    composerStartRestartGroup.endReplaceGroup();
                }
                str = String.format(strM4461getString2EP1pXo, Arrays.copyOf(new Object[]{date}, 1));
                zChanged = composerStartRestartGroup.changed(str);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (!zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                    i7 = 1;
                    objRememberedValue = new a02(str, i7);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    i7 = 1;
                }
                composer2 = composerStartRestartGroup;
                Modifier modifier6 = modifier5;
                TextKt.m4085TextNvy7gAk(date$default, SemanticsModifierKt.semantics$default(modifier5, false, (nl3) objRememberedValue, i7, null), j3, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 1, 0, null, null, composer2, (i6 >> 6) & 896, 24576, 245752);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier6;
                j2 = j3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = jM3343getHeadlineContentColor0d7_KjU;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t92
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerDefaults.DatePickerHeadline_ISIPfiY$lambda$4(this.b, l2, i, datePickerFormatter2, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        modifier2 = modifier;
        if ((i2 & 24576) == 0) {
            if ((i3 & 16) == 0) {
                jM3343getHeadlineContentColor0d7_KjU = j;
                if (composerStartRestartGroup.changed(jM3343getHeadlineContentColor0d7_KjU)) {
                }
                i4 |= i9;
            } else {
                jM3343getHeadlineContentColor0d7_KjU = j;
            }
            i4 |= i9;
        } else {
            jM3343getHeadlineContentColor0d7_KjU = j;
        }
        if ((i3 & 32) != 0) {
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i5 = 131072;
            } else {
                i5 = 65536;
            }
            i4 |= i5;
        }
        if ((74899 & i4) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 16) != 0) {
                    jM3343getHeadlineContentColor0d7_KjU = colors(composerStartRestartGroup, (i4 >> 15) & 14).m3343getHeadlineContentColor0d7_KjU();
                    i4 &= -57345;
                }
                i6 = i4;
                j3 = jM3343getHeadlineContentColor0d7_KjU;
                modifier5 = modifier4;
            } else {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 16) != 0) {
                    jM3343getHeadlineContentColor0d7_KjU = colors(composerStartRestartGroup, (i4 >> 15) & 14).m3343getHeadlineContentColor0d7_KjU();
                    i4 &= -57345;
                }
                i6 = i4;
                j3 = jM3343getHeadlineContentColor0d7_KjU;
                modifier5 = modifier4;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1913724796, i6, -1, "androidx.compose.material3.DatePickerDefaults.DatePickerHeadline (DatePicker.kt:684)");
            }
            Locale localeDefaultLocale2 = CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0);
            date$default = DatePickerFormatter.formatDate$default(datePickerFormatter, l2, localeDefaultLocale2, false, 4, null);
            datePickerFormatter2 = datePickerFormatter;
            l2 = l2;
            date = datePickerFormatter2.formatDate(l2, localeDefaultLocale2, true);
            strM4461getString2EP1pXo = "";
            if (date == null) {
                composerStartRestartGroup.startReplaceGroup(380185931);
                companion3 = DisplayMode.Companion;
                if (DisplayMode.m3404equalsimpl0(i, companion3.m3409getPickerjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(843549871);
                    Strings.Companion companion10 = Strings.Companion;
                    date = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_no_selection_description), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else if (DisplayMode.m3404equalsimpl0(i, companion3.m3408getInputjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(843552842);
                    Strings.Companion companion11 = Strings.Companion;
                    date = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_no_input_description), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(380407362);
                    composerStartRestartGroup.endReplaceGroup();
                    date = "";
                }
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(843542258);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (date$default == null) {
                composerStartRestartGroup.startReplaceGroup(380507587);
                companion2 = DisplayMode.Companion;
                if (DisplayMode.m3404equalsimpl0(i, companion2.m3409getPickerjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(843560257);
                    Strings.Companion companion12 = Strings.Companion;
                    date$default = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_headline), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else if (DisplayMode.m3404equalsimpl0(i, companion2.m3408getInputjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(843562784);
                    Strings.Companion companion13 = Strings.Companion;
                    date$default = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_headline), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(380705954);
                    composerStartRestartGroup.endReplaceGroup();
                    date$default = "";
                }
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(843557408);
                composerStartRestartGroup.endReplaceGroup();
            }
            companion = DisplayMode.Companion;
            if (DisplayMode.m3404equalsimpl0(i, companion.m3409getPickerjFl4v0())) {
                composerStartRestartGroup.startReplaceGroup(843570444);
                Strings.Companion companion14 = Strings.Companion;
                strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_headline_description), composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
            } else if (DisplayMode.m3404equalsimpl0(i, companion.m3408getInputjFl4v0())) {
                composerStartRestartGroup.startReplaceGroup(843573323);
                Strings.Companion companion15 = Strings.Companion;
                strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_headline_description), composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(381043234);
                composerStartRestartGroup.endReplaceGroup();
            }
            str = String.format(strM4461getString2EP1pXo, Arrays.copyOf(new Object[]{date}, 1));
            zChanged = composerStartRestartGroup.changed(str);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                i7 = 1;
                objRememberedValue = new a02(str, i7);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                i7 = 1;
                objRememberedValue = new a02(str, i7);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composer2 = composerStartRestartGroup;
            Modifier modifier7 = modifier5;
            TextKt.m4085TextNvy7gAk(date$default, SemanticsModifierKt.semantics$default(modifier5, false, (nl3) objRememberedValue, i7, null), j3, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 1, 0, null, null, composer2, (i6 >> 6) & 896, 24576, 245752);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier7;
            j2 = j3;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            j2 = jM3343getHeadlineContentColor0d7_KjU;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: t92
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerDefaults.DatePickerHeadline_ISIPfiY$lambda$4(this.b, l2, i, datePickerFormatter2, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0045  */
    /* JADX WARN: Code duplicated, block: B:28:0x0049  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:31:0x0054  */
    /* JADX WARN: Code duplicated, block: B:34:0x005a  */
    /* JADX WARN: Code duplicated, block: B:37:0x0060  */
    /* JADX WARN: Code duplicated, block: B:38:0x0063  */
    /* JADX WARN: Code duplicated, block: B:40:0x0067  */
    /* JADX WARN: Code duplicated, block: B:42:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0070  */
    /* JADX WARN: Code duplicated, block: B:47:0x007a  */
    /* JADX WARN: Code duplicated, block: B:48:0x007c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:60:0x009f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:74:0x0116  */
    /* JADX WARN: Code duplicated, block: B:76:0x0120  */
    /* JADX WARN: Code duplicated, block: B:77:0x015f  */
    /* JADX WARN: Code duplicated, block: B:80:0x016e  */
    /* JADX WARN: Code duplicated, block: B:82:0x0173  */
    /* JADX WARN: Code duplicated, block: B:85:0x017e  */
    /* JADX WARN: Code duplicated, block: B:87:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: DatePickerTitle-FNtVw6o, reason: not valid java name */
    public final void m3356DatePickerTitleFNtVw6o(final int i, Modifier modifier, long j, Composer composer, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        long j2;
        int i5;
        boolean z;
        final long j3;
        Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        long j4;
        DisplayMode.Companion companion;
        Composer composerStartRestartGroup = composer.startRestartGroup(-390880814);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(i) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i6 = i3 & 2;
        if (i6 == 0) {
            if ((i2 & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i3 & 4) == 0) {
                    j2 = j;
                    int i7 = composerStartRestartGroup.changed(j2) ? 256 : 128;
                    i4 |= i7;
                } else {
                    j2 = j;
                }
                i4 |= i7;
            } else {
                j2 = j;
            }
            if ((i3 & 8) != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i4 |= i5;
            }
            if ((i4 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i6 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        long jM3350getTitleContentColor0d7_KjU = colors(composerStartRestartGroup, (i4 >> 9) & 14).m3350getTitleContentColor0d7_KjU();
                        i4 &= -897;
                        j4 = jM3350getTitleContentColor0d7_KjU;
                    } else {
                        j4 = j2;
                    }
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                    }
                    j4 = j2;
                    modifier3 = modifier2;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-390880814, i4, -1, "androidx.compose.material3.DatePickerDefaults.DatePickerTitle (DatePicker.kt:649)");
                }
                companion = DisplayMode.Companion;
                if (DisplayMode.m3404equalsimpl0(i, companion.m3409getPickerjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(-1974299164);
                    Strings.Companion companion2 = Strings.Companion;
                    TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_title), composerStartRestartGroup, 0), modifier3, j4, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composerStartRestartGroup, i4 & 1008, 0, 262136);
                    composerStartRestartGroup.endReplaceGroup();
                } else if (DisplayMode.m3404equalsimpl0(i, companion.m3408getInputjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(-1974291869);
                    Strings.Companion companion3 = Strings.Companion;
                    TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_title), composerStartRestartGroup, 0), modifier3, j4, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composerStartRestartGroup, i4 & 1008, 0, 262136);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1073325776);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = j4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = j2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier5 = modifier3;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u92
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerDefaults.DatePickerTitle_FNtVw6o$lambda$1(this.b, i, modifier5, j3, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                j2 = j;
                if (composerStartRestartGroup.changed(j2)) {
                }
                i4 |= i7;
            } else {
                j2 = j;
            }
            i4 |= i7;
        } else {
            j2 = j;
        }
        if ((i3 & 8) != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i4 |= i5;
        }
        if ((i4 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i6 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    long jM3350getTitleContentColor0d7_KjU2 = colors(composerStartRestartGroup, (i4 >> 9) & 14).m3350getTitleContentColor0d7_KjU();
                    i4 &= -897;
                    j4 = jM3350getTitleContentColor0d7_KjU2;
                } else {
                    j4 = j2;
                }
                modifier3 = modifier4;
            } else {
                if (i6 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    long jM3350getTitleContentColor0d7_KjU3 = colors(composerStartRestartGroup, (i4 >> 9) & 14).m3350getTitleContentColor0d7_KjU();
                    i4 &= -897;
                    j4 = jM3350getTitleContentColor0d7_KjU3;
                } else {
                    j4 = j2;
                }
                modifier3 = modifier4;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-390880814, i4, -1, "androidx.compose.material3.DatePickerDefaults.DatePickerTitle (DatePicker.kt:649)");
            }
            companion = DisplayMode.Companion;
            if (DisplayMode.m3404equalsimpl0(i, companion.m3409getPickerjFl4v0())) {
                composerStartRestartGroup.startReplaceGroup(-1974299164);
                Strings.Companion companion4 = Strings.Companion;
                TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_title), composerStartRestartGroup, 0), modifier3, j4, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composerStartRestartGroup, i4 & 1008, 0, 262136);
                composerStartRestartGroup.endReplaceGroup();
            } else if (DisplayMode.m3404equalsimpl0(i, companion.m3408getInputjFl4v0())) {
                composerStartRestartGroup.startReplaceGroup(-1974291869);
                Strings.Companion companion5 = Strings.Companion;
                TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_title), composerStartRestartGroup, 0), modifier3, j4, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composerStartRestartGroup, i4 & 1008, 0, 262136);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1073325776);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j3 = j4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            j3 = j2;
            modifier3 = modifier2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier6 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: u92
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerDefaults.DatePickerTitle_FNtVw6o$lambda$1(this.b, i, modifier6, j3, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    public final DatePickerColors colors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-275219611, i, -1, "androidx.compose.material3.DatePickerDefaults.colors (DatePicker.kt:447)");
        }
        DatePickerColors defaultDatePickerColors = getDefaultDatePickerColors(MaterialTheme.INSTANCE.getColorScheme(composer, 6), composer, (i << 3) & 112);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultDatePickerColors;
    }

    /* JADX INFO: renamed from: colors-bSRYm20, reason: not valid java name */
    public final DatePickerColors m3357colorsbSRYm20(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, TextFieldColors textFieldColors, Composer composer, int i, int i2, int i3, int i4) {
        long jM6268getUnspecified0d7_KjU = (i4 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i4 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i4 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU4 = (i4 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU5 = (i4 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM6268getUnspecified0d7_KjU6 = (i4 & 32) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j6;
        long jM6268getUnspecified0d7_KjU7 = (i4 & 64) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j7;
        long j25 = jM6268getUnspecified0d7_KjU;
        long jM6268getUnspecified0d7_KjU8 = (i4 & 128) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j8;
        long jM6268getUnspecified0d7_KjU9 = (i4 & 256) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j9;
        long jM6268getUnspecified0d7_KjU10 = (i4 & 512) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j10;
        long jM6268getUnspecified0d7_KjU11 = (i4 & 1024) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j11;
        long jM6268getUnspecified0d7_KjU12 = (i4 & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j12;
        long jM6268getUnspecified0d7_KjU13 = (i4 & 4096) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j13;
        long jM6268getUnspecified0d7_KjU14 = (i4 & 8192) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j14;
        long jM6268getUnspecified0d7_KjU15 = (i4 & 16384) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j15;
        long jM6268getUnspecified0d7_KjU16 = (i4 & 32768) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j16;
        long jM6268getUnspecified0d7_KjU17 = (i4 & 65536) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j17;
        long jM6268getUnspecified0d7_KjU18 = (i4 & 131072) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j18;
        long jM6268getUnspecified0d7_KjU19 = (i4 & 262144) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j19;
        long jM6268getUnspecified0d7_KjU20 = (i4 & 524288) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j20;
        long jM6268getUnspecified0d7_KjU21 = (i4 & 1048576) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j21;
        long jM6268getUnspecified0d7_KjU22 = (i4 & 2097152) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j22;
        long jM6268getUnspecified0d7_KjU23 = (i4 & 4194304) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j23;
        long jM6268getUnspecified0d7_KjU24 = (i4 & 8388608) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j24;
        TextFieldColors textFieldColors2 = (i4 & 16777216) != 0 ? null : textFieldColors;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1991626358, i, i2, "androidx.compose.material3.DatePickerDefaults.colors (DatePicker.kt:516)");
        }
        DatePickerColors datePickerColorsM3330copytNwlRmA = getDefaultDatePickerColors(MaterialTheme.INSTANCE.getColorScheme(composer, 6), composer, (i3 >> 12) & 112).m3330copytNwlRmA(j25, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5, jM6268getUnspecified0d7_KjU6, jM6268getUnspecified0d7_KjU7, jM6268getUnspecified0d7_KjU8, jM6268getUnspecified0d7_KjU9, jM6268getUnspecified0d7_KjU10, jM6268getUnspecified0d7_KjU11, jM6268getUnspecified0d7_KjU12, jM6268getUnspecified0d7_KjU13, jM6268getUnspecified0d7_KjU14, jM6268getUnspecified0d7_KjU15, jM6268getUnspecified0d7_KjU16, jM6268getUnspecified0d7_KjU17, jM6268getUnspecified0d7_KjU18, jM6268getUnspecified0d7_KjU19, jM6268getUnspecified0d7_KjU20, jM6268getUnspecified0d7_KjU21, jM6268getUnspecified0d7_KjU23, jM6268getUnspecified0d7_KjU22, jM6268getUnspecified0d7_KjU24, textFieldColors2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return datePickerColorsM3330copytNwlRmA;
    }

    public final DatePickerFormatter dateFormatter(String str, String str2, String str3) {
        return new DatePickerFormatterImpl(str, str2, str3);
    }

    public final SelectableDates getAllDates() {
        return AllDates;
    }

    public final DatePickerColors getDefaultDatePickerColors(ColorScheme colorScheme, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1180555308, i, -1, "androidx.compose.material3.DatePickerDefaults.<get-defaultDatePickerColors> (DatePicker.kt:546)");
        }
        DatePickerColors defaultDatePickerColorsCached$material3 = colorScheme.getDefaultDatePickerColorsCached$material3();
        if (defaultDatePickerColorsCached$material3 == null) {
            composer.startReplaceGroup(642416503);
            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
            DatePickerColors datePickerColors = new DatePickerColors(ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getContainerColor()), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getHeaderSupportingTextColor()), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getHeaderHeadlineColor()), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getWeekdaysLabelTextColor()), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getRangeSelectionMonthSubheadColor()), colorScheme.m3243getOnSurfaceVariant0d7_KjU(), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getSelectionYearUnselectedLabelTextColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getSelectionYearUnselectedLabelTextColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getDateTodayLabelTextColor()), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getSelectionYearSelectedLabelTextColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getSelectionYearSelectedLabelTextColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getSelectionYearSelectedContainerColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getSelectionYearSelectedContainerColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getDateUnselectedLabelTextColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getDateUnselectedLabelTextColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getDateSelectedLabelTextColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getDateSelectedLabelTextColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getDateSelectedContainerColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getDateSelectedContainerColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getDateTodayLabelTextColor()), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getDateTodayContainerOutlineColor()), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getRangeSelectionActiveIndicatorContainerColor()), ColorSchemeKt.fromToken(colorScheme, datePickerModalTokens.getSelectionDateInRangeLabelTextColor()), ColorSchemeKt.fromToken(colorScheme, DividerTokens.INSTANCE.getColor()), OutlinedTextFieldDefaults.INSTANCE.getDefaultOutlinedTextFieldColors(colorScheme, composer, (i & 14) | 48), null);
            colorScheme.setDefaultDatePickerColorsCached$material3(datePickerColors);
            composer.endReplaceGroup();
            defaultDatePickerColorsCached$material3 = datePickerColors;
        } else {
            composer.startReplaceGroup(642290457);
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultDatePickerColorsCached$material3;
    }

    public final Shape getShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(700927667, i, -1, "androidx.compose.material3.DatePickerDefaults.<get-shape> (DatePicker.kt:770)");
        }
        Shape value = ShapesKt.getValue(DatePickerModalTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    /* JADX INFO: renamed from: getTonalElevation-D9Ej5fM, reason: not valid java name */
    public final float m3358getTonalElevationD9Ej5fM() {
        return TonalElevation;
    }

    public final y74 getYearRange() {
        return YearRange;
    }

    public final FlingBehavior rememberSnapFlingBehavior$material3(LazyListState lazyListState, DecayAnimationSpec<Float> decayAnimationSpec, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            decayAnimationSpec = DecayAnimationSpecKt.exponentialDecay$default(0.0f, 0.0f, 3, null);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2036003494, i, -1, "androidx.compose.material3.DatePickerDefaults.rememberSnapFlingBehavior (DatePicker.kt:741)");
        }
        FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer, 6);
        boolean zChanged = ((((i & 14) ^ 6) > 4 && composer.changed(lazyListState)) || (i & 6) == 4) | composer.changed(decayAnimationSpec);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            final SnapLayoutInfoProvider snapLayoutInfoProviderSnapLayoutInfoProvider$default = LazyListSnapLayoutInfoProviderKt.SnapLayoutInfoProvider$default(lazyListState, null, 2, null);
            objRememberedValue = SnapFlingBehaviorKt.snapFlingBehavior(new SnapLayoutInfoProvider() { // from class: androidx.compose.material3.DatePickerDefaults$rememberSnapFlingBehavior$1$snapLayoutInfoProvider$1
                @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                public float calculateApproachOffset(float f, float f2) {
                    return 0.0f;
                }

                @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                public float calculateSnapOffset(float f) {
                    return snapLayoutInfoProviderSnapLayoutInfoProvider$default.calculateSnapOffset(f);
                }
            }, decayAnimationSpec, finiteAnimationSpecValue);
            composer.updateRememberedValue(objRememberedValue);
        }
        TargetedFlingBehavior targetedFlingBehavior = (TargetedFlingBehavior) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return targetedFlingBehavior;
    }
}
