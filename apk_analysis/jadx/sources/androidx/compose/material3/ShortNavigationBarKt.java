package androidx.compose.material3;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ShortNavigationBarKt;
import androidx.compose.material3.tokens.NavigationBarHorizontalItemTokens;
import androidx.compose.material3.tokens.NavigationBarTokens;
import androidx.compose.material3.tokens.NavigationBarVerticalItemTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.gr2;
import defpackage.j59;
import defpackage.ll3;
import defpackage.w65;

/* JADX INFO: loaded from: classes2.dex */
public final class ShortNavigationBarKt {
    private static final ProvidableCompositionLocal<ShortNavigationBarOverride> LocalShortNavigationBarOverride = CompositionLocalKt.compositionLocalOf$default(null, new gr2(2), 1, null);
    private static final float StartIconIndicatorHorizontalPadding;
    private static final float StartIconIndicatorVerticalPadding;
    private static final float StartIconToLabelPadding;
    private static final float TopIconIndicatorHorizontalPadding;
    private static final float TopIconIndicatorToLabelPadding;
    private static final float TopIconIndicatorVerticalPadding;
    private static final float TopIconItemVerticalPadding;

    static {
        NavigationBarVerticalItemTokens navigationBarVerticalItemTokens = NavigationBarVerticalItemTokens.INSTANCE;
        TopIconItemVerticalPadding = navigationBarVerticalItemTokens.m4917getContainerBetweenSpaceD9Ej5fM();
        TopIconIndicatorVerticalPadding = Dp.m9042constructorimpl(Dp.m9042constructorimpl(navigationBarVerticalItemTokens.m4915getActiveIndicatorHeightD9Ej5fM() - navigationBarVerticalItemTokens.m4918getIconSizeD9Ej5fM()) / 2.0f);
        TopIconIndicatorHorizontalPadding = Dp.m9042constructorimpl(Dp.m9042constructorimpl(navigationBarVerticalItemTokens.m4916getActiveIndicatorWidthD9Ej5fM() - navigationBarVerticalItemTokens.m4918getIconSizeD9Ej5fM()) / 2.0f);
        NavigationBarHorizontalItemTokens navigationBarHorizontalItemTokens = NavigationBarHorizontalItemTokens.INSTANCE;
        StartIconIndicatorVerticalPadding = Dp.m9042constructorimpl(Dp.m9042constructorimpl(navigationBarHorizontalItemTokens.m4906getActiveIndicatorHeightD9Ej5fM() - navigationBarHorizontalItemTokens.m4909getIconSizeD9Ej5fM()) / 2.0f);
        TopIconIndicatorToLabelPadding = Dp.m9042constructorimpl(4.0f);
        StartIconIndicatorHorizontalPadding = navigationBarHorizontalItemTokens.m4907getActiveIndicatorLeadingSpaceD9Ej5fM();
        StartIconToLabelPadding = NavigationBarTokens.INSTANCE.m4912getItemActiveIndicatorIconLabelSpaceD9Ej5fM();
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0112  */
    /* JADX WARN: Code duplicated, block: B:105:0x011e  */
    /* JADX WARN: Code duplicated, block: B:108:0x012b  */
    /* JADX WARN: Code duplicated, block: B:109:0x013a  */
    /* JADX WARN: Code duplicated, block: B:112:0x0145  */
    /* JADX WARN: Code duplicated, block: B:115:0x0165  */
    /* JADX WARN: Code duplicated, block: B:117:0x0170  */
    /* JADX WARN: Code duplicated, block: B:120:0x017e  */
    /* JADX WARN: Code duplicated, block: B:122:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:94:0x00fb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:96:0x0100  */
    /* JADX WARN: Code duplicated, block: B:99:0x0106  */
    /* JADX INFO: renamed from: ShortNavigationBar-kQ6Tpik, reason: not valid java name */
    public static final void m3863ShortNavigationBarkQ6Tpik(Modifier modifier, long j, long j2, WindowInsets windowInsets, int i, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i2, final int i3) {
        Modifier modifier2;
        int i4;
        long containerColor;
        long contentColor;
        WindowInsets windowInsets2;
        int i5;
        bm3<? super Composer, ? super Integer, j59> bm3Var2;
        boolean z;
        Modifier modifier3;
        final long j3;
        final long j4;
        final WindowInsets windowInsets3;
        final int i6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        int iM3861getArrangementLnnQw40;
        long j5;
        WindowInsets windowInsets4;
        Composer composerStartRestartGroup = composer.startRestartGroup(552087412);
        int i7 = i3 & 1;
        if (i7 != 0) {
            i4 = i2 | 6;
            modifier2 = modifier;
        } else if ((i2 & 6) == 0) {
            modifier2 = modifier;
            i4 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i2;
        } else {
            modifier2 = modifier;
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            if ((i3 & 2) == 0) {
                containerColor = j;
                int i8 = composerStartRestartGroup.changed(containerColor) ? 32 : 16;
                i4 |= i8;
            } else {
                containerColor = j;
            }
            i4 |= i8;
        } else {
            containerColor = j;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                contentColor = j2;
                int i9 = composerStartRestartGroup.changed(contentColor) ? 256 : 128;
                i4 |= i9;
            } else {
                contentColor = j2;
            }
            i4 |= i9;
        } else {
            contentColor = j2;
        }
        if ((i2 & 3072) == 0) {
            if ((i3 & 8) == 0) {
                windowInsets2 = windowInsets;
                int i10 = composerStartRestartGroup.changed(windowInsets2) ? 2048 : 1024;
                i4 |= i10;
            } else {
                windowInsets2 = windowInsets;
            }
            i4 |= i10;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((i2 & 24576) == 0) {
            if ((i3 & 16) == 0) {
                i5 = i;
                int i11 = composerStartRestartGroup.changed(i5) ? 16384 : 8192;
                i4 |= i11;
            } else {
                i5 = i;
            }
            i4 |= i11;
        } else {
            i5 = i;
        }
        if ((i3 & 32) == 0) {
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                bm3Var2 = bm3Var;
                i4 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 131072 : 65536;
            }
            if ((74899 & i4) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i7 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        containerColor = ShortNavigationBarDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -113;
                    }
                    if ((i3 & 4) != 0) {
                        contentColor = ShortNavigationBarDefaults.INSTANCE.getContentColor(composerStartRestartGroup, 6);
                        i4 &= -897;
                    }
                    if ((i3 & 8) != 0) {
                        i4 &= -7169;
                        windowInsets2 = ShortNavigationBarDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        modifier3 = modifier4;
                        iM3861getArrangementLnnQw40 = ShortNavigationBarDefaults.INSTANCE.m3861getArrangementLnnQw40();
                        j5 = contentColor;
                        windowInsets4 = windowInsets2;
                    } else {
                        modifier3 = modifier4;
                    }
                    long j6 = containerColor;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(552087412, i4, -1, "androidx.compose.material3.ShortNavigationBar (ShortNavigationBar.kt:101)");
                    }
                    ((ShortNavigationBarOverride) composerStartRestartGroup.consume(LocalShortNavigationBarOverride)).ShortNavigationBar(new ShortNavigationBarOverrideScope(modifier3, j6, j5, windowInsets4, iM3861getArrangementLnnQw40, bm3Var2, null), composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j3 = j6;
                    j4 = j5;
                    windowInsets3 = windowInsets4;
                    i6 = iM3861getArrangementLnnQw40;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                    }
                    if ((i3 & 8) != 0) {
                        i4 &= -7169;
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                    }
                    modifier3 = modifier2;
                }
                j5 = contentColor;
                windowInsets4 = windowInsets2;
                iM3861getArrangementLnnQw40 = i5;
                long j7 = containerColor;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(552087412, i4, -1, "androidx.compose.material3.ShortNavigationBar (ShortNavigationBar.kt:101)");
                }
                ((ShortNavigationBarOverride) composerStartRestartGroup.consume(LocalShortNavigationBarOverride)).ShortNavigationBar(new ShortNavigationBarOverrideScope(modifier3, j7, j5, windowInsets4, iM3861getArrangementLnnQw40, bm3Var2, null), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = j7;
                j4 = j5;
                windowInsets3 = windowInsets4;
                i6 = iM3861getArrangementLnnQw40;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j3 = containerColor;
                j4 = contentColor;
                windowInsets3 = windowInsets2;
                i6 = i5;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier5 = modifier3;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hw7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ShortNavigationBarKt.ShortNavigationBar_kQ6Tpik$lambda$1(modifier5, j3, j4, windowInsets3, i6, bm3Var, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        bm3Var2 = bm3Var;
        if ((74899 & i4) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i7 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    containerColor = ShortNavigationBarDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i4 &= -113;
                }
                if ((i3 & 4) != 0) {
                    contentColor = ShortNavigationBarDefaults.INSTANCE.getContentColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if ((i3 & 8) != 0) {
                    i4 &= -7169;
                    windowInsets2 = ShortNavigationBarDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                }
                if ((i3 & 16) != 0) {
                    i4 &= -57345;
                    modifier3 = modifier4;
                    iM3861getArrangementLnnQw40 = ShortNavigationBarDefaults.INSTANCE.m3861getArrangementLnnQw40();
                    j5 = contentColor;
                    windowInsets4 = windowInsets2;
                } else {
                    modifier3 = modifier4;
                    j5 = contentColor;
                    windowInsets4 = windowInsets2;
                    iM3861getArrangementLnnQw40 = i5;
                }
            } else {
                if (i7 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    containerColor = ShortNavigationBarDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i4 &= -113;
                }
                if ((i3 & 4) != 0) {
                    contentColor = ShortNavigationBarDefaults.INSTANCE.getContentColor(composerStartRestartGroup, 6);
                    i4 &= -897;
                }
                if ((i3 & 8) != 0) {
                    i4 &= -7169;
                    windowInsets2 = ShortNavigationBarDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                }
                if ((i3 & 16) != 0) {
                    i4 &= -57345;
                    modifier3 = modifier4;
                    iM3861getArrangementLnnQw40 = ShortNavigationBarDefaults.INSTANCE.m3861getArrangementLnnQw40();
                    j5 = contentColor;
                    windowInsets4 = windowInsets2;
                } else {
                    modifier3 = modifier4;
                    j5 = contentColor;
                    windowInsets4 = windowInsets2;
                    iM3861getArrangementLnnQw40 = i5;
                }
            }
            long j8 = containerColor;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(552087412, i4, -1, "androidx.compose.material3.ShortNavigationBar (ShortNavigationBar.kt:101)");
            }
            ((ShortNavigationBarOverride) composerStartRestartGroup.consume(LocalShortNavigationBarOverride)).ShortNavigationBar(new ShortNavigationBarOverrideScope(modifier3, j8, j5, windowInsets4, iM3861getArrangementLnnQw40, bm3Var2, null), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j3 = j8;
            j4 = j5;
            windowInsets3 = windowInsets4;
            i6 = iM3861getArrangementLnnQw40;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            j3 = containerColor;
            j4 = contentColor;
            windowInsets3 = windowInsets2;
            i6 = i5;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier6 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hw7
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ShortNavigationBarKt.ShortNavigationBar_kQ6Tpik$lambda$1(modifier6, j3, j4, windowInsets3, i6, bm3Var, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0117  */
    /* JADX WARN: Code duplicated, block: B:101:0x011a  */
    /* JADX WARN: Code duplicated, block: B:104:0x0123  */
    /* JADX WARN: Code duplicated, block: B:106:0x012e  */
    /* JADX WARN: Code duplicated, block: B:114:0x0153 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x0155  */
    /* JADX WARN: Code duplicated, block: B:117:0x015a  */
    /* JADX WARN: Code duplicated, block: B:119:0x015e  */
    /* JADX WARN: Code duplicated, block: B:122:0x0169  */
    /* JADX WARN: Code duplicated, block: B:123:0x0173  */
    /* JADX WARN: Code duplicated, block: B:125:0x0177  */
    /* JADX WARN: Code duplicated, block: B:126:0x0179  */
    /* JADX WARN: Code duplicated, block: B:129:0x0185  */
    /* JADX WARN: Code duplicated, block: B:131:0x0190  */
    /* JADX WARN: Code duplicated, block: B:133:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:135:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:138:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:140:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:142:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:144:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:147:0x022e  */
    /* JADX WARN: Code duplicated, block: B:149:0x023b  */
    /* JADX WARN: Code duplicated, block: B:152:0x024b  */
    /* JADX WARN: Code duplicated, block: B:154:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x009a  */
    /* JADX WARN: Code duplicated, block: B:58:0x009e  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:78:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00db  */
    /* JADX WARN: Code duplicated, block: B:83:0x00de  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:89:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:95:0x0102  */
    /* JADX WARN: Code duplicated, block: B:96:0x0105  */
    /* JADX INFO: renamed from: ShortNavigationBarItem-6ZDA4I0, reason: not valid java name */
    public static final void m3864ShortNavigationBarItem6ZDA4I0(final boolean z, final ll3<j59> ll3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, Modifier modifier, boolean z2, int i, NavigationItemColors navigationItemColors, MutableInteractionSource mutableInteractionSource, Composer composer, final int i2, final int i3) {
        boolean z3;
        int i4;
        ll3<j59> ll3Var2;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        bm3<? super Composer, ? super Integer, j59> bm3Var4;
        final Modifier modifier2;
        int i5;
        boolean z4;
        int i6;
        int i7;
        int iM3683getTopxw1Ddg;
        int i8;
        NavigationItemColors navigationItemColorsColors;
        int i9;
        int i10;
        int i11;
        boolean z5;
        Composer composer2;
        final boolean z6;
        final int i12;
        final NavigationItemColors navigationItemColors2;
        final MutableInteractionSource mutableInteractionSource2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i13;
        MutableInteractionSource mutableInteractionSource3;
        Modifier modifier3;
        boolean z7;
        NavigationItemColors navigationItemColors3;
        MutableInteractionSource mutableInteractionSource4;
        boolean zM3678equalsimpl0;
        float f;
        float f2;
        Object objRememberedValue;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1164996656);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
            z3 = z;
        } else {
            z3 = z;
            if ((i2 & 6) == 0) {
                i4 = (composerStartRestartGroup.changed(z3) ? 4 : 2) | i2;
            } else {
                i4 = i2;
            }
        }
        if ((i3 & 2) != 0) {
            i4 |= 48;
            ll3Var2 = ll3Var;
        } else {
            ll3Var2 = ll3Var;
            if ((i2 & 48) == 0) {
                i4 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 32 : 16;
            }
        }
        if ((i3 & 4) != 0) {
            i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            bm3Var3 = bm3Var;
        } else {
            bm3Var3 = bm3Var;
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i4 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 256 : 128;
            }
        }
        if ((i3 & 8) != 0) {
            i4 |= 3072;
            bm3Var4 = bm3Var2;
        } else {
            bm3Var4 = bm3Var2;
            if ((i2 & 3072) == 0) {
                i4 |= composerStartRestartGroup.changedInstance(bm3Var4) ? 2048 : 1024;
            }
        }
        int i14 = i3 & 16;
        if (i14 == 0) {
            if ((i2 & 24576) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 16384 : 8192;
            }
            i5 = i3 & 32;
            if (i5 != 0) {
                if ((196608 & i2) == 0) {
                    z4 = z2;
                    if (composerStartRestartGroup.changed(z4)) {
                        i6 = 131072;
                    } else {
                        i6 = 65536;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 64;
                if (i7 != 0) {
                    if ((1572864 & i2) == 0) {
                        iM3683getTopxw1Ddg = i;
                        if (composerStartRestartGroup.changed(iM3683getTopxw1Ddg)) {
                            i8 = 1048576;
                        } else {
                            i8 = 524288;
                        }
                        i4 |= i8;
                    }
                    if ((12582912 & i2) == 0) {
                        if ((i3 & 128) == 0) {
                            navigationItemColorsColors = navigationItemColors;
                            int i15 = composerStartRestartGroup.changed(navigationItemColorsColors) ? 8388608 : 4194304;
                            i4 |= i15;
                        } else {
                            navigationItemColorsColors = navigationItemColors;
                        }
                        i4 |= i15;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i9 = i3 & 256;
                    if (i9 != 0) {
                        if ((i2 & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i10 = 67108864;
                            } else {
                                i10 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i4 |= i10;
                        }
                        i11 = i4;
                        if ((i4 & 38347923) != 38347922) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i5 != 0) {
                                    z4 = true;
                                }
                                if (i7 != 0) {
                                    iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                                }
                                if ((i3 & 128) != 0) {
                                    i13 = i11 & (-29360129);
                                    navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                } else {
                                    i13 = i11;
                                }
                                if (i9 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i3 & 128) != 0) {
                                    i13 = i11 & (-29360129);
                                    modifier3 = modifier2;
                                    z7 = z4;
                                    navigationItemColors3 = navigationItemColorsColors;
                                    mutableInteractionSource3 = mutableInteractionSource;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                    i13 = i11;
                                }
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                                }
                                if (mutableInteractionSource3 == null) {
                                    composerStartRestartGroup.startReplaceGroup(1215858123);
                                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                    }
                                    composerStartRestartGroup.endReplaceGroup();
                                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(1424693900);
                                    composerStartRestartGroup.endReplaceGroup();
                                    mutableInteractionSource4 = mutableInteractionSource3;
                                }
                                zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                                if (zM3678equalsimpl0) {
                                    f = TopIconIndicatorHorizontalPadding;
                                } else {
                                    f = StartIconIndicatorHorizontalPadding;
                                }
                                float f3 = f;
                                if (zM3678equalsimpl0) {
                                    f2 = TopIconIndicatorVerticalPadding;
                                } else {
                                    f2 = StartIconIndicatorVerticalPadding;
                                }
                                float f4 = f2;
                                NavigationBarTokens navigationBarTokens = NavigationBarTokens.INSTANCE;
                                int i16 = i13 >> 6;
                                composer2 = composerStartRestartGroup;
                                int i17 = iM3683getTopxw1Ddg;
                                NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f3, f4, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i17, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i16 & 896) | (i16 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                mutableInteractionSource2 = mutableInteractionSource3;
                                navigationItemColors2 = navigationItemColors3;
                                modifier2 = modifier3;
                                z6 = z7;
                                i12 = i17;
                            }
                            modifier3 = modifier2;
                            z7 = z4;
                            navigationItemColors3 = navigationItemColorsColors;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(1215858123);
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(1424693900);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                            if (zM3678equalsimpl0) {
                                f = TopIconIndicatorHorizontalPadding;
                            } else {
                                f = StartIconIndicatorHorizontalPadding;
                            }
                            float f5 = f;
                            if (zM3678equalsimpl0) {
                                f2 = TopIconIndicatorVerticalPadding;
                            } else {
                                f2 = StartIconIndicatorVerticalPadding;
                            }
                            float f6 = f2;
                            NavigationBarTokens navigationBarTokens2 = NavigationBarTokens.INSTANCE;
                            int i18 = i13 >> 6;
                            composer2 = composerStartRestartGroup;
                            int i19 = iM3683getTopxw1Ddg;
                            NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens2.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens2.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f5, f6, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i19, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i18 & 896) | (i18 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            mutableInteractionSource2 = mutableInteractionSource3;
                            navigationItemColors2 = navigationItemColors3;
                            modifier2 = modifier3;
                            z6 = z7;
                            i12 = i19;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            z6 = z4;
                            i12 = iM3683getTopxw1Ddg;
                            navigationItemColors2 = navigationItemColorsColors;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 100663296;
                    i11 = i4;
                    if ((i4 & 38347923) != 38347922) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i5 != 0) {
                                z4 = true;
                            }
                            if (i7 != 0) {
                                iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                            }
                            if ((i3 & 128) != 0) {
                                i13 = i11 & (-29360129);
                                navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            } else {
                                i13 = i11;
                            }
                            if (i9 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            z7 = z4;
                            navigationItemColors3 = navigationItemColorsColors;
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i5 != 0) {
                                z4 = true;
                            }
                            if (i7 != 0) {
                                iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                            }
                            if ((i3 & 128) != 0) {
                                i13 = i11 & (-29360129);
                                navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            } else {
                                i13 = i11;
                            }
                            if (i9 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            z7 = z4;
                            navigationItemColors3 = navigationItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(1215858123);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1424693900);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                        if (zM3678equalsimpl0) {
                            f = TopIconIndicatorHorizontalPadding;
                        } else {
                            f = StartIconIndicatorHorizontalPadding;
                        }
                        float f7 = f;
                        if (zM3678equalsimpl0) {
                            f2 = TopIconIndicatorVerticalPadding;
                        } else {
                            f2 = StartIconIndicatorVerticalPadding;
                        }
                        float f8 = f2;
                        NavigationBarTokens navigationBarTokens3 = NavigationBarTokens.INSTANCE;
                        int i110 = i13 >> 6;
                        composer2 = composerStartRestartGroup;
                        int i111 = iM3683getTopxw1Ddg;
                        NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens3.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens3.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f7, f8, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i111, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i110 & 896) | (i110 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors3;
                        modifier2 = modifier3;
                        z6 = z7;
                        i12 = i111;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z4;
                        i12 = iM3683getTopxw1Ddg;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                iM3683getTopxw1Ddg = i;
                if ((12582912 & i2) == 0) {
                    if ((i3 & 128) == 0) {
                        navigationItemColorsColors = navigationItemColors;
                        if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                        }
                        i4 |= i15;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i4 |= i15;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i9 = i3 & 256;
                if (i9 != 0) {
                    if ((i2 & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i10 = 67108864;
                        } else {
                            i10 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i10;
                    }
                    i11 = i4;
                    if ((i4 & 38347923) != 38347922) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i5 != 0) {
                                z4 = true;
                            }
                            if (i7 != 0) {
                                iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                            }
                            if ((i3 & 128) != 0) {
                                i13 = i11 & (-29360129);
                                navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            } else {
                                i13 = i11;
                            }
                            if (i9 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            z7 = z4;
                            navigationItemColors3 = navigationItemColorsColors;
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i5 != 0) {
                                z4 = true;
                            }
                            if (i7 != 0) {
                                iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                            }
                            if ((i3 & 128) != 0) {
                                i13 = i11 & (-29360129);
                                navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            } else {
                                i13 = i11;
                            }
                            if (i9 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            z7 = z4;
                            navigationItemColors3 = navigationItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(1215858123);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1424693900);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                        if (zM3678equalsimpl0) {
                            f = TopIconIndicatorHorizontalPadding;
                        } else {
                            f = StartIconIndicatorHorizontalPadding;
                        }
                        float f9 = f;
                        if (zM3678equalsimpl0) {
                            f2 = TopIconIndicatorVerticalPadding;
                        } else {
                            f2 = StartIconIndicatorVerticalPadding;
                        }
                        float f10 = f2;
                        NavigationBarTokens navigationBarTokens4 = NavigationBarTokens.INSTANCE;
                        int i112 = i13 >> 6;
                        composer2 = composerStartRestartGroup;
                        int i113 = iM3683getTopxw1Ddg;
                        NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens4.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens4.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f9, f10, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i113, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i112 & 896) | (i112 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors3;
                        modifier2 = modifier3;
                        z6 = z7;
                        i12 = i113;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z4;
                        i12 = iM3683getTopxw1Ddg;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 100663296;
                i11 = i4;
                if ((i4 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(1215858123);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1424693900);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                    if (zM3678equalsimpl0) {
                        f = TopIconIndicatorHorizontalPadding;
                    } else {
                        f = StartIconIndicatorHorizontalPadding;
                    }
                    float f11 = f;
                    if (zM3678equalsimpl0) {
                        f2 = TopIconIndicatorVerticalPadding;
                    } else {
                        f2 = StartIconIndicatorVerticalPadding;
                    }
                    float f12 = f2;
                    NavigationBarTokens navigationBarTokens5 = NavigationBarTokens.INSTANCE;
                    int i114 = i13 >> 6;
                    composer2 = composerStartRestartGroup;
                    int i115 = iM3683getTopxw1Ddg;
                    NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens5.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens5.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f11, f12, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i115, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i114 & 896) | (i114 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors3;
                    modifier2 = modifier3;
                    z6 = z7;
                    i12 = i115;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z4;
                    i12 = iM3683getTopxw1Ddg;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z4 = z2;
            i7 = i3 & 64;
            if (i7 != 0) {
                if ((1572864 & i2) == 0) {
                    iM3683getTopxw1Ddg = i;
                    if (composerStartRestartGroup.changed(iM3683getTopxw1Ddg)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i4 |= i8;
                }
                if ((12582912 & i2) == 0) {
                    if ((i3 & 128) == 0) {
                        navigationItemColorsColors = navigationItemColors;
                        if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                        }
                        i4 |= i15;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i4 |= i15;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i9 = i3 & 256;
                if (i9 != 0) {
                    if ((i2 & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i10 = 67108864;
                        } else {
                            i10 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i10;
                    }
                    i11 = i4;
                    if ((i4 & 38347923) != 38347922) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i5 != 0) {
                                z4 = true;
                            }
                            if (i7 != 0) {
                                iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                            }
                            if ((i3 & 128) != 0) {
                                i13 = i11 & (-29360129);
                                navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            } else {
                                i13 = i11;
                            }
                            if (i9 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            z7 = z4;
                            navigationItemColors3 = navigationItemColorsColors;
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i5 != 0) {
                                z4 = true;
                            }
                            if (i7 != 0) {
                                iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                            }
                            if ((i3 & 128) != 0) {
                                i13 = i11 & (-29360129);
                                navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            } else {
                                i13 = i11;
                            }
                            if (i9 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            z7 = z4;
                            navigationItemColors3 = navigationItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(1215858123);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1424693900);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                        if (zM3678equalsimpl0) {
                            f = TopIconIndicatorHorizontalPadding;
                        } else {
                            f = StartIconIndicatorHorizontalPadding;
                        }
                        float f13 = f;
                        if (zM3678equalsimpl0) {
                            f2 = TopIconIndicatorVerticalPadding;
                        } else {
                            f2 = StartIconIndicatorVerticalPadding;
                        }
                        float f14 = f2;
                        NavigationBarTokens navigationBarTokens6 = NavigationBarTokens.INSTANCE;
                        int i116 = i13 >> 6;
                        composer2 = composerStartRestartGroup;
                        int i117 = iM3683getTopxw1Ddg;
                        NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens6.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens6.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f13, f14, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i117, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i116 & 896) | (i116 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors3;
                        modifier2 = modifier3;
                        z6 = z7;
                        i12 = i117;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z4;
                        i12 = iM3683getTopxw1Ddg;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 100663296;
                i11 = i4;
                if ((i4 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(1215858123);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1424693900);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                    if (zM3678equalsimpl0) {
                        f = TopIconIndicatorHorizontalPadding;
                    } else {
                        f = StartIconIndicatorHorizontalPadding;
                    }
                    float f15 = f;
                    if (zM3678equalsimpl0) {
                        f2 = TopIconIndicatorVerticalPadding;
                    } else {
                        f2 = StartIconIndicatorVerticalPadding;
                    }
                    float f16 = f2;
                    NavigationBarTokens navigationBarTokens7 = NavigationBarTokens.INSTANCE;
                    int i118 = i13 >> 6;
                    composer2 = composerStartRestartGroup;
                    int i119 = iM3683getTopxw1Ddg;
                    NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens7.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens7.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f15, f16, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i119, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i118 & 896) | (i118 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors3;
                    modifier2 = modifier3;
                    z6 = z7;
                    i12 = i119;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z4;
                    i12 = iM3683getTopxw1Ddg;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            iM3683getTopxw1Ddg = i;
            if ((12582912 & i2) == 0) {
                if ((i3 & 128) == 0) {
                    navigationItemColorsColors = navigationItemColors;
                    if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                    }
                    i4 |= i15;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i4 |= i15;
            } else {
                navigationItemColorsColors = navigationItemColors;
            }
            i9 = i3 & 256;
            if (i9 != 0) {
                if ((i2 & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i10 = 67108864;
                    } else {
                        i10 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i10;
                }
                i11 = i4;
                if ((i4 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(1215858123);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1424693900);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                    if (zM3678equalsimpl0) {
                        f = TopIconIndicatorHorizontalPadding;
                    } else {
                        f = StartIconIndicatorHorizontalPadding;
                    }
                    float f17 = f;
                    if (zM3678equalsimpl0) {
                        f2 = TopIconIndicatorVerticalPadding;
                    } else {
                        f2 = StartIconIndicatorVerticalPadding;
                    }
                    float f18 = f2;
                    NavigationBarTokens navigationBarTokens8 = NavigationBarTokens.INSTANCE;
                    int i1110 = i13 >> 6;
                    composer2 = composerStartRestartGroup;
                    int i1111 = iM3683getTopxw1Ddg;
                    NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens8.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens8.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f17, f18, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i1111, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i1110 & 896) | (i1110 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors3;
                    modifier2 = modifier3;
                    z6 = z7;
                    i12 = i1111;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z4;
                    i12 = iM3683getTopxw1Ddg;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 100663296;
            i11 = i4;
            if ((i4 & 38347923) != 38347922) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i5 != 0) {
                        z4 = true;
                    }
                    if (i7 != 0) {
                        iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                    }
                    if ((i3 & 128) != 0) {
                        i13 = i11 & (-29360129);
                        navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i13 = i11;
                    }
                    if (i9 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    z7 = z4;
                    navigationItemColors3 = navigationItemColorsColors;
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i5 != 0) {
                        z4 = true;
                    }
                    if (i7 != 0) {
                        iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                    }
                    if ((i3 & 128) != 0) {
                        i13 = i11 & (-29360129);
                        navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i13 = i11;
                    }
                    if (i9 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    z7 = z4;
                    navigationItemColors3 = navigationItemColorsColors;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(1215858123);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1424693900);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                if (zM3678equalsimpl0) {
                    f = TopIconIndicatorHorizontalPadding;
                } else {
                    f = StartIconIndicatorHorizontalPadding;
                }
                float f19 = f;
                if (zM3678equalsimpl0) {
                    f2 = TopIconIndicatorVerticalPadding;
                } else {
                    f2 = StartIconIndicatorVerticalPadding;
                }
                float f110 = f2;
                NavigationBarTokens navigationBarTokens9 = NavigationBarTokens.INSTANCE;
                int i1112 = i13 >> 6;
                composer2 = composerStartRestartGroup;
                int i1113 = iM3683getTopxw1Ddg;
                NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens9.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens9.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f19, f110, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i1113, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i1112 & 896) | (i1112 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource2 = mutableInteractionSource3;
                navigationItemColors2 = navigationItemColors3;
                modifier2 = modifier3;
                z6 = z7;
                i12 = i1113;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z6 = z4;
                i12 = iM3683getTopxw1Ddg;
                navigationItemColors2 = navigationItemColorsColors;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        modifier2 = modifier;
        i5 = i3 & 32;
        if (i5 != 0) {
            if ((196608 & i2) == 0) {
                z4 = z2;
                if (composerStartRestartGroup.changed(z4)) {
                    i6 = 131072;
                } else {
                    i6 = 65536;
                }
                i4 |= i6;
            }
            i7 = i3 & 64;
            if (i7 != 0) {
                if ((1572864 & i2) == 0) {
                    iM3683getTopxw1Ddg = i;
                    if (composerStartRestartGroup.changed(iM3683getTopxw1Ddg)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i4 |= i8;
                }
                if ((12582912 & i2) == 0) {
                    if ((i3 & 128) == 0) {
                        navigationItemColorsColors = navigationItemColors;
                        if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                        }
                        i4 |= i15;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i4 |= i15;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i9 = i3 & 256;
                if (i9 != 0) {
                    if ((i2 & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i10 = 67108864;
                        } else {
                            i10 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i10;
                    }
                    i11 = i4;
                    if ((i4 & 38347923) != 38347922) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i5 != 0) {
                                z4 = true;
                            }
                            if (i7 != 0) {
                                iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                            }
                            if ((i3 & 128) != 0) {
                                i13 = i11 & (-29360129);
                                navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            } else {
                                i13 = i11;
                            }
                            if (i9 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            z7 = z4;
                            navigationItemColors3 = navigationItemColorsColors;
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i5 != 0) {
                                z4 = true;
                            }
                            if (i7 != 0) {
                                iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                            }
                            if ((i3 & 128) != 0) {
                                i13 = i11 & (-29360129);
                                navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            } else {
                                i13 = i11;
                            }
                            if (i9 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            z7 = z4;
                            navigationItemColors3 = navigationItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(1215858123);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1424693900);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                        if (zM3678equalsimpl0) {
                            f = TopIconIndicatorHorizontalPadding;
                        } else {
                            f = StartIconIndicatorHorizontalPadding;
                        }
                        float f111 = f;
                        if (zM3678equalsimpl0) {
                            f2 = TopIconIndicatorVerticalPadding;
                        } else {
                            f2 = StartIconIndicatorVerticalPadding;
                        }
                        float f112 = f2;
                        NavigationBarTokens navigationBarTokens10 = NavigationBarTokens.INSTANCE;
                        int i1114 = i13 >> 6;
                        composer2 = composerStartRestartGroup;
                        int i1115 = iM3683getTopxw1Ddg;
                        NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens10.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens10.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f111, f112, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i1115, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i1114 & 896) | (i1114 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors3;
                        modifier2 = modifier3;
                        z6 = z7;
                        i12 = i1115;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z6 = z4;
                        i12 = iM3683getTopxw1Ddg;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 100663296;
                i11 = i4;
                if ((i4 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(1215858123);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1424693900);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                    if (zM3678equalsimpl0) {
                        f = TopIconIndicatorHorizontalPadding;
                    } else {
                        f = StartIconIndicatorHorizontalPadding;
                    }
                    float f113 = f;
                    if (zM3678equalsimpl0) {
                        f2 = TopIconIndicatorVerticalPadding;
                    } else {
                        f2 = StartIconIndicatorVerticalPadding;
                    }
                    float f114 = f2;
                    NavigationBarTokens navigationBarTokens11 = NavigationBarTokens.INSTANCE;
                    int i1116 = i13 >> 6;
                    composer2 = composerStartRestartGroup;
                    int i1117 = iM3683getTopxw1Ddg;
                    NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens11.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens11.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f113, f114, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i1117, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i1116 & 896) | (i1116 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors3;
                    modifier2 = modifier3;
                    z6 = z7;
                    i12 = i1117;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z4;
                    i12 = iM3683getTopxw1Ddg;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            iM3683getTopxw1Ddg = i;
            if ((12582912 & i2) == 0) {
                if ((i3 & 128) == 0) {
                    navigationItemColorsColors = navigationItemColors;
                    if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                    }
                    i4 |= i15;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i4 |= i15;
            } else {
                navigationItemColorsColors = navigationItemColors;
            }
            i9 = i3 & 256;
            if (i9 != 0) {
                if ((i2 & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i10 = 67108864;
                    } else {
                        i10 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i10;
                }
                i11 = i4;
                if ((i4 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(1215858123);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1424693900);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                    if (zM3678equalsimpl0) {
                        f = TopIconIndicatorHorizontalPadding;
                    } else {
                        f = StartIconIndicatorHorizontalPadding;
                    }
                    float f115 = f;
                    if (zM3678equalsimpl0) {
                        f2 = TopIconIndicatorVerticalPadding;
                    } else {
                        f2 = StartIconIndicatorVerticalPadding;
                    }
                    float f116 = f2;
                    NavigationBarTokens navigationBarTokens12 = NavigationBarTokens.INSTANCE;
                    int i1118 = i13 >> 6;
                    composer2 = composerStartRestartGroup;
                    int i1119 = iM3683getTopxw1Ddg;
                    NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens12.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens12.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f115, f116, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i1119, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i1118 & 896) | (i1118 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors3;
                    modifier2 = modifier3;
                    z6 = z7;
                    i12 = i1119;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z4;
                    i12 = iM3683getTopxw1Ddg;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 100663296;
            i11 = i4;
            if ((i4 & 38347923) != 38347922) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i5 != 0) {
                        z4 = true;
                    }
                    if (i7 != 0) {
                        iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                    }
                    if ((i3 & 128) != 0) {
                        i13 = i11 & (-29360129);
                        navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i13 = i11;
                    }
                    if (i9 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    z7 = z4;
                    navigationItemColors3 = navigationItemColorsColors;
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i5 != 0) {
                        z4 = true;
                    }
                    if (i7 != 0) {
                        iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                    }
                    if ((i3 & 128) != 0) {
                        i13 = i11 & (-29360129);
                        navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i13 = i11;
                    }
                    if (i9 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    z7 = z4;
                    navigationItemColors3 = navigationItemColorsColors;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(1215858123);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1424693900);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                if (zM3678equalsimpl0) {
                    f = TopIconIndicatorHorizontalPadding;
                } else {
                    f = StartIconIndicatorHorizontalPadding;
                }
                float f117 = f;
                if (zM3678equalsimpl0) {
                    f2 = TopIconIndicatorVerticalPadding;
                } else {
                    f2 = StartIconIndicatorVerticalPadding;
                }
                float f118 = f2;
                NavigationBarTokens navigationBarTokens13 = NavigationBarTokens.INSTANCE;
                int i11110 = i13 >> 6;
                composer2 = composerStartRestartGroup;
                int i11111 = iM3683getTopxw1Ddg;
                NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens13.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens13.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f117, f118, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i11111, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i11110 & 896) | (i11110 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource2 = mutableInteractionSource3;
                navigationItemColors2 = navigationItemColors3;
                modifier2 = modifier3;
                z6 = z7;
                i12 = i11111;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z6 = z4;
                i12 = iM3683getTopxw1Ddg;
                navigationItemColors2 = navigationItemColorsColors;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        z4 = z2;
        i7 = i3 & 64;
        if (i7 != 0) {
            if ((1572864 & i2) == 0) {
                iM3683getTopxw1Ddg = i;
                if (composerStartRestartGroup.changed(iM3683getTopxw1Ddg)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i4 |= i8;
            }
            if ((12582912 & i2) == 0) {
                if ((i3 & 128) == 0) {
                    navigationItemColorsColors = navigationItemColors;
                    if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                    }
                    i4 |= i15;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i4 |= i15;
            } else {
                navigationItemColorsColors = navigationItemColors;
            }
            i9 = i3 & 256;
            if (i9 != 0) {
                if ((i2 & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i10 = 67108864;
                    } else {
                        i10 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i10;
                }
                i11 = i4;
                if ((i4 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i5 != 0) {
                            z4 = true;
                        }
                        if (i7 != 0) {
                            iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                        }
                        if ((i3 & 128) != 0) {
                            i13 = i11 & (-29360129);
                            navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i13 = i11;
                        }
                        if (i9 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        z7 = z4;
                        navigationItemColors3 = navigationItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(1215858123);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1424693900);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                    if (zM3678equalsimpl0) {
                        f = TopIconIndicatorHorizontalPadding;
                    } else {
                        f = StartIconIndicatorHorizontalPadding;
                    }
                    float f119 = f;
                    if (zM3678equalsimpl0) {
                        f2 = TopIconIndicatorVerticalPadding;
                    } else {
                        f2 = StartIconIndicatorVerticalPadding;
                    }
                    float f1110 = f2;
                    NavigationBarTokens navigationBarTokens14 = NavigationBarTokens.INSTANCE;
                    int i11112 = i13 >> 6;
                    composer2 = composerStartRestartGroup;
                    int i11113 = iM3683getTopxw1Ddg;
                    NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens14.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens14.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f119, f1110, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i11113, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i11112 & 896) | (i11112 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors3;
                    modifier2 = modifier3;
                    z6 = z7;
                    i12 = i11113;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z6 = z4;
                    i12 = iM3683getTopxw1Ddg;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 100663296;
            i11 = i4;
            if ((i4 & 38347923) != 38347922) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i5 != 0) {
                        z4 = true;
                    }
                    if (i7 != 0) {
                        iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                    }
                    if ((i3 & 128) != 0) {
                        i13 = i11 & (-29360129);
                        navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i13 = i11;
                    }
                    if (i9 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    z7 = z4;
                    navigationItemColors3 = navigationItemColorsColors;
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i5 != 0) {
                        z4 = true;
                    }
                    if (i7 != 0) {
                        iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                    }
                    if ((i3 & 128) != 0) {
                        i13 = i11 & (-29360129);
                        navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i13 = i11;
                    }
                    if (i9 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    z7 = z4;
                    navigationItemColors3 = navigationItemColorsColors;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(1215858123);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1424693900);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                if (zM3678equalsimpl0) {
                    f = TopIconIndicatorHorizontalPadding;
                } else {
                    f = StartIconIndicatorHorizontalPadding;
                }
                float f1111 = f;
                if (zM3678equalsimpl0) {
                    f2 = TopIconIndicatorVerticalPadding;
                } else {
                    f2 = StartIconIndicatorVerticalPadding;
                }
                float f1112 = f2;
                NavigationBarTokens navigationBarTokens15 = NavigationBarTokens.INSTANCE;
                int i11114 = i13 >> 6;
                composer2 = composerStartRestartGroup;
                int i11115 = iM3683getTopxw1Ddg;
                NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens15.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens15.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f1111, f1112, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i11115, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i11114 & 896) | (i11114 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource2 = mutableInteractionSource3;
                navigationItemColors2 = navigationItemColors3;
                modifier2 = modifier3;
                z6 = z7;
                i12 = i11115;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z6 = z4;
                i12 = iM3683getTopxw1Ddg;
                navigationItemColors2 = navigationItemColorsColors;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 1572864;
        iM3683getTopxw1Ddg = i;
        if ((12582912 & i2) == 0) {
            if ((i3 & 128) == 0) {
                navigationItemColorsColors = navigationItemColors;
                if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                }
                i4 |= i15;
            } else {
                navigationItemColorsColors = navigationItemColors;
            }
            i4 |= i15;
        } else {
            navigationItemColorsColors = navigationItemColors;
        }
        i9 = i3 & 256;
        if (i9 != 0) {
            if ((i2 & 100663296) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i10 = 67108864;
                } else {
                    i10 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i10;
            }
            i11 = i4;
            if ((i4 & 38347923) != 38347922) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i5 != 0) {
                        z4 = true;
                    }
                    if (i7 != 0) {
                        iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                    }
                    if ((i3 & 128) != 0) {
                        i13 = i11 & (-29360129);
                        navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i13 = i11;
                    }
                    if (i9 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    z7 = z4;
                    navigationItemColors3 = navigationItemColorsColors;
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i5 != 0) {
                        z4 = true;
                    }
                    if (i7 != 0) {
                        iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                    }
                    if ((i3 & 128) != 0) {
                        i13 = i11 & (-29360129);
                        navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i13 = i11;
                    }
                    if (i9 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    z7 = z4;
                    navigationItemColors3 = navigationItemColorsColors;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(1215858123);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1424693900);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                if (zM3678equalsimpl0) {
                    f = TopIconIndicatorHorizontalPadding;
                } else {
                    f = StartIconIndicatorHorizontalPadding;
                }
                float f1113 = f;
                if (zM3678equalsimpl0) {
                    f2 = TopIconIndicatorVerticalPadding;
                } else {
                    f2 = StartIconIndicatorVerticalPadding;
                }
                float f1114 = f2;
                NavigationBarTokens navigationBarTokens16 = NavigationBarTokens.INSTANCE;
                int i11116 = i13 >> 6;
                composer2 = composerStartRestartGroup;
                int i11117 = iM3683getTopxw1Ddg;
                NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens16.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens16.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f1113, f1114, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i11117, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i11116 & 896) | (i11116 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource2 = mutableInteractionSource3;
                navigationItemColors2 = navigationItemColors3;
                modifier2 = modifier3;
                z6 = z7;
                i12 = i11117;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z6 = z4;
                i12 = iM3683getTopxw1Ddg;
                navigationItemColors2 = navigationItemColorsColors;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 100663296;
        i11 = i4;
        if ((i4 & 38347923) != 38347922) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i14 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i5 != 0) {
                    z4 = true;
                }
                if (i7 != 0) {
                    iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                }
                if ((i3 & 128) != 0) {
                    i13 = i11 & (-29360129);
                    navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                } else {
                    i13 = i11;
                }
                if (i9 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                modifier3 = modifier2;
                z7 = z4;
                navigationItemColors3 = navigationItemColorsColors;
            } else {
                if (i14 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i5 != 0) {
                    z4 = true;
                }
                if (i7 != 0) {
                    iM3683getTopxw1Ddg = NavigationItemIconPosition.Companion.m3683getTopxw1Ddg();
                }
                if ((i3 & 128) != 0) {
                    i13 = i11 & (-29360129);
                    navigationItemColorsColors = ShortNavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                } else {
                    i13 = i11;
                }
                if (i9 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                modifier3 = modifier2;
                z7 = z4;
                navigationItemColors3 = navigationItemColorsColors;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1164996656, i13, -1, "androidx.compose.material3.ShortNavigationBarItem (ShortNavigationBar.kt:219)");
            }
            if (mutableInteractionSource3 == null) {
                composerStartRestartGroup.startReplaceGroup(1215858123);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
            } else {
                composerStartRestartGroup.startReplaceGroup(1424693900);
                composerStartRestartGroup.endReplaceGroup();
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(iM3683getTopxw1Ddg, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
            if (zM3678equalsimpl0) {
                f = TopIconIndicatorHorizontalPadding;
            } else {
                f = StartIconIndicatorHorizontalPadding;
            }
            float f1115 = f;
            if (zM3678equalsimpl0) {
                f2 = TopIconIndicatorVerticalPadding;
            } else {
                f2 = StartIconIndicatorVerticalPadding;
            }
            float f1116 = f2;
            NavigationBarTokens navigationBarTokens17 = NavigationBarTokens.INSTANCE;
            int i11118 = i13 >> 6;
            composer2 = composerStartRestartGroup;
            int i11119 = iM3683getTopxw1Ddg;
            NavigationItemKt.m3687NavigationItem8Df7sds(z3, ll3Var2, bm3Var3, TypographyKt.getValue(navigationBarTokens17.getLabelTextFont(), composerStartRestartGroup, 6), ShapesKt.getValue(navigationBarTokens17.getItemActiveIndicatorShape(), composerStartRestartGroup, 6), NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM(), f1115, f1116, TopIconIndicatorToLabelPadding, StartIconToLabelPadding, TopIconItemVerticalPadding, navigationItemColors3, modifier3, z7, bm3Var4, i11119, mutableInteractionSource4, composer2, (i13 & 14) | 906166272 | (i13 & 112) | (i13 & 896), 6 | ((i13 >> 18) & 112) | (i11118 & 896) | (i11118 & 7168) | ((i13 << 3) & 57344) | ((i13 >> 3) & 458752));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            mutableInteractionSource2 = mutableInteractionSource3;
            navigationItemColors2 = navigationItemColors3;
            modifier2 = modifier3;
            z6 = z7;
            i12 = i11119;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            z6 = z4;
            i12 = iM3683getTopxw1Ddg;
            navigationItemColors2 = navigationItemColorsColors;
            mutableInteractionSource2 = mutableInteractionSource;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: iw7
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ShortNavigationBarKt.ShortNavigationBarItem_6ZDA4I0$lambda$3(z, ll3Var, bm3Var, bm3Var2, modifier2, z6, i12, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ShortNavigationBarItem_6ZDA4I0$lambda$3(boolean z, ll3 ll3Var, bm3 bm3Var, bm3 bm3Var2, Modifier modifier, boolean z2, int i, NavigationItemColors navigationItemColors, MutableInteractionSource mutableInteractionSource, int i2, int i3, Composer composer, int i4) {
        m3864ShortNavigationBarItem6ZDA4I0(z, ll3Var, bm3Var, bm3Var2, modifier, z2, i, navigationItemColors, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ShortNavigationBar_kQ6Tpik$lambda$1(Modifier modifier, long j, long j2, WindowInsets windowInsets, int i, bm3 bm3Var, int i2, int i3, Composer composer, int i4) {
        m3863ShortNavigationBarkQ6Tpik(modifier, j, j2, windowInsets, i, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int calculateCenteredContentHorizontalPadding(int i, int i2) {
        if (i > 6) {
            return 0;
        }
        return w65.b((((100 - ((i + 3) * 10)) / 2.0f) / 100.0f) * i2);
    }

    public static final ProvidableCompositionLocal<ShortNavigationBarOverride> getLocalShortNavigationBarOverride() {
        return LocalShortNavigationBarOverride;
    }

    public static final float getStartIconIndicatorHorizontalPadding() {
        return StartIconIndicatorHorizontalPadding;
    }

    public static final float getStartIconIndicatorVerticalPadding() {
        return StartIconIndicatorVerticalPadding;
    }

    public static final float getStartIconToLabelPadding() {
        return StartIconToLabelPadding;
    }

    public static final float getTopIconIndicatorHorizontalPadding() {
        return TopIconIndicatorHorizontalPadding;
    }

    public static final float getTopIconIndicatorToLabelPadding() {
        return TopIconIndicatorToLabelPadding;
    }

    public static final float getTopIconIndicatorVerticalPadding() {
        return TopIconIndicatorVerticalPadding;
    }

    public static final float getTopIconItemVerticalPadding() {
        return TopIconItemVerticalPadding;
    }
}
