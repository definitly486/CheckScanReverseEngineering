package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.NavigationBarKt;
import androidx.compose.material3.internal.MappedInteractionSource;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.NavigationBarTokens;
import androidx.compose.material3.tokens.NavigationBarVerticalItemTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import com.google.firebase.messaging.Constants;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.gj5;
import defpackage.hm;
import defpackage.j59;
import defpackage.js2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.qo;
import defpackage.sg0;
import defpackage.tg;
import defpackage.tg0;
import defpackage.ug;
import defpackage.w65;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationBarKt {
    private static final String IconLayoutIdTag = "icon";
    private static final float IndicatorHorizontalPadding;
    private static final String IndicatorLayoutIdTag = "indicator";
    private static final String IndicatorRippleLayoutIdTag = "indicatorRipple";
    private static final float IndicatorVerticalOffset;
    private static final float IndicatorVerticalPadding;
    private static final String LabelLayoutIdTag = "label";
    private static final ProvidableCompositionLocal<NavigationBarOverride> LocalNavigationBarOverride;
    private static final float NavigationBarItemToIconMinimumPadding;
    private static final float NavigationBarHeight = NavigationBarTokens.INSTANCE.m4914getTallContainerHeightD9Ej5fM();
    private static final float NavigationBarItemHorizontalPadding = Dp.m9042constructorimpl(8.0f);
    private static final float NavigationBarIndicatorToLabelPadding = Dp.m9042constructorimpl(4.0f);

    static {
        NavigationBarVerticalItemTokens navigationBarVerticalItemTokens = NavigationBarVerticalItemTokens.INSTANCE;
        IndicatorHorizontalPadding = Dp.m9042constructorimpl(Dp.m9042constructorimpl(navigationBarVerticalItemTokens.m4916getActiveIndicatorWidthD9Ej5fM() - navigationBarVerticalItemTokens.m4918getIconSizeD9Ej5fM()) / 2.0f);
        IndicatorVerticalPadding = Dp.m9042constructorimpl(Dp.m9042constructorimpl(navigationBarVerticalItemTokens.m4915getActiveIndicatorHeightD9Ej5fM() - navigationBarVerticalItemTokens.m4918getIconSizeD9Ej5fM()) / 2.0f);
        IndicatorVerticalOffset = Dp.m9042constructorimpl(12.0f);
        NavigationBarItemToIconMinimumPadding = Dp.m9042constructorimpl(44.0f);
        LocalNavigationBarOverride = CompositionLocalKt.compositionLocalOf$default(null, new qo(2), 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x011e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0129  */
    /* JADX WARN: Code duplicated, block: B:105:0x013a  */
    /* JADX WARN: Code duplicated, block: B:108:0x0145  */
    /* JADX WARN: Code duplicated, block: B:111:0x0165  */
    /* JADX WARN: Code duplicated, block: B:113:0x0171  */
    /* JADX WARN: Code duplicated, block: B:116:0x017f  */
    /* JADX WARN: Code duplicated, block: B:118:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0082  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:56:0x0093  */
    /* JADX WARN: Code duplicated, block: B:59:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x009f  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:96:0x0103  */
    /* JADX WARN: Code duplicated, block: B:99:0x010f  */
    /* JADX INFO: renamed from: NavigationBar-HsRjFd4, reason: not valid java name */
    public static final void m3647NavigationBarHsRjFd4(Modifier modifier, long j, long j2, float f, WindowInsets windowInsets, final dm3<? super RowScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        long containerColor;
        long jM3274contentColorFor4WTKRHQ;
        float fM3632getElevationD9Ej5fM;
        WindowInsets windowInsets2;
        dm3<? super RowScope, ? super Composer, ? super Integer, j59> dm3Var2;
        int i4;
        boolean z;
        Modifier modifier3;
        final long j3;
        final long j4;
        final float f2;
        final WindowInsets windowInsets3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        WindowInsets windowInsets4;
        long j5;
        long j6;
        float f3;
        Composer composerStartRestartGroup = composer.startRestartGroup(1054099326);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                containerColor = j;
                int i6 = composerStartRestartGroup.changed(containerColor) ? 32 : 16;
                i3 |= i6;
            } else {
                containerColor = j;
            }
            i3 |= i6;
        } else {
            containerColor = j;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                jM3274contentColorFor4WTKRHQ = j2;
                int i7 = composerStartRestartGroup.changed(jM3274contentColorFor4WTKRHQ) ? 256 : 128;
                i3 |= i7;
            } else {
                jM3274contentColorFor4WTKRHQ = j2;
            }
            i3 |= i7;
        } else {
            jM3274contentColorFor4WTKRHQ = j2;
        }
        int i8 = i2 & 8;
        if (i8 == 0) {
            if ((i & 3072) == 0) {
                fM3632getElevationD9Ej5fM = f;
                i3 |= composerStartRestartGroup.changed(fM3632getElevationD9Ej5fM) ? 2048 : 1024;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    windowInsets2 = windowInsets;
                    int i9 = composerStartRestartGroup.changed(windowInsets2) ? 16384 : 8192;
                    i3 |= i9;
                } else {
                    windowInsets2 = windowInsets;
                }
                i3 |= i9;
            } else {
                windowInsets2 = windowInsets;
            }
            if ((i2 & 32) != 0) {
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    dm3Var2 = dm3Var;
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i4 = 131072;
                    } else {
                        i4 = 65536;
                    }
                    i3 |= i4;
                }
                if ((74899 & i3) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i2 & 2) != 0) {
                            containerColor = NavigationBarDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i3 &= -113;
                        }
                        if ((i2 & 4) != 0) {
                            jM3274contentColorFor4WTKRHQ = ColorSchemeKt.m3274contentColorFor4WTKRHQ(MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6), containerColor);
                            i3 &= -897;
                        }
                        if (i8 != 0) {
                            fM3632getElevationD9Ej5fM = NavigationBarDefaults.INSTANCE.m3632getElevationD9Ej5fM();
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            modifier3 = modifier4;
                            windowInsets4 = NavigationBarDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                            j5 = containerColor;
                            j6 = jM3274contentColorFor4WTKRHQ;
                            f3 = fM3632getElevationD9Ej5fM;
                        } else {
                            modifier3 = modifier4;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1054099326, i3, -1, "androidx.compose.material3.NavigationBar (NavigationBar.kt:118)");
                        }
                        ((NavigationBarOverride) composerStartRestartGroup.consume(LocalNavigationBarOverride)).NavigationBar(new NavigationBarOverrideScope(modifier3, j5, j6, f3, windowInsets4, dm3Var2, null), composerStartRestartGroup, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j3 = j5;
                        j4 = j6;
                        f2 = f3;
                        windowInsets3 = windowInsets4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 2) != 0) {
                            i3 &= -113;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                        }
                        modifier3 = modifier2;
                    }
                    j5 = containerColor;
                    j6 = jM3274contentColorFor4WTKRHQ;
                    f3 = fM3632getElevationD9Ej5fM;
                    windowInsets4 = windowInsets2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1054099326, i3, -1, "androidx.compose.material3.NavigationBar (NavigationBar.kt:118)");
                    }
                    ((NavigationBarOverride) composerStartRestartGroup.consume(LocalNavigationBarOverride)).NavigationBar(new NavigationBarOverrideScope(modifier3, j5, j6, f3, windowInsets4, dm3Var2, null), composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j3 = j5;
                    j4 = j6;
                    f2 = f3;
                    windowInsets3 = windowInsets4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    j3 = containerColor;
                    j4 = jM3274contentColorFor4WTKRHQ;
                    f2 = fM3632getElevationD9Ej5fM;
                    windowInsets3 = windowInsets2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier5 = modifier3;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: fj5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationBarKt.NavigationBar_HsRjFd4$lambda$1(modifier5, j3, j4, f2, windowInsets3, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            dm3Var2 = dm3Var;
            if ((74899 & i3) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 2) != 0) {
                        containerColor = NavigationBarDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i3 &= -113;
                    }
                    if ((i2 & 4) != 0) {
                        jM3274contentColorFor4WTKRHQ = ColorSchemeKt.m3274contentColorFor4WTKRHQ(MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6), containerColor);
                        i3 &= -897;
                    }
                    if (i8 != 0) {
                        fM3632getElevationD9Ej5fM = NavigationBarDefaults.INSTANCE.m3632getElevationD9Ej5fM();
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        modifier3 = modifier4;
                        windowInsets4 = NavigationBarDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        j5 = containerColor;
                        j6 = jM3274contentColorFor4WTKRHQ;
                        f3 = fM3632getElevationD9Ej5fM;
                    } else {
                        modifier3 = modifier4;
                        j5 = containerColor;
                        j6 = jM3274contentColorFor4WTKRHQ;
                        f3 = fM3632getElevationD9Ej5fM;
                        windowInsets4 = windowInsets2;
                    }
                } else {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 2) != 0) {
                        containerColor = NavigationBarDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i3 &= -113;
                    }
                    if ((i2 & 4) != 0) {
                        jM3274contentColorFor4WTKRHQ = ColorSchemeKt.m3274contentColorFor4WTKRHQ(MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6), containerColor);
                        i3 &= -897;
                    }
                    if (i8 != 0) {
                        fM3632getElevationD9Ej5fM = NavigationBarDefaults.INSTANCE.m3632getElevationD9Ej5fM();
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        modifier3 = modifier4;
                        windowInsets4 = NavigationBarDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        j5 = containerColor;
                        j6 = jM3274contentColorFor4WTKRHQ;
                        f3 = fM3632getElevationD9Ej5fM;
                    } else {
                        modifier3 = modifier4;
                        j5 = containerColor;
                        j6 = jM3274contentColorFor4WTKRHQ;
                        f3 = fM3632getElevationD9Ej5fM;
                        windowInsets4 = windowInsets2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1054099326, i3, -1, "androidx.compose.material3.NavigationBar (NavigationBar.kt:118)");
                }
                ((NavigationBarOverride) composerStartRestartGroup.consume(LocalNavigationBarOverride)).NavigationBar(new NavigationBarOverrideScope(modifier3, j5, j6, f3, windowInsets4, dm3Var2, null), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = j5;
                j4 = j6;
                f2 = f3;
                windowInsets3 = windowInsets4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j3 = containerColor;
                j4 = jM3274contentColorFor4WTKRHQ;
                f2 = fM3632getElevationD9Ej5fM;
                windowInsets3 = windowInsets2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier6 = modifier3;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: fj5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationBarKt.NavigationBar_HsRjFd4$lambda$1(modifier6, j3, j4, f2, windowInsets3, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        fM3632getElevationD9Ej5fM = f;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                windowInsets2 = windowInsets;
                if (composerStartRestartGroup.changed(windowInsets2)) {
                }
                i3 |= i9;
            } else {
                windowInsets2 = windowInsets;
            }
            i3 |= i9;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((i2 & 32) != 0) {
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                dm3Var2 = dm3Var;
                if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                    i4 = 131072;
                } else {
                    i4 = 65536;
                }
                i3 |= i4;
            }
            if ((74899 & i3) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 2) != 0) {
                        containerColor = NavigationBarDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i3 &= -113;
                    }
                    if ((i2 & 4) != 0) {
                        jM3274contentColorFor4WTKRHQ = ColorSchemeKt.m3274contentColorFor4WTKRHQ(MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6), containerColor);
                        i3 &= -897;
                    }
                    if (i8 != 0) {
                        fM3632getElevationD9Ej5fM = NavigationBarDefaults.INSTANCE.m3632getElevationD9Ej5fM();
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        modifier3 = modifier4;
                        windowInsets4 = NavigationBarDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        j5 = containerColor;
                        j6 = jM3274contentColorFor4WTKRHQ;
                        f3 = fM3632getElevationD9Ej5fM;
                    } else {
                        modifier3 = modifier4;
                        j5 = containerColor;
                        j6 = jM3274contentColorFor4WTKRHQ;
                        f3 = fM3632getElevationD9Ej5fM;
                        windowInsets4 = windowInsets2;
                    }
                } else {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 2) != 0) {
                        containerColor = NavigationBarDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i3 &= -113;
                    }
                    if ((i2 & 4) != 0) {
                        jM3274contentColorFor4WTKRHQ = ColorSchemeKt.m3274contentColorFor4WTKRHQ(MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6), containerColor);
                        i3 &= -897;
                    }
                    if (i8 != 0) {
                        fM3632getElevationD9Ej5fM = NavigationBarDefaults.INSTANCE.m3632getElevationD9Ej5fM();
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        modifier3 = modifier4;
                        windowInsets4 = NavigationBarDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        j5 = containerColor;
                        j6 = jM3274contentColorFor4WTKRHQ;
                        f3 = fM3632getElevationD9Ej5fM;
                    } else {
                        modifier3 = modifier4;
                        j5 = containerColor;
                        j6 = jM3274contentColorFor4WTKRHQ;
                        f3 = fM3632getElevationD9Ej5fM;
                        windowInsets4 = windowInsets2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1054099326, i3, -1, "androidx.compose.material3.NavigationBar (NavigationBar.kt:118)");
                }
                ((NavigationBarOverride) composerStartRestartGroup.consume(LocalNavigationBarOverride)).NavigationBar(new NavigationBarOverrideScope(modifier3, j5, j6, f3, windowInsets4, dm3Var2, null), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = j5;
                j4 = j6;
                f2 = f3;
                windowInsets3 = windowInsets4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j3 = containerColor;
                j4 = jM3274contentColorFor4WTKRHQ;
                f2 = fM3632getElevationD9Ej5fM;
                windowInsets3 = windowInsets2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier7 = modifier3;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: fj5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationBarKt.NavigationBar_HsRjFd4$lambda$1(modifier7, j3, j4, f2, windowInsets3, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        dm3Var2 = dm3Var;
        if ((74899 & i3) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 2) != 0) {
                    containerColor = NavigationBarDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    jM3274contentColorFor4WTKRHQ = ColorSchemeKt.m3274contentColorFor4WTKRHQ(MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6), containerColor);
                    i3 &= -897;
                }
                if (i8 != 0) {
                    fM3632getElevationD9Ej5fM = NavigationBarDefaults.INSTANCE.m3632getElevationD9Ej5fM();
                }
                if ((i2 & 16) != 0) {
                    i3 &= -57345;
                    modifier3 = modifier4;
                    windowInsets4 = NavigationBarDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                    j5 = containerColor;
                    j6 = jM3274contentColorFor4WTKRHQ;
                    f3 = fM3632getElevationD9Ej5fM;
                } else {
                    modifier3 = modifier4;
                    j5 = containerColor;
                    j6 = jM3274contentColorFor4WTKRHQ;
                    f3 = fM3632getElevationD9Ej5fM;
                    windowInsets4 = windowInsets2;
                }
            } else {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 2) != 0) {
                    containerColor = NavigationBarDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    jM3274contentColorFor4WTKRHQ = ColorSchemeKt.m3274contentColorFor4WTKRHQ(MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6), containerColor);
                    i3 &= -897;
                }
                if (i8 != 0) {
                    fM3632getElevationD9Ej5fM = NavigationBarDefaults.INSTANCE.m3632getElevationD9Ej5fM();
                }
                if ((i2 & 16) != 0) {
                    i3 &= -57345;
                    modifier3 = modifier4;
                    windowInsets4 = NavigationBarDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                    j5 = containerColor;
                    j6 = jM3274contentColorFor4WTKRHQ;
                    f3 = fM3632getElevationD9Ej5fM;
                } else {
                    modifier3 = modifier4;
                    j5 = containerColor;
                    j6 = jM3274contentColorFor4WTKRHQ;
                    f3 = fM3632getElevationD9Ej5fM;
                    windowInsets4 = windowInsets2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1054099326, i3, -1, "androidx.compose.material3.NavigationBar (NavigationBar.kt:118)");
            }
            ((NavigationBarOverride) composerStartRestartGroup.consume(LocalNavigationBarOverride)).NavigationBar(new NavigationBarOverrideScope(modifier3, j5, j6, f3, windowInsets4, dm3Var2, null), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j3 = j5;
            j4 = j6;
            f2 = f3;
            windowInsets3 = windowInsets4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            j3 = containerColor;
            j4 = jM3274contentColorFor4WTKRHQ;
            f2 = fM3632getElevationD9Ej5fM;
            windowInsets3 = windowInsets2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier8 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: fj5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationBarKt.NavigationBar_HsRjFd4$lambda$1(modifier8, j3, j4, f2, windowInsets3, dm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0110  */
    /* JADX WARN: Code duplicated, block: B:102:0x0117  */
    /* JADX WARN: Code duplicated, block: B:104:0x011b  */
    /* JADX WARN: Code duplicated, block: B:106:0x0125  */
    /* JADX WARN: Code duplicated, block: B:107:0x0128  */
    /* JADX WARN: Code duplicated, block: B:111:0x013a  */
    /* JADX WARN: Code duplicated, block: B:112:0x013c  */
    /* JADX WARN: Code duplicated, block: B:115:0x0146  */
    /* JADX WARN: Code duplicated, block: B:117:0x0151  */
    /* JADX WARN: Code duplicated, block: B:124:0x0176 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:125:0x0178  */
    /* JADX WARN: Code duplicated, block: B:127:0x017d  */
    /* JADX WARN: Code duplicated, block: B:129:0x0180  */
    /* JADX WARN: Code duplicated, block: B:131:0x0183  */
    /* JADX WARN: Code duplicated, block: B:134:0x0188  */
    /* JADX WARN: Code duplicated, block: B:135:0x0191  */
    /* JADX WARN: Code duplicated, block: B:137:0x0197  */
    /* JADX WARN: Code duplicated, block: B:139:0x019f  */
    /* JADX WARN: Code duplicated, block: B:142:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:146:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:148:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:151:0x0204  */
    /* JADX WARN: Code duplicated, block: B:152:0x0211  */
    /* JADX WARN: Code duplicated, block: B:155:0x0241  */
    /* JADX WARN: Code duplicated, block: B:158:0x0298  */
    /* JADX WARN: Code duplicated, block: B:159:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:162:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:165:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:166:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:169:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:172:0x0302  */
    /* JADX WARN: Code duplicated, block: B:176:0x0312  */
    /* JADX WARN: Code duplicated, block: B:178:0x0316  */
    /* JADX WARN: Code duplicated, block: B:181:0x0336  */
    /* JADX WARN: Code duplicated, block: B:182:0x0339  */
    /* JADX WARN: Code duplicated, block: B:185:0x039a  */
    /* JADX WARN: Code duplicated, block: B:187:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:190:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:192:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:195:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:197:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:200:0x041a  */
    /* JADX WARN: Code duplicated, block: B:202:0x0427  */
    /* JADX WARN: Code duplicated, block: B:205:0x0439  */
    /* JADX WARN: Code duplicated, block: B:207:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0099  */
    /* JADX WARN: Code duplicated, block: B:58:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:82:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:94:0x0101 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:97:0x0108  */
    public static final void NavigationBarItem(final RowScope rowScope, final boolean z, final ll3<j59> ll3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var, Modifier modifier, boolean z2, bm3<? super Composer, ? super Integer, j59> bm3Var2, boolean z3, NavigationBarItemColors navigationBarItemColors, MutableInteractionSource mutableInteractionSource, Composer composer, final int i, final int i2) {
        int i3;
        ll3<j59> ll3Var2;
        final Modifier modifier2;
        int i4;
        boolean z4;
        int i5;
        int i6;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        int i7;
        int i8;
        boolean z5;
        char c;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z6;
        final NavigationBarItemColors navigationBarItemColors2;
        Composer composer2;
        final boolean z7;
        final boolean z8;
        final bm3<? super Composer, ? super Integer, j59> bm3Var4;
        final MutableInteractionSource mutableInteractionSource2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        NavigationBarItemColors navigationBarItemColorsColors;
        int i13;
        MutableInteractionSource mutableInteractionSource3;
        Modifier modifier3;
        bm3<? super Composer, ? super Integer, j59> bm3Var5;
        int i14;
        NavigationBarItemColors navigationBarItemColors3;
        MutableInteractionSource mutableInteractionSource4;
        final FiniteAnimationSpec finiteAnimationSpecValue;
        MutableInteractionSource mutableInteractionSource5;
        bm3<? super Composer, ? super Integer, j59> bm3Var6;
        ComposableLambda composableLambda;
        Object objRememberedValue;
        Composer.Companion companion;
        MutableIntState mutableIntState;
        Object objRememberedValue2;
        int i15;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        MutableIntState mutableIntState2;
        float f;
        State<Float> stateAnimateFloatAsState;
        float f2;
        State<Float> stateAnimateFloatAsState2;
        long jM5979constructorimpl;
        boolean zChanged;
        Object objRememberedValue3;
        int i16;
        boolean zChanged2;
        Object objRememberedValue4;
        boolean zChanged3;
        Object objRememberedValue5;
        Object objRememberedValue6;
        Composer composerStartRestartGroup = composer.startRestartGroup(974293026);
        if ((Integer.MIN_VALUE & i2) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(rowScope) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 1) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i2 & 2) != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            ll3Var2 = ll3Var;
        } else {
            ll3Var2 = ll3Var;
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 256 : 128;
            }
        }
        if ((i2 & 4) != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 2048 : 1024;
        }
        int i17 = i2 & 8;
        if (i17 == 0) {
            if ((i & 24576) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 16384 : 8192;
            }
            i4 = i2 & 16;
            if (i4 != 0) {
                if ((196608 & i) == 0) {
                    z4 = z2;
                    if (composerStartRestartGroup.changed(z4)) {
                        i5 = 131072;
                    } else {
                        i5 = 65536;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((1572864 & i) == 0) {
                        bm3Var3 = bm3Var2;
                        if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                            i7 = 1048576;
                        } else {
                            i7 = 524288;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 64;
                    if (i8 != 0) {
                        z5 = z3;
                        if ((i & 12582912) == 0) {
                            c = ' ';
                            if (composerStartRestartGroup.changed(z5)) {
                                i9 = 8388608;
                            } else {
                                i9 = 4194304;
                            }
                            i3 |= i9;
                        }
                        if ((i & 100663296) != 0) {
                            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                        }
                        i10 = i2 & 256;
                        if (i10 != 0) {
                            if ((i & 805306368) == 0) {
                                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                    i11 = 536870912;
                                } else {
                                    i11 = 268435456;
                                }
                                i3 |= i11;
                            }
                            i12 = i3;
                            if ((i3 & 306783379) != 306783378) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                    if (i17 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        z4 = true;
                                    }
                                    if (i6 != 0) {
                                        bm3Var3 = null;
                                    }
                                    if (i8 != 0) {
                                        z5 = true;
                                    }
                                    if ((i2 & 128) != 0) {
                                        navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                        i13 = i12 & (-234881025);
                                    } else {
                                        navigationBarItemColorsColors = navigationBarItemColors;
                                        i13 = i12;
                                    }
                                    if (i10 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    modifier3 = modifier2;
                                    bm3Var5 = bm3Var3;
                                    i14 = i13;
                                    navigationBarItemColors3 = navigationBarItemColorsColors;
                                } else {
                                    composerStartRestartGroup.skipToGroupEnd();
                                    if ((i2 & 128) != 0) {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                        z4 = z4;
                                        z5 = z5;
                                        modifier3 = modifier2;
                                        bm3Var5 = bm3Var3;
                                        i14 = i12 & (-234881025);
                                        navigationBarItemColors3 = navigationBarItemColors;
                                    } else {
                                        navigationBarItemColors3 = navigationBarItemColors;
                                        mutableInteractionSource3 = mutableInteractionSource;
                                        z4 = z4;
                                        z5 = z5;
                                        modifier3 = modifier2;
                                        bm3Var5 = bm3Var3;
                                        i14 = i12;
                                    }
                                }
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                                }
                                if (mutableInteractionSource3 == null) {
                                    composerStartRestartGroup.startReplaceGroup(-224963495);
                                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                        objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                                    }
                                    composerStartRestartGroup.endReplaceGroup();
                                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(-7257538);
                                    composerStartRestartGroup.endReplaceGroup();
                                    mutableInteractionSource4 = mutableInteractionSource3;
                                }
                                MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.DefaultEffects;
                                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
                                mutableInteractionSource5 = mutableInteractionSource4;
                                boolean z9 = z5;
                                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                                if (bm3Var5 == null) {
                                    composerStartRestartGroup.startReplaceGroup(-224036658);
                                    composerStartRestartGroup.endReplaceGroup();
                                    bm3Var6 = bm3Var5;
                                    composableLambda = null;
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(-224036657);
                                    final NavigationBarItemColors navigationBarItemColors4 = navigationBarItemColors3;
                                    final boolean z10 = z4;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var5;
                                    bm3Var6 = bm3Var7;
                                    ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                        private static final long invoke$lambda$0(State<Color> state) {
                                            return state.getValue().m6242unboximpl();
                                        }

                                        public final void invoke(Composer composer3, int i18) {
                                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                            }
                                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors4.m3644textColorWaAFU9c$material3(z, z10), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var7, composer3, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                            invoke(composer3, num.intValue());
                                            return j59.a;
                                        }
                                    }, composerStartRestartGroup, 54);
                                    composerStartRestartGroup.endReplaceGroup();
                                    composableLambda = composableLambdaRememberComposableLambda2;
                                }
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                companion = Composer.Companion;
                                if (objRememberedValue == companion.getEmpty()) {
                                    objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                mutableIntState = (MutableIntState) objRememberedValue;
                                boolean z11 = z4;
                                Modifier modifier4 = modifier3;
                                ComposableLambda composableLambda2 = composableLambda;
                                Modifier modifierWeight$default = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z, mutableInteractionSource5, null, z11, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == companion.getEmpty()) {
                                    i15 = 0;
                                    objRememberedValue2 = new gj5(mutableIntState, i15);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    i15 = 0;
                                }
                                Modifier modifierOnSizeChanged = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default, (nl3) objRememberedValue2);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                                CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged);
                                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                NavigationBarItemColors navigationBarItemColors5 = navigationBarItemColors3;
                                constructor = companion2.getConstructor();
                                if (composerStartRestartGroup.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composerStartRestartGroup.startReusableNode();
                                if (composerStartRestartGroup.getInserting()) {
                                    composerStartRestartGroup.createNode(constructor);
                                } else {
                                    composerStartRestartGroup.useNode();
                                }
                                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                                bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting()) {
                                    mutableIntState2 = mutableIntState;
                                } else {
                                    mutableIntState2 = mutableIntState;
                                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    if (z) {
                                        f = 1.0f;
                                    } else {
                                        f = 0.0f;
                                    }
                                    MutableIntState mutableIntState3 = mutableIntState2;
                                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                    if (z) {
                                        f2 = 1.0f;
                                    } else {
                                        f2 = 0.0f;
                                    }
                                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                    Density density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState3.getIntValue() - density.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                                    j59 j59Var = j59.a;
                                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                    if (zChanged || objRememberedValue3 == companion.getEmpty()) {
                                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                    }
                                    final MappedInteractionSource mappedInteractionSource = (MappedInteractionSource) objRememberedValue3;
                                    i16 = 1;
                                    ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                        public final void invoke(Composer composer3, int i18) {
                                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                            }
                                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                            invoke(composer3, num.intValue());
                                            return j59.a;
                                        }
                                    }, composerStartRestartGroup, 54);
                                    ComposableLambda composableLambdaRememberComposableLambda4 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors5), composerStartRestartGroup, 54);
                                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                                    if (zChanged2 || objRememberedValue4 == companion.getEmpty()) {
                                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                    }
                                    ll3 ll3Var3 = (ll3) objRememberedValue4;
                                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                                    if (zChanged3 || objRememberedValue5 == companion.getEmpty()) {
                                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                    }
                                    NavigationBarItemLayout(composableLambdaRememberComposableLambda3, composableLambdaRememberComposableLambda4, composableLambdaRememberComposableLambda, composableLambda2, z9, ll3Var3, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                                    composerStartRestartGroup.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    navigationBarItemColors2 = navigationBarItemColors5;
                                    z8 = z9;
                                    composer2 = composerStartRestartGroup;
                                    modifier2 = modifier4;
                                    mutableInteractionSource2 = mutableInteractionSource3;
                                    bm3Var4 = bm3Var6;
                                    z7 = z11;
                                }
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                                if (z) {
                                    f = 1.0f;
                                } else {
                                    f = 0.0f;
                                }
                                MutableIntState mutableIntState4 = mutableIntState2;
                                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                if (z) {
                                    f2 = 1.0f;
                                } else {
                                    f2 = 0.0f;
                                }
                                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                Density density2 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState4.getIntValue() - density2.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density2.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                                j59 j59Var2 = j59.a;
                                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                if (zChanged) {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                } else {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                }
                                final MappedInteractionSource mappedInteractionSource2 = (MappedInteractionSource) objRememberedValue3;
                                i16 = 1;
                                ComposableLambda composableLambdaRememberComposableLambda5 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                    public final void invoke(Composer composer3, int i18) {
                                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                        }
                                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                ComposableLambda composableLambdaRememberComposableLambda6 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors5), composerStartRestartGroup, 54);
                                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                                if (zChanged2) {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                } else {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                }
                                ll3 ll3Var4 = (ll3) objRememberedValue4;
                                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                                if (zChanged3) {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                } else {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                }
                                NavigationBarItemLayout(composableLambdaRememberComposableLambda5, composableLambdaRememberComposableLambda6, composableLambdaRememberComposableLambda, composableLambda2, z9, ll3Var4, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                                composerStartRestartGroup.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                navigationBarItemColors2 = navigationBarItemColors5;
                                z8 = z9;
                                composer2 = composerStartRestartGroup;
                                modifier2 = modifier4;
                                mutableInteractionSource2 = mutableInteractionSource3;
                                bm3Var4 = bm3Var6;
                                z7 = z11;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                navigationBarItemColors2 = navigationBarItemColors;
                                composer2 = composerStartRestartGroup;
                                z7 = z4;
                                z8 = z5;
                                bm3Var4 = bm3Var3;
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 805306368;
                        i12 = i3;
                        if ((i3 & 306783379) != 306783378) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i17 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z4 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if (i8 != 0) {
                                    z5 = true;
                                }
                                if ((i2 & 128) != 0) {
                                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i13 = i12 & (-234881025);
                                } else {
                                    navigationBarItemColorsColors = navigationBarItemColors;
                                    i13 = i12;
                                }
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                modifier3 = modifier2;
                                bm3Var5 = bm3Var3;
                                i14 = i13;
                                navigationBarItemColors3 = navigationBarItemColorsColors;
                            } else {
                                if (i17 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z4 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if (i8 != 0) {
                                    z5 = true;
                                }
                                if ((i2 & 128) != 0) {
                                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i13 = i12 & (-234881025);
                                } else {
                                    navigationBarItemColorsColors = navigationBarItemColors;
                                    i13 = i12;
                                }
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                modifier3 = modifier2;
                                bm3Var5 = bm3Var3;
                                i14 = i13;
                                navigationBarItemColors3 = navigationBarItemColorsColors;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(-224963495);
                                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                    objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-7257538);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            MotionSchemeKeyTokens motionSchemeKeyTokens2 = MotionSchemeKeyTokens.DefaultEffects;
                            finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens2, composerStartRestartGroup, 6);
                            mutableInteractionSource5 = mutableInteractionSource4;
                            boolean z12 = z5;
                            ComposableLambda composableLambdaRememberComposableLambda7 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                            if (bm3Var5 == null) {
                                composerStartRestartGroup.startReplaceGroup(-224036658);
                                composerStartRestartGroup.endReplaceGroup();
                                bm3Var6 = bm3Var5;
                                composableLambda = null;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-224036657);
                                final NavigationBarItemColors navigationBarItemColors6 = navigationBarItemColors3;
                                final boolean z13 = z4;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var5;
                                bm3Var6 = bm3Var8;
                                ComposableLambda composableLambdaRememberComposableLambda8 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                    private static final long invoke$lambda$0(State<Color> state) {
                                        return state.getValue().m6242unboximpl();
                                    }

                                    public final void invoke(Composer composer3, int i18) {
                                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                        }
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors6.m3644textColorWaAFU9c$material3(z, z13), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var8, composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                composerStartRestartGroup.endReplaceGroup();
                                composableLambda = composableLambdaRememberComposableLambda8;
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            mutableIntState = (MutableIntState) objRememberedValue;
                            boolean z14 = z4;
                            Modifier modifier5 = modifier3;
                            ComposableLambda composableLambda3 = composableLambda;
                            Modifier modifierWeight$default2 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier5, z, mutableInteractionSource5, null, z14, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == companion.getEmpty()) {
                                i15 = 0;
                                objRememberedValue2 = new gj5(mutableIntState, i15);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                i15 = 0;
                            }
                            Modifier modifierOnSizeChanged2 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default2, (nl3) objRememberedValue2);
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged2);
                            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                            NavigationBarItemColors navigationBarItemColors7 = navigationBarItemColors3;
                            constructor = companion3.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3 bm3VarB2 = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
                            if (composerM5355constructorimpl.getInserting()) {
                                mutableIntState2 = mutableIntState;
                                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                                if (z) {
                                    f = 1.0f;
                                } else {
                                    f = 0.0f;
                                }
                                MutableIntState mutableIntState5 = mutableIntState2;
                                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens2, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                if (z) {
                                    f2 = 1.0f;
                                } else {
                                    f2 = 0.0f;
                                }
                                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                Density density3 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState5.getIntValue() - density3.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density3.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                                j59 j59Var3 = j59.a;
                                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                if (zChanged) {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                } else {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                }
                                final MappedInteractionSource mappedInteractionSource3 = (MappedInteractionSource) objRememberedValue3;
                                i16 = 1;
                                ComposableLambda composableLambdaRememberComposableLambda9 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                    public final void invoke(Composer composer3, int i18) {
                                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                        }
                                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource3, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                ComposableLambda composableLambdaRememberComposableLambda10 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors7), composerStartRestartGroup, 54);
                                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                                if (zChanged2) {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                } else {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                }
                                ll3 ll3Var5 = (ll3) objRememberedValue4;
                                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                                if (zChanged3) {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                } else {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                }
                                NavigationBarItemLayout(composableLambdaRememberComposableLambda9, composableLambdaRememberComposableLambda10, composableLambdaRememberComposableLambda7, composableLambda3, z12, ll3Var5, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                                composerStartRestartGroup.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                navigationBarItemColors2 = navigationBarItemColors7;
                                z8 = z12;
                                composer2 = composerStartRestartGroup;
                                modifier2 = modifier5;
                                mutableInteractionSource2 = mutableInteractionSource3;
                                bm3Var4 = bm3Var6;
                                z7 = z14;
                            } else {
                                mutableIntState2 = mutableIntState;
                            }
                            dc.b(bm3VarB2, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                            BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState6 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens2, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density4 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState6.getIntValue() - density4.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density4.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var4 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource4 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda11 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda12 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors7), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var6 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda11, composableLambdaRememberComposableLambda12, composableLambdaRememberComposableLambda7, composableLambda3, z12, ll3Var6, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors7;
                            z8 = z12;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier5;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z14;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            navigationBarItemColors2 = navigationBarItemColors;
                            composer2 = composerStartRestartGroup;
                            z7 = z4;
                            z8 = z5;
                            bm3Var4 = bm3Var3;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    z5 = z3;
                    c = ' ';
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i11 = 536870912;
                            } else {
                                i11 = 268435456;
                            }
                            i3 |= i11;
                        }
                        i12 = i3;
                        if ((i3 & 306783379) != 306783378) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i17 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z4 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if (i8 != 0) {
                                    z5 = true;
                                }
                                if ((i2 & 128) != 0) {
                                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i13 = i12 & (-234881025);
                                } else {
                                    navigationBarItemColorsColors = navigationBarItemColors;
                                    i13 = i12;
                                }
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                modifier3 = modifier2;
                                bm3Var5 = bm3Var3;
                                i14 = i13;
                                navigationBarItemColors3 = navigationBarItemColorsColors;
                            } else {
                                if (i17 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z4 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if (i8 != 0) {
                                    z5 = true;
                                }
                                if ((i2 & 128) != 0) {
                                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i13 = i12 & (-234881025);
                                } else {
                                    navigationBarItemColorsColors = navigationBarItemColors;
                                    i13 = i12;
                                }
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                modifier3 = modifier2;
                                bm3Var5 = bm3Var3;
                                i14 = i13;
                                navigationBarItemColors3 = navigationBarItemColorsColors;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(-224963495);
                                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                    objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-7257538);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            MotionSchemeKeyTokens motionSchemeKeyTokens3 = MotionSchemeKeyTokens.DefaultEffects;
                            finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens3, composerStartRestartGroup, 6);
                            mutableInteractionSource5 = mutableInteractionSource4;
                            boolean z15 = z5;
                            ComposableLambda composableLambdaRememberComposableLambda13 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                            if (bm3Var5 == null) {
                                composerStartRestartGroup.startReplaceGroup(-224036658);
                                composerStartRestartGroup.endReplaceGroup();
                                bm3Var6 = bm3Var5;
                                composableLambda = null;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-224036657);
                                final NavigationBarItemColors navigationBarItemColors8 = navigationBarItemColors3;
                                final boolean z16 = z4;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var5;
                                bm3Var6 = bm3Var9;
                                ComposableLambda composableLambdaRememberComposableLambda14 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                    private static final long invoke$lambda$0(State<Color> state) {
                                        return state.getValue().m6242unboximpl();
                                    }

                                    public final void invoke(Composer composer3, int i18) {
                                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                        }
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors8.m3644textColorWaAFU9c$material3(z, z16), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var9, composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                composerStartRestartGroup.endReplaceGroup();
                                composableLambda = composableLambdaRememberComposableLambda14;
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            mutableIntState = (MutableIntState) objRememberedValue;
                            boolean z17 = z4;
                            Modifier modifier6 = modifier3;
                            ComposableLambda composableLambda4 = composableLambda;
                            Modifier modifierWeight$default3 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier6, z, mutableInteractionSource5, null, z17, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == companion.getEmpty()) {
                                i15 = 0;
                                objRememberedValue2 = new gj5(mutableIntState, i15);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                i15 = 0;
                            }
                            Modifier modifierOnSizeChanged3 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default3, (nl3) objRememberedValue2);
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                            CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged3);
                            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                            NavigationBarItemColors navigationBarItemColors9 = navigationBarItemColors3;
                            constructor = companion4.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap3);
                            if (composerM5355constructorimpl.getInserting()) {
                                mutableIntState2 = mutableIntState;
                                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion4.getSetModifier());
                                BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                                if (z) {
                                    f = 1.0f;
                                } else {
                                    f = 0.0f;
                                }
                                MutableIntState mutableIntState7 = mutableIntState2;
                                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens3, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                if (z) {
                                    f2 = 1.0f;
                                } else {
                                    f2 = 0.0f;
                                }
                                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                Density density5 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState7.getIntValue() - density5.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density5.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                                j59 j59Var5 = j59.a;
                                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                if (zChanged) {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                } else {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                }
                                final MappedInteractionSource mappedInteractionSource5 = (MappedInteractionSource) objRememberedValue3;
                                i16 = 1;
                                ComposableLambda composableLambdaRememberComposableLambda15 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                    public final void invoke(Composer composer3, int i18) {
                                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                        }
                                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource5, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                ComposableLambda composableLambdaRememberComposableLambda16 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors9), composerStartRestartGroup, 54);
                                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                                if (zChanged2) {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                } else {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                }
                                ll3 ll3Var7 = (ll3) objRememberedValue4;
                                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                                if (zChanged3) {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                } else {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                }
                                NavigationBarItemLayout(composableLambdaRememberComposableLambda15, composableLambdaRememberComposableLambda16, composableLambdaRememberComposableLambda13, composableLambda4, z15, ll3Var7, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                                composerStartRestartGroup.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                navigationBarItemColors2 = navigationBarItemColors9;
                                z8 = z15;
                                composer2 = composerStartRestartGroup;
                                modifier2 = modifier6;
                                mutableInteractionSource2 = mutableInteractionSource3;
                                bm3Var4 = bm3Var6;
                                z7 = z17;
                            } else {
                                mutableIntState2 = mutableIntState;
                            }
                            dc.b(bm3VarB3, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion4.getSetModifier());
                            BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState8 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens3, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density6 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState8.getIntValue() - density6.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density6.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var6 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource6 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda17 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource6, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda18 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors9), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var8 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda17, composableLambdaRememberComposableLambda18, composableLambdaRememberComposableLambda13, composableLambda4, z15, ll3Var8, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors9;
                            z8 = z15;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier6;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z17;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            navigationBarItemColors2 = navigationBarItemColors;
                            composer2 = composerStartRestartGroup;
                            z7 = z4;
                            z8 = z5;
                            bm3Var4 = bm3Var3;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 805306368;
                    i12 = i3;
                    if ((i3 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        } else {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224963495);
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-7257538);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens4 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens4, composerStartRestartGroup, 6);
                        mutableInteractionSource5 = mutableInteractionSource4;
                        boolean z18 = z5;
                        ComposableLambda composableLambdaRememberComposableLambda19 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                        if (bm3Var5 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224036658);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var6 = bm3Var5;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-224036657);
                            final NavigationBarItemColors navigationBarItemColors10 = navigationBarItemColors3;
                            final boolean z19 = z4;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var5;
                            bm3Var6 = bm3Var10;
                            ComposableLambda composableLambdaRememberComposableLambda110 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors10.m3644textColorWaAFU9c$material3(z, z19), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var10, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda110;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableIntState = (MutableIntState) objRememberedValue;
                        boolean z110 = z4;
                        Modifier modifier7 = modifier3;
                        ComposableLambda composableLambda5 = composableLambda;
                        Modifier modifierWeight$default4 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier7, z, mutableInteractionSource5, null, z110, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            i15 = 0;
                            objRememberedValue2 = new gj5(mutableIntState, i15);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            i15 = 0;
                        }
                        Modifier modifierOnSizeChanged4 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default4, (nl3) objRememberedValue2);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                        CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged4);
                        ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                        NavigationBarItemColors navigationBarItemColors11 = navigationBarItemColors3;
                        constructor = companion5.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB4 = cc.b(companion5, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl, currentCompositionLocalMap4);
                        if (composerM5355constructorimpl.getInserting()) {
                            mutableIntState2 = mutableIntState;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion5.getSetModifier());
                            BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState9 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens4, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density7 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState9.getIntValue() - density7.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density7.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var7 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource7 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource7, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var9 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda111, composableLambdaRememberComposableLambda112, composableLambdaRememberComposableLambda19, composableLambda5, z18, ll3Var9, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors11;
                            z8 = z18;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier7;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z110;
                        } else {
                            mutableIntState2 = mutableIntState;
                        }
                        dc.b(bm3VarB4, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion5.getSetModifier());
                        BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState10 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens4, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density8 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState10.getIntValue() - density8.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density8.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var8 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource8 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource8, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var10 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda113, composableLambdaRememberComposableLambda114, composableLambdaRememberComposableLambda19, composableLambda5, z18, ll3Var10, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors11;
                        z8 = z18;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier7;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z110;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        navigationBarItemColors2 = navigationBarItemColors;
                        composer2 = composerStartRestartGroup;
                        z7 = z4;
                        z8 = z5;
                        bm3Var4 = bm3Var3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                bm3Var3 = bm3Var2;
                i8 = i2 & 64;
                if (i8 != 0) {
                    z5 = z3;
                    if ((i & 12582912) == 0) {
                        c = ' ';
                        if (composerStartRestartGroup.changed(z5)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i11 = 536870912;
                            } else {
                                i11 = 268435456;
                            }
                            i3 |= i11;
                        }
                        i12 = i3;
                        if ((i3 & 306783379) != 306783378) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i17 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z4 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if (i8 != 0) {
                                    z5 = true;
                                }
                                if ((i2 & 128) != 0) {
                                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i13 = i12 & (-234881025);
                                } else {
                                    navigationBarItemColorsColors = navigationBarItemColors;
                                    i13 = i12;
                                }
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                modifier3 = modifier2;
                                bm3Var5 = bm3Var3;
                                i14 = i13;
                                navigationBarItemColors3 = navigationBarItemColorsColors;
                            } else {
                                if (i17 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z4 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if (i8 != 0) {
                                    z5 = true;
                                }
                                if ((i2 & 128) != 0) {
                                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i13 = i12 & (-234881025);
                                } else {
                                    navigationBarItemColorsColors = navigationBarItemColors;
                                    i13 = i12;
                                }
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                modifier3 = modifier2;
                                bm3Var5 = bm3Var3;
                                i14 = i13;
                                navigationBarItemColors3 = navigationBarItemColorsColors;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(-224963495);
                                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                    objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-7257538);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            MotionSchemeKeyTokens motionSchemeKeyTokens5 = MotionSchemeKeyTokens.DefaultEffects;
                            finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens5, composerStartRestartGroup, 6);
                            mutableInteractionSource5 = mutableInteractionSource4;
                            boolean z111 = z5;
                            ComposableLambda composableLambdaRememberComposableLambda115 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                            if (bm3Var5 == null) {
                                composerStartRestartGroup.startReplaceGroup(-224036658);
                                composerStartRestartGroup.endReplaceGroup();
                                bm3Var6 = bm3Var5;
                                composableLambda = null;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-224036657);
                                final NavigationBarItemColors navigationBarItemColors12 = navigationBarItemColors3;
                                final boolean z112 = z4;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var5;
                                bm3Var6 = bm3Var11;
                                ComposableLambda composableLambdaRememberComposableLambda116 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                    private static final long invoke$lambda$0(State<Color> state) {
                                        return state.getValue().m6242unboximpl();
                                    }

                                    public final void invoke(Composer composer3, int i18) {
                                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                        }
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors12.m3644textColorWaAFU9c$material3(z, z112), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var11, composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                composerStartRestartGroup.endReplaceGroup();
                                composableLambda = composableLambdaRememberComposableLambda116;
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            mutableIntState = (MutableIntState) objRememberedValue;
                            boolean z113 = z4;
                            Modifier modifier8 = modifier3;
                            ComposableLambda composableLambda6 = composableLambda;
                            Modifier modifierWeight$default5 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier8, z, mutableInteractionSource5, null, z113, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == companion.getEmpty()) {
                                i15 = 0;
                                objRememberedValue2 = new gj5(mutableIntState, i15);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                i15 = 0;
                            }
                            Modifier modifierOnSizeChanged5 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default5, (nl3) objRememberedValue2);
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                            CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged5);
                            ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                            NavigationBarItemColors navigationBarItemColors13 = navigationBarItemColors3;
                            constructor = companion6.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3 bm3VarB5 = cc.b(companion6, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy5, composerM5355constructorimpl, currentCompositionLocalMap5);
                            if (composerM5355constructorimpl.getInserting()) {
                                mutableIntState2 = mutableIntState;
                                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier5, companion6.getSetModifier());
                                BoxScopeInstance boxScopeInstance9 = BoxScopeInstance.INSTANCE;
                                if (z) {
                                    f = 1.0f;
                                } else {
                                    f = 0.0f;
                                }
                                MutableIntState mutableIntState11 = mutableIntState2;
                                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens5, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                if (z) {
                                    f2 = 1.0f;
                                } else {
                                    f2 = 0.0f;
                                }
                                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                Density density9 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState11.getIntValue() - density9.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density9.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                                j59 j59Var9 = j59.a;
                                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                if (zChanged) {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                } else {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                }
                                final MappedInteractionSource mappedInteractionSource9 = (MappedInteractionSource) objRememberedValue3;
                                i16 = 1;
                                ComposableLambda composableLambdaRememberComposableLambda117 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                    public final void invoke(Composer composer3, int i18) {
                                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                        }
                                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource9, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                ComposableLambda composableLambdaRememberComposableLambda118 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors13), composerStartRestartGroup, 54);
                                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                                if (zChanged2) {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                } else {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                }
                                ll3 ll3Var11 = (ll3) objRememberedValue4;
                                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                                if (zChanged3) {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                } else {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                }
                                NavigationBarItemLayout(composableLambdaRememberComposableLambda117, composableLambdaRememberComposableLambda118, composableLambdaRememberComposableLambda115, composableLambda6, z111, ll3Var11, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                                composerStartRestartGroup.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                navigationBarItemColors2 = navigationBarItemColors13;
                                z8 = z111;
                                composer2 = composerStartRestartGroup;
                                modifier2 = modifier8;
                                mutableInteractionSource2 = mutableInteractionSource3;
                                bm3Var4 = bm3Var6;
                                z7 = z113;
                            } else {
                                mutableIntState2 = mutableIntState;
                            }
                            dc.b(bm3VarB5, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier5, companion6.getSetModifier());
                            BoxScopeInstance boxScopeInstance10 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState12 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens5, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density10 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState12.getIntValue() - density10.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density10.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var10 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource10 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource10, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda1110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors13), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var12 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda119, composableLambdaRememberComposableLambda1110, composableLambdaRememberComposableLambda115, composableLambda6, z111, ll3Var12, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors13;
                            z8 = z111;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier8;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z113;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            navigationBarItemColors2 = navigationBarItemColors;
                            composer2 = composerStartRestartGroup;
                            z7 = z4;
                            z8 = z5;
                            bm3Var4 = bm3Var3;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 805306368;
                    i12 = i3;
                    if ((i3 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        } else {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224963495);
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-7257538);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens6 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens6, composerStartRestartGroup, 6);
                        mutableInteractionSource5 = mutableInteractionSource4;
                        boolean z114 = z5;
                        ComposableLambda composableLambdaRememberComposableLambda1111 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                        if (bm3Var5 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224036658);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var6 = bm3Var5;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-224036657);
                            final NavigationBarItemColors navigationBarItemColors14 = navigationBarItemColors3;
                            final boolean z115 = z4;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var12 = bm3Var5;
                            bm3Var6 = bm3Var12;
                            ComposableLambda composableLambdaRememberComposableLambda1112 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors14.m3644textColorWaAFU9c$material3(z, z115), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var12, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda1112;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableIntState = (MutableIntState) objRememberedValue;
                        boolean z116 = z4;
                        Modifier modifier9 = modifier3;
                        ComposableLambda composableLambda7 = composableLambda;
                        Modifier modifierWeight$default6 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier9, z, mutableInteractionSource5, null, z116, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            i15 = 0;
                            objRememberedValue2 = new gj5(mutableIntState, i15);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            i15 = 0;
                        }
                        Modifier modifierOnSizeChanged6 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default6, (nl3) objRememberedValue2);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                        CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged6);
                        ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                        NavigationBarItemColors navigationBarItemColors15 = navigationBarItemColors3;
                        constructor = companion7.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB6 = cc.b(companion7, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy6, composerM5355constructorimpl, currentCompositionLocalMap6);
                        if (composerM5355constructorimpl.getInserting()) {
                            mutableIntState2 = mutableIntState;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier6, companion7.getSetModifier());
                            BoxScopeInstance boxScopeInstance11 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState13 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens6, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density11 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState13.getIntValue() - density11.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density11.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var11 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource11 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda1113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource11, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda1114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors15), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var13 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda1113, composableLambdaRememberComposableLambda1114, composableLambdaRememberComposableLambda1111, composableLambda7, z114, ll3Var13, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors15;
                            z8 = z114;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier9;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z116;
                        } else {
                            mutableIntState2 = mutableIntState;
                        }
                        dc.b(bm3VarB6, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier6, companion7.getSetModifier());
                        BoxScopeInstance boxScopeInstance12 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState14 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens6, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density12 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState14.getIntValue() - density12.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density12.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var12 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource12 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda1115 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource12, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda1116 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors15), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var14 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda1115, composableLambdaRememberComposableLambda1116, composableLambdaRememberComposableLambda1111, composableLambda7, z114, ll3Var14, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors15;
                        z8 = z114;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier9;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z116;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        navigationBarItemColors2 = navigationBarItemColors;
                        composer2 = composerStartRestartGroup;
                        z7 = z4;
                        z8 = z5;
                        bm3Var4 = bm3Var3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                z5 = z3;
                c = ' ';
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    i12 = i3;
                    if ((i3 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        } else {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224963495);
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-7257538);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens7 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens7, composerStartRestartGroup, 6);
                        mutableInteractionSource5 = mutableInteractionSource4;
                        boolean z117 = z5;
                        ComposableLambda composableLambdaRememberComposableLambda1117 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                        if (bm3Var5 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224036658);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var6 = bm3Var5;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-224036657);
                            final NavigationBarItemColors navigationBarItemColors16 = navigationBarItemColors3;
                            final boolean z118 = z4;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var13 = bm3Var5;
                            bm3Var6 = bm3Var13;
                            ComposableLambda composableLambdaRememberComposableLambda1118 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors16.m3644textColorWaAFU9c$material3(z, z118), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var13, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda1118;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableIntState = (MutableIntState) objRememberedValue;
                        boolean z119 = z4;
                        Modifier modifier10 = modifier3;
                        ComposableLambda composableLambda8 = composableLambda;
                        Modifier modifierWeight$default7 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier10, z, mutableInteractionSource5, null, z119, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            i15 = 0;
                            objRememberedValue2 = new gj5(mutableIntState, i15);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            i15 = 0;
                        }
                        Modifier modifierOnSizeChanged7 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default7, (nl3) objRememberedValue2);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                        CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged7);
                        ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                        NavigationBarItemColors navigationBarItemColors17 = navigationBarItemColors3;
                        constructor = companion8.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB7 = cc.b(companion8, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy7, composerM5355constructorimpl, currentCompositionLocalMap7);
                        if (composerM5355constructorimpl.getInserting()) {
                            mutableIntState2 = mutableIntState;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier7, companion8.getSetModifier());
                            BoxScopeInstance boxScopeInstance13 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState15 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens7, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density13 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState15.getIntValue() - density13.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density13.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var13 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource13 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda1119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource13, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda11110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors17), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var15 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda1119, composableLambdaRememberComposableLambda11110, composableLambdaRememberComposableLambda1117, composableLambda8, z117, ll3Var15, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors17;
                            z8 = z117;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier10;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z119;
                        } else {
                            mutableIntState2 = mutableIntState;
                        }
                        dc.b(bm3VarB7, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier7, companion8.getSetModifier());
                        BoxScopeInstance boxScopeInstance14 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState16 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens7, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density14 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState16.getIntValue() - density14.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density14.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var14 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource14 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda11111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource14, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda11112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors17), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var16 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda11111, composableLambdaRememberComposableLambda11112, composableLambdaRememberComposableLambda1117, composableLambda8, z117, ll3Var16, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors17;
                        z8 = z117;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier10;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z119;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        navigationBarItemColors2 = navigationBarItemColors;
                        composer2 = composerStartRestartGroup;
                        z7 = z4;
                        z8 = z5;
                        bm3Var4 = bm3Var3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 805306368;
                i12 = i3;
                if ((i3 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224963495);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-7257538);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens8 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens8, composerStartRestartGroup, 6);
                    mutableInteractionSource5 = mutableInteractionSource4;
                    boolean z1110 = z5;
                    ComposableLambda composableLambdaRememberComposableLambda11113 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                    if (bm3Var5 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224036658);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var6 = bm3Var5;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-224036657);
                        final NavigationBarItemColors navigationBarItemColors18 = navigationBarItemColors3;
                        final boolean z1111 = z4;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var14 = bm3Var5;
                        bm3Var6 = bm3Var14;
                        ComposableLambda composableLambdaRememberComposableLambda11114 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors18.m3644textColorWaAFU9c$material3(z, z1111), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var14, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda11114;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableIntState = (MutableIntState) objRememberedValue;
                    boolean z1112 = z4;
                    Modifier modifier11 = modifier3;
                    ComposableLambda composableLambda9 = composableLambda;
                    Modifier modifierWeight$default8 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier11, z, mutableInteractionSource5, null, z1112, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        i15 = 0;
                        objRememberedValue2 = new gj5(mutableIntState, i15);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        i15 = 0;
                    }
                    Modifier modifierOnSizeChanged8 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default8, (nl3) objRememberedValue2);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                    CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged8);
                    ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                    NavigationBarItemColors navigationBarItemColors19 = navigationBarItemColors3;
                    constructor = companion9.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB8 = cc.b(companion9, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy8, composerM5355constructorimpl, currentCompositionLocalMap8);
                    if (composerM5355constructorimpl.getInserting()) {
                        mutableIntState2 = mutableIntState;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion9.getSetModifier());
                        BoxScopeInstance boxScopeInstance15 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState17 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens8, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density15 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState17.getIntValue() - density15.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density15.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var15 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource15 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda11115 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource15, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda11116 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors19), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var17 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda11115, composableLambdaRememberComposableLambda11116, composableLambdaRememberComposableLambda11113, composableLambda9, z1110, ll3Var17, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors19;
                        z8 = z1110;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier11;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z1112;
                    } else {
                        mutableIntState2 = mutableIntState;
                    }
                    dc.b(bm3VarB8, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion9.getSetModifier());
                    BoxScopeInstance boxScopeInstance16 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState18 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens8, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density16 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState18.getIntValue() - density16.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density16.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var16 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource16 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda11117 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource16, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda11118 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors19), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var18 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda11117, composableLambdaRememberComposableLambda11118, composableLambdaRememberComposableLambda11113, composableLambda9, z1110, ll3Var18, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors19;
                    z8 = z1110;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier11;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z1112;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    navigationBarItemColors2 = navigationBarItemColors;
                    composer2 = composerStartRestartGroup;
                    z7 = z4;
                    z8 = z5;
                    bm3Var4 = bm3Var3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z4 = z2;
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((1572864 & i) == 0) {
                    bm3Var3 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i7 = 1048576;
                    } else {
                        i7 = 524288;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    z5 = z3;
                    if ((i & 12582912) == 0) {
                        c = ' ';
                        if (composerStartRestartGroup.changed(z5)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i11 = 536870912;
                            } else {
                                i11 = 268435456;
                            }
                            i3 |= i11;
                        }
                        i12 = i3;
                        if ((i3 & 306783379) != 306783378) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i17 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z4 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if (i8 != 0) {
                                    z5 = true;
                                }
                                if ((i2 & 128) != 0) {
                                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i13 = i12 & (-234881025);
                                } else {
                                    navigationBarItemColorsColors = navigationBarItemColors;
                                    i13 = i12;
                                }
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                modifier3 = modifier2;
                                bm3Var5 = bm3Var3;
                                i14 = i13;
                                navigationBarItemColors3 = navigationBarItemColorsColors;
                            } else {
                                if (i17 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z4 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if (i8 != 0) {
                                    z5 = true;
                                }
                                if ((i2 & 128) != 0) {
                                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i13 = i12 & (-234881025);
                                } else {
                                    navigationBarItemColorsColors = navigationBarItemColors;
                                    i13 = i12;
                                }
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                modifier3 = modifier2;
                                bm3Var5 = bm3Var3;
                                i14 = i13;
                                navigationBarItemColors3 = navigationBarItemColorsColors;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(-224963495);
                                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                    objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-7257538);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            MotionSchemeKeyTokens motionSchemeKeyTokens9 = MotionSchemeKeyTokens.DefaultEffects;
                            finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens9, composerStartRestartGroup, 6);
                            mutableInteractionSource5 = mutableInteractionSource4;
                            boolean z1113 = z5;
                            ComposableLambda composableLambdaRememberComposableLambda11119 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                            if (bm3Var5 == null) {
                                composerStartRestartGroup.startReplaceGroup(-224036658);
                                composerStartRestartGroup.endReplaceGroup();
                                bm3Var6 = bm3Var5;
                                composableLambda = null;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-224036657);
                                final NavigationBarItemColors navigationBarItemColors110 = navigationBarItemColors3;
                                final boolean z1114 = z4;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var15 = bm3Var5;
                                bm3Var6 = bm3Var15;
                                ComposableLambda composableLambdaRememberComposableLambda111110 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                    private static final long invoke$lambda$0(State<Color> state) {
                                        return state.getValue().m6242unboximpl();
                                    }

                                    public final void invoke(Composer composer3, int i18) {
                                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                        }
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors110.m3644textColorWaAFU9c$material3(z, z1114), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var15, composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                composerStartRestartGroup.endReplaceGroup();
                                composableLambda = composableLambdaRememberComposableLambda111110;
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            mutableIntState = (MutableIntState) objRememberedValue;
                            boolean z1115 = z4;
                            Modifier modifier12 = modifier3;
                            ComposableLambda composableLambda10 = composableLambda;
                            Modifier modifierWeight$default9 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier12, z, mutableInteractionSource5, null, z1115, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == companion.getEmpty()) {
                                i15 = 0;
                                objRememberedValue2 = new gj5(mutableIntState, i15);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                i15 = 0;
                            }
                            Modifier modifierOnSizeChanged9 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default9, (nl3) objRememberedValue2);
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy9 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                            CompositionLocalMap currentCompositionLocalMap9 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier9 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged9);
                            ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                            NavigationBarItemColors navigationBarItemColors111 = navigationBarItemColors3;
                            constructor = companion10.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3 bm3VarB9 = cc.b(companion10, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy9, composerM5355constructorimpl, currentCompositionLocalMap9);
                            if (composerM5355constructorimpl.getInserting()) {
                                mutableIntState2 = mutableIntState;
                                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier9, companion10.getSetModifier());
                                BoxScopeInstance boxScopeInstance17 = BoxScopeInstance.INSTANCE;
                                if (z) {
                                    f = 1.0f;
                                } else {
                                    f = 0.0f;
                                }
                                MutableIntState mutableIntState19 = mutableIntState2;
                                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens9, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                if (z) {
                                    f2 = 1.0f;
                                } else {
                                    f2 = 0.0f;
                                }
                                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                Density density17 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState19.getIntValue() - density17.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density17.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                                j59 j59Var17 = j59.a;
                                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                if (zChanged) {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                } else {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                }
                                final MappedInteractionSource mappedInteractionSource17 = (MappedInteractionSource) objRememberedValue3;
                                i16 = 1;
                                ComposableLambda composableLambdaRememberComposableLambda111111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                    public final void invoke(Composer composer3, int i18) {
                                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                        }
                                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource17, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                ComposableLambda composableLambdaRememberComposableLambda111112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111), composerStartRestartGroup, 54);
                                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                                if (zChanged2) {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                } else {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                }
                                ll3 ll3Var19 = (ll3) objRememberedValue4;
                                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                                if (zChanged3) {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                } else {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                }
                                NavigationBarItemLayout(composableLambdaRememberComposableLambda111111, composableLambdaRememberComposableLambda111112, composableLambdaRememberComposableLambda11119, composableLambda10, z1113, ll3Var19, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                                composerStartRestartGroup.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                navigationBarItemColors2 = navigationBarItemColors111;
                                z8 = z1113;
                                composer2 = composerStartRestartGroup;
                                modifier2 = modifier12;
                                mutableInteractionSource2 = mutableInteractionSource3;
                                bm3Var4 = bm3Var6;
                                z7 = z1115;
                            } else {
                                mutableIntState2 = mutableIntState;
                            }
                            dc.b(bm3VarB9, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier9, companion10.getSetModifier());
                            BoxScopeInstance boxScopeInstance18 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState110 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens9, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density18 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState110.getIntValue() - density18.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density18.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var18 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource18 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda111113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource18, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda111114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var110 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda111113, composableLambdaRememberComposableLambda111114, composableLambdaRememberComposableLambda11119, composableLambda10, z1113, ll3Var110, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors111;
                            z8 = z1113;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier12;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z1115;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            navigationBarItemColors2 = navigationBarItemColors;
                            composer2 = composerStartRestartGroup;
                            z7 = z4;
                            z8 = z5;
                            bm3Var4 = bm3Var3;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 805306368;
                    i12 = i3;
                    if ((i3 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        } else {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224963495);
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-7257538);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens10 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens10, composerStartRestartGroup, 6);
                        mutableInteractionSource5 = mutableInteractionSource4;
                        boolean z1116 = z5;
                        ComposableLambda composableLambdaRememberComposableLambda111115 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                        if (bm3Var5 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224036658);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var6 = bm3Var5;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-224036657);
                            final NavigationBarItemColors navigationBarItemColors112 = navigationBarItemColors3;
                            final boolean z1117 = z4;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var16 = bm3Var5;
                            bm3Var6 = bm3Var16;
                            ComposableLambda composableLambdaRememberComposableLambda111116 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors112.m3644textColorWaAFU9c$material3(z, z1117), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var16, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda111116;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableIntState = (MutableIntState) objRememberedValue;
                        boolean z1118 = z4;
                        Modifier modifier13 = modifier3;
                        ComposableLambda composableLambda11 = composableLambda;
                        Modifier modifierWeight$default10 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier13, z, mutableInteractionSource5, null, z1118, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            i15 = 0;
                            objRememberedValue2 = new gj5(mutableIntState, i15);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            i15 = 0;
                        }
                        Modifier modifierOnSizeChanged10 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default10, (nl3) objRememberedValue2);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy10 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                        CompositionLocalMap currentCompositionLocalMap10 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier10 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged10);
                        ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                        NavigationBarItemColors navigationBarItemColors113 = navigationBarItemColors3;
                        constructor = companion11.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB10 = cc.b(companion11, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy10, composerM5355constructorimpl, currentCompositionLocalMap10);
                        if (composerM5355constructorimpl.getInserting()) {
                            mutableIntState2 = mutableIntState;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier10, companion11.getSetModifier());
                            BoxScopeInstance boxScopeInstance19 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState111 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens10, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density19 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState111.getIntValue() - density19.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density19.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var19 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource19 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda111117 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource19, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda111118 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors113), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var111 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda111117, composableLambdaRememberComposableLambda111118, composableLambdaRememberComposableLambda111115, composableLambda11, z1116, ll3Var111, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors113;
                            z8 = z1116;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier13;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z1118;
                        } else {
                            mutableIntState2 = mutableIntState;
                        }
                        dc.b(bm3VarB10, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier10, companion11.getSetModifier());
                        BoxScopeInstance boxScopeInstance110 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState112 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens10, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density110 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState112.getIntValue() - density110.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density110.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var110 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource110 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda111119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource110, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda1111110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors113), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var112 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda111119, composableLambdaRememberComposableLambda1111110, composableLambdaRememberComposableLambda111115, composableLambda11, z1116, ll3Var112, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors113;
                        z8 = z1116;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier13;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z1118;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        navigationBarItemColors2 = navigationBarItemColors;
                        composer2 = composerStartRestartGroup;
                        z7 = z4;
                        z8 = z5;
                        bm3Var4 = bm3Var3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                z5 = z3;
                c = ' ';
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    i12 = i3;
                    if ((i3 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        } else {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224963495);
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-7257538);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens11 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens11, composerStartRestartGroup, 6);
                        mutableInteractionSource5 = mutableInteractionSource4;
                        boolean z1119 = z5;
                        ComposableLambda composableLambdaRememberComposableLambda1111111 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                        if (bm3Var5 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224036658);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var6 = bm3Var5;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-224036657);
                            final NavigationBarItemColors navigationBarItemColors114 = navigationBarItemColors3;
                            final boolean z11110 = z4;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var17 = bm3Var5;
                            bm3Var6 = bm3Var17;
                            ComposableLambda composableLambdaRememberComposableLambda1111112 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors114.m3644textColorWaAFU9c$material3(z, z11110), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var17, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda1111112;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableIntState = (MutableIntState) objRememberedValue;
                        boolean z11111 = z4;
                        Modifier modifier14 = modifier3;
                        ComposableLambda composableLambda12 = composableLambda;
                        Modifier modifierWeight$default11 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier14, z, mutableInteractionSource5, null, z11111, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            i15 = 0;
                            objRememberedValue2 = new gj5(mutableIntState, i15);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            i15 = 0;
                        }
                        Modifier modifierOnSizeChanged11 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default11, (nl3) objRememberedValue2);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy11 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                        CompositionLocalMap currentCompositionLocalMap11 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier11 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged11);
                        ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                        NavigationBarItemColors navigationBarItemColors115 = navigationBarItemColors3;
                        constructor = companion12.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB11 = cc.b(companion12, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy11, composerM5355constructorimpl, currentCompositionLocalMap11);
                        if (composerM5355constructorimpl.getInserting()) {
                            mutableIntState2 = mutableIntState;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier11, companion12.getSetModifier());
                            BoxScopeInstance boxScopeInstance111 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState113 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens11, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density111 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState113.getIntValue() - density111.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density111.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var111 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource111 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda1111113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource111, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda1111114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors115), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var113 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda1111113, composableLambdaRememberComposableLambda1111114, composableLambdaRememberComposableLambda1111111, composableLambda12, z1119, ll3Var113, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors115;
                            z8 = z1119;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier14;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z11111;
                        } else {
                            mutableIntState2 = mutableIntState;
                        }
                        dc.b(bm3VarB11, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier11, companion12.getSetModifier());
                        BoxScopeInstance boxScopeInstance112 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState114 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens11, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density112 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState114.getIntValue() - density112.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density112.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var112 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource112 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda1111115 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource112, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda1111116 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors115), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var114 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda1111115, composableLambdaRememberComposableLambda1111116, composableLambdaRememberComposableLambda1111111, composableLambda12, z1119, ll3Var114, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors115;
                        z8 = z1119;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier14;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z11111;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        navigationBarItemColors2 = navigationBarItemColors;
                        composer2 = composerStartRestartGroup;
                        z7 = z4;
                        z8 = z5;
                        bm3Var4 = bm3Var3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 805306368;
                i12 = i3;
                if ((i3 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224963495);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-7257538);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens12 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens12, composerStartRestartGroup, 6);
                    mutableInteractionSource5 = mutableInteractionSource4;
                    boolean z11112 = z5;
                    ComposableLambda composableLambdaRememberComposableLambda1111117 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                    if (bm3Var5 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224036658);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var6 = bm3Var5;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-224036657);
                        final NavigationBarItemColors navigationBarItemColors116 = navigationBarItemColors3;
                        final boolean z11113 = z4;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var18 = bm3Var5;
                        bm3Var6 = bm3Var18;
                        ComposableLambda composableLambdaRememberComposableLambda1111118 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors116.m3644textColorWaAFU9c$material3(z, z11113), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var18, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda1111118;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableIntState = (MutableIntState) objRememberedValue;
                    boolean z11114 = z4;
                    Modifier modifier15 = modifier3;
                    ComposableLambda composableLambda13 = composableLambda;
                    Modifier modifierWeight$default12 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier15, z, mutableInteractionSource5, null, z11114, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        i15 = 0;
                        objRememberedValue2 = new gj5(mutableIntState, i15);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        i15 = 0;
                    }
                    Modifier modifierOnSizeChanged12 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default12, (nl3) objRememberedValue2);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy12 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                    CompositionLocalMap currentCompositionLocalMap12 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier12 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged12);
                    ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                    NavigationBarItemColors navigationBarItemColors117 = navigationBarItemColors3;
                    constructor = companion13.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB12 = cc.b(companion13, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy12, composerM5355constructorimpl, currentCompositionLocalMap12);
                    if (composerM5355constructorimpl.getInserting()) {
                        mutableIntState2 = mutableIntState;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier12, companion13.getSetModifier());
                        BoxScopeInstance boxScopeInstance113 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState115 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens12, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density113 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState115.getIntValue() - density113.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density113.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var113 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource113 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda1111119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource113, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda11111110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors117), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var115 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda1111119, composableLambdaRememberComposableLambda11111110, composableLambdaRememberComposableLambda1111117, composableLambda13, z11112, ll3Var115, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors117;
                        z8 = z11112;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier15;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z11114;
                    } else {
                        mutableIntState2 = mutableIntState;
                    }
                    dc.b(bm3VarB12, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier12, companion13.getSetModifier());
                    BoxScopeInstance boxScopeInstance114 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState116 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens12, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density114 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState116.getIntValue() - density114.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density114.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var114 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource114 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda11111111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource114, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda11111112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors117), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var116 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda11111111, composableLambdaRememberComposableLambda11111112, composableLambdaRememberComposableLambda1111117, composableLambda13, z11112, ll3Var116, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors117;
                    z8 = z11112;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier15;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z11114;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    navigationBarItemColors2 = navigationBarItemColors;
                    composer2 = composerStartRestartGroup;
                    z7 = z4;
                    z8 = z5;
                    bm3Var4 = bm3Var3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            bm3Var3 = bm3Var2;
            i8 = i2 & 64;
            if (i8 != 0) {
                z5 = z3;
                if ((i & 12582912) == 0) {
                    c = ' ';
                    if (composerStartRestartGroup.changed(z5)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    i12 = i3;
                    if ((i3 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        } else {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224963495);
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-7257538);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens13 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens13, composerStartRestartGroup, 6);
                        mutableInteractionSource5 = mutableInteractionSource4;
                        boolean z11115 = z5;
                        ComposableLambda composableLambdaRememberComposableLambda11111113 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                        if (bm3Var5 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224036658);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var6 = bm3Var5;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-224036657);
                            final NavigationBarItemColors navigationBarItemColors118 = navigationBarItemColors3;
                            final boolean z11116 = z4;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var19 = bm3Var5;
                            bm3Var6 = bm3Var19;
                            ComposableLambda composableLambdaRememberComposableLambda11111114 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors118.m3644textColorWaAFU9c$material3(z, z11116), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var19, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda11111114;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableIntState = (MutableIntState) objRememberedValue;
                        boolean z11117 = z4;
                        Modifier modifier16 = modifier3;
                        ComposableLambda composableLambda14 = composableLambda;
                        Modifier modifierWeight$default13 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier16, z, mutableInteractionSource5, null, z11117, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            i15 = 0;
                            objRememberedValue2 = new gj5(mutableIntState, i15);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            i15 = 0;
                        }
                        Modifier modifierOnSizeChanged13 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default13, (nl3) objRememberedValue2);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy13 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                        CompositionLocalMap currentCompositionLocalMap13 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier13 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged13);
                        ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                        NavigationBarItemColors navigationBarItemColors119 = navigationBarItemColors3;
                        constructor = companion14.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB13 = cc.b(companion14, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy13, composerM5355constructorimpl, currentCompositionLocalMap13);
                        if (composerM5355constructorimpl.getInserting()) {
                            mutableIntState2 = mutableIntState;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier13, companion14.getSetModifier());
                            BoxScopeInstance boxScopeInstance115 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState117 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens13, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density115 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState117.getIntValue() - density115.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density115.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var115 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource115 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda11111115 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource115, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda11111116 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors119), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var117 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda11111115, composableLambdaRememberComposableLambda11111116, composableLambdaRememberComposableLambda11111113, composableLambda14, z11115, ll3Var117, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors119;
                            z8 = z11115;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier16;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z11117;
                        } else {
                            mutableIntState2 = mutableIntState;
                        }
                        dc.b(bm3VarB13, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier13, companion14.getSetModifier());
                        BoxScopeInstance boxScopeInstance116 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState118 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens13, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density116 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState118.getIntValue() - density116.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density116.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var116 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource116 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda11111117 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource116, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda11111118 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors119), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var118 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda11111117, composableLambdaRememberComposableLambda11111118, composableLambdaRememberComposableLambda11111113, composableLambda14, z11115, ll3Var118, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors119;
                        z8 = z11115;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier16;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z11117;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        navigationBarItemColors2 = navigationBarItemColors;
                        composer2 = composerStartRestartGroup;
                        z7 = z4;
                        z8 = z5;
                        bm3Var4 = bm3Var3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 805306368;
                i12 = i3;
                if ((i3 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224963495);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-7257538);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens14 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens14, composerStartRestartGroup, 6);
                    mutableInteractionSource5 = mutableInteractionSource4;
                    boolean z11118 = z5;
                    ComposableLambda composableLambdaRememberComposableLambda11111119 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                    if (bm3Var5 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224036658);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var6 = bm3Var5;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-224036657);
                        final NavigationBarItemColors navigationBarItemColors1110 = navigationBarItemColors3;
                        final boolean z11119 = z4;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var110 = bm3Var5;
                        bm3Var6 = bm3Var110;
                        ComposableLambda composableLambdaRememberComposableLambda111111110 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors1110.m3644textColorWaAFU9c$material3(z, z11119), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var110, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda111111110;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableIntState = (MutableIntState) objRememberedValue;
                    boolean z111110 = z4;
                    Modifier modifier17 = modifier3;
                    ComposableLambda composableLambda15 = composableLambda;
                    Modifier modifierWeight$default14 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier17, z, mutableInteractionSource5, null, z111110, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        i15 = 0;
                        objRememberedValue2 = new gj5(mutableIntState, i15);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        i15 = 0;
                    }
                    Modifier modifierOnSizeChanged14 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default14, (nl3) objRememberedValue2);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy14 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                    CompositionLocalMap currentCompositionLocalMap14 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier14 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged14);
                    ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                    NavigationBarItemColors navigationBarItemColors1111 = navigationBarItemColors3;
                    constructor = companion15.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB14 = cc.b(companion15, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy14, composerM5355constructorimpl, currentCompositionLocalMap14);
                    if (composerM5355constructorimpl.getInserting()) {
                        mutableIntState2 = mutableIntState;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier14, companion15.getSetModifier());
                        BoxScopeInstance boxScopeInstance117 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState119 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens14, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density117 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState119.getIntValue() - density117.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density117.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var117 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource117 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda111111111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource117, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda111111112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1111), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var119 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111, composableLambdaRememberComposableLambda111111112, composableLambdaRememberComposableLambda11111119, composableLambda15, z11118, ll3Var119, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors1111;
                        z8 = z11118;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier17;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z111110;
                    } else {
                        mutableIntState2 = mutableIntState;
                    }
                    dc.b(bm3VarB14, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier14, companion15.getSetModifier());
                    BoxScopeInstance boxScopeInstance118 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState1110 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens14, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density118 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1110.getIntValue() - density118.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density118.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var118 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource118 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda111111113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource118, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda111111114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1111), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var1110 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda111111113, composableLambdaRememberComposableLambda111111114, composableLambdaRememberComposableLambda11111119, composableLambda15, z11118, ll3Var1110, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors1111;
                    z8 = z11118;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier17;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z111110;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    navigationBarItemColors2 = navigationBarItemColors;
                    composer2 = composerStartRestartGroup;
                    z7 = z4;
                    z8 = z5;
                    bm3Var4 = bm3Var3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            z5 = z3;
            c = ' ';
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                i12 = i3;
                if ((i3 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224963495);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-7257538);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens15 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens15, composerStartRestartGroup, 6);
                    mutableInteractionSource5 = mutableInteractionSource4;
                    boolean z111111 = z5;
                    ComposableLambda composableLambdaRememberComposableLambda111111115 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                    if (bm3Var5 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224036658);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var6 = bm3Var5;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-224036657);
                        final NavigationBarItemColors navigationBarItemColors1112 = navigationBarItemColors3;
                        final boolean z111112 = z4;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var111 = bm3Var5;
                        bm3Var6 = bm3Var111;
                        ComposableLambda composableLambdaRememberComposableLambda111111116 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors1112.m3644textColorWaAFU9c$material3(z, z111112), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var111, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda111111116;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableIntState = (MutableIntState) objRememberedValue;
                    boolean z111113 = z4;
                    Modifier modifier18 = modifier3;
                    ComposableLambda composableLambda16 = composableLambda;
                    Modifier modifierWeight$default15 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier18, z, mutableInteractionSource5, null, z111113, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        i15 = 0;
                        objRememberedValue2 = new gj5(mutableIntState, i15);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        i15 = 0;
                    }
                    Modifier modifierOnSizeChanged15 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default15, (nl3) objRememberedValue2);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy15 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                    CompositionLocalMap currentCompositionLocalMap15 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier15 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged15);
                    ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
                    NavigationBarItemColors navigationBarItemColors1113 = navigationBarItemColors3;
                    constructor = companion16.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB15 = cc.b(companion16, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy15, composerM5355constructorimpl, currentCompositionLocalMap15);
                    if (composerM5355constructorimpl.getInserting()) {
                        mutableIntState2 = mutableIntState;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier15, companion16.getSetModifier());
                        BoxScopeInstance boxScopeInstance119 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState1111 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens15, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density119 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1111.getIntValue() - density119.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density119.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var119 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource119 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda111111117 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource119, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda111111118 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1113), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var1111 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda111111117, composableLambdaRememberComposableLambda111111118, composableLambdaRememberComposableLambda111111115, composableLambda16, z111111, ll3Var1111, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors1113;
                        z8 = z111111;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier18;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z111113;
                    } else {
                        mutableIntState2 = mutableIntState;
                    }
                    dc.b(bm3VarB15, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier15, companion16.getSetModifier());
                    BoxScopeInstance boxScopeInstance1110 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState1112 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens15, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density1110 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1112.getIntValue() - density1110.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1110.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var1110 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource1110 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda111111119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1110, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda1111111110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1113), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var1112 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda111111119, composableLambdaRememberComposableLambda1111111110, composableLambdaRememberComposableLambda111111115, composableLambda16, z111111, ll3Var1112, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors1113;
                    z8 = z111111;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier18;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z111113;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    navigationBarItemColors2 = navigationBarItemColors;
                    composer2 = composerStartRestartGroup;
                    z7 = z4;
                    z8 = z5;
                    bm3Var4 = bm3Var3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 805306368;
            i12 = i3;
            if ((i3 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        z5 = true;
                    }
                    if ((i2 & 128) != 0) {
                        navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i13 = i12 & (-234881025);
                    } else {
                        navigationBarItemColorsColors = navigationBarItemColors;
                        i13 = i12;
                    }
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    i14 = i13;
                    navigationBarItemColors3 = navigationBarItemColorsColors;
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        z5 = true;
                    }
                    if ((i2 & 128) != 0) {
                        navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i13 = i12 & (-234881025);
                    } else {
                        navigationBarItemColorsColors = navigationBarItemColors;
                        i13 = i12;
                    }
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    i14 = i13;
                    navigationBarItemColors3 = navigationBarItemColorsColors;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-224963495);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-7257538);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens16 = MotionSchemeKeyTokens.DefaultEffects;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens16, composerStartRestartGroup, 6);
                mutableInteractionSource5 = mutableInteractionSource4;
                boolean z111114 = z5;
                ComposableLambda composableLambdaRememberComposableLambda1111111111 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                if (bm3Var5 == null) {
                    composerStartRestartGroup.startReplaceGroup(-224036658);
                    composerStartRestartGroup.endReplaceGroup();
                    bm3Var6 = bm3Var5;
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-224036657);
                    final NavigationBarItemColors navigationBarItemColors1114 = navigationBarItemColors3;
                    final boolean z111115 = z4;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var112 = bm3Var5;
                    bm3Var6 = bm3Var112;
                    ComposableLambda composableLambdaRememberComposableLambda1111111112 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                        private static final long invoke$lambda$0(State<Color> state) {
                            return state.getValue().m6242unboximpl();
                        }

                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                            }
                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors1114.m3644textColorWaAFU9c$material3(z, z111115), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var112, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = composableLambdaRememberComposableLambda1111111112;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableIntState = (MutableIntState) objRememberedValue;
                boolean z111116 = z4;
                Modifier modifier19 = modifier3;
                ComposableLambda composableLambda17 = composableLambda;
                Modifier modifierWeight$default16 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier19, z, mutableInteractionSource5, null, z111116, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    i15 = 0;
                    objRememberedValue2 = new gj5(mutableIntState, i15);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    i15 = 0;
                }
                Modifier modifierOnSizeChanged16 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default16, (nl3) objRememberedValue2);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy16 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                CompositionLocalMap currentCompositionLocalMap16 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier16 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged16);
                ComposeUiNode.Companion companion17 = ComposeUiNode.Companion;
                NavigationBarItemColors navigationBarItemColors1115 = navigationBarItemColors3;
                constructor = companion17.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB16 = cc.b(companion17, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy16, composerM5355constructorimpl, currentCompositionLocalMap16);
                if (composerM5355constructorimpl.getInserting()) {
                    mutableIntState2 = mutableIntState;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier16, companion17.getSetModifier());
                    BoxScopeInstance boxScopeInstance1111 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState1113 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens16, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density1111 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1113.getIntValue() - density1111.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1111.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var1111 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource1111 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda1111111113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1111, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda1111111114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1115), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var1113 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111113, composableLambdaRememberComposableLambda1111111114, composableLambdaRememberComposableLambda1111111111, composableLambda17, z111114, ll3Var1113, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors1115;
                    z8 = z111114;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier19;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z111116;
                } else {
                    mutableIntState2 = mutableIntState;
                }
                dc.b(bm3VarB16, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier16, companion17.getSetModifier());
                BoxScopeInstance boxScopeInstance1112 = BoxScopeInstance.INSTANCE;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                MutableIntState mutableIntState1114 = mutableIntState2;
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens16, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Density density1112 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1114.getIntValue() - density1112.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1112.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                j59 j59Var1112 = j59.a;
                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                final MappedInteractionSource mappedInteractionSource1112 = (MappedInteractionSource) objRememberedValue3;
                i16 = 1;
                ComposableLambda composableLambdaRememberComposableLambda1111111115 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                    public final void invoke(Composer composer3, int i18) {
                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                        }
                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1112, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                ComposableLambda composableLambdaRememberComposableLambda1111111116 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1115), composerStartRestartGroup, 54);
                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                ll3 ll3Var1114 = (ll3) objRememberedValue4;
                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111115, composableLambdaRememberComposableLambda1111111116, composableLambdaRememberComposableLambda1111111111, composableLambda17, z111114, ll3Var1114, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                navigationBarItemColors2 = navigationBarItemColors1115;
                z8 = z111114;
                composer2 = composerStartRestartGroup;
                modifier2 = modifier19;
                mutableInteractionSource2 = mutableInteractionSource3;
                bm3Var4 = bm3Var6;
                z7 = z111116;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                navigationBarItemColors2 = navigationBarItemColors;
                composer2 = composerStartRestartGroup;
                z7 = z4;
                z8 = z5;
                bm3Var4 = bm3Var3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        modifier2 = modifier;
        i4 = i2 & 16;
        if (i4 != 0) {
            if ((196608 & i) == 0) {
                z4 = z2;
                if (composerStartRestartGroup.changed(z4)) {
                    i5 = 131072;
                } else {
                    i5 = 65536;
                }
                i3 |= i5;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((1572864 & i) == 0) {
                    bm3Var3 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i7 = 1048576;
                    } else {
                        i7 = 524288;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    z5 = z3;
                    if ((i & 12582912) == 0) {
                        c = ' ';
                        if (composerStartRestartGroup.changed(z5)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i11 = 536870912;
                            } else {
                                i11 = 268435456;
                            }
                            i3 |= i11;
                        }
                        i12 = i3;
                        if ((i3 & 306783379) != 306783378) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i17 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z4 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if (i8 != 0) {
                                    z5 = true;
                                }
                                if ((i2 & 128) != 0) {
                                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i13 = i12 & (-234881025);
                                } else {
                                    navigationBarItemColorsColors = navigationBarItemColors;
                                    i13 = i12;
                                }
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                modifier3 = modifier2;
                                bm3Var5 = bm3Var3;
                                i14 = i13;
                                navigationBarItemColors3 = navigationBarItemColorsColors;
                            } else {
                                if (i17 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z4 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if (i8 != 0) {
                                    z5 = true;
                                }
                                if ((i2 & 128) != 0) {
                                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i13 = i12 & (-234881025);
                                } else {
                                    navigationBarItemColorsColors = navigationBarItemColors;
                                    i13 = i12;
                                }
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                modifier3 = modifier2;
                                bm3Var5 = bm3Var3;
                                i14 = i13;
                                navigationBarItemColors3 = navigationBarItemColorsColors;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(-224963495);
                                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                    objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-7257538);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            MotionSchemeKeyTokens motionSchemeKeyTokens17 = MotionSchemeKeyTokens.DefaultEffects;
                            finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens17, composerStartRestartGroup, 6);
                            mutableInteractionSource5 = mutableInteractionSource4;
                            boolean z111117 = z5;
                            ComposableLambda composableLambdaRememberComposableLambda1111111117 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                            if (bm3Var5 == null) {
                                composerStartRestartGroup.startReplaceGroup(-224036658);
                                composerStartRestartGroup.endReplaceGroup();
                                bm3Var6 = bm3Var5;
                                composableLambda = null;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-224036657);
                                final NavigationBarItemColors navigationBarItemColors1116 = navigationBarItemColors3;
                                final boolean z111118 = z4;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var113 = bm3Var5;
                                bm3Var6 = bm3Var113;
                                ComposableLambda composableLambdaRememberComposableLambda1111111118 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                    private static final long invoke$lambda$0(State<Color> state) {
                                        return state.getValue().m6242unboximpl();
                                    }

                                    public final void invoke(Composer composer3, int i18) {
                                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                        }
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors1116.m3644textColorWaAFU9c$material3(z, z111118), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var113, composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                composerStartRestartGroup.endReplaceGroup();
                                composableLambda = composableLambdaRememberComposableLambda1111111118;
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            mutableIntState = (MutableIntState) objRememberedValue;
                            boolean z111119 = z4;
                            Modifier modifier110 = modifier3;
                            ComposableLambda composableLambda18 = composableLambda;
                            Modifier modifierWeight$default17 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier110, z, mutableInteractionSource5, null, z111119, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == companion.getEmpty()) {
                                i15 = 0;
                                objRememberedValue2 = new gj5(mutableIntState, i15);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                i15 = 0;
                            }
                            Modifier modifierOnSizeChanged17 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default17, (nl3) objRememberedValue2);
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy17 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                            CompositionLocalMap currentCompositionLocalMap17 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier17 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged17);
                            ComposeUiNode.Companion companion18 = ComposeUiNode.Companion;
                            NavigationBarItemColors navigationBarItemColors1117 = navigationBarItemColors3;
                            constructor = companion18.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3 bm3VarB17 = cc.b(companion18, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy17, composerM5355constructorimpl, currentCompositionLocalMap17);
                            if (composerM5355constructorimpl.getInserting()) {
                                mutableIntState2 = mutableIntState;
                                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier17, companion18.getSetModifier());
                                BoxScopeInstance boxScopeInstance1113 = BoxScopeInstance.INSTANCE;
                                if (z) {
                                    f = 1.0f;
                                } else {
                                    f = 0.0f;
                                }
                                MutableIntState mutableIntState1115 = mutableIntState2;
                                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens17, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                if (z) {
                                    f2 = 1.0f;
                                } else {
                                    f2 = 0.0f;
                                }
                                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                Density density1113 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1115.getIntValue() - density1113.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1113.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                                j59 j59Var1113 = j59.a;
                                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                if (zChanged) {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                } else {
                                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                }
                                final MappedInteractionSource mappedInteractionSource1113 = (MappedInteractionSource) objRememberedValue3;
                                i16 = 1;
                                ComposableLambda composableLambdaRememberComposableLambda1111111119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                    public final void invoke(Composer composer3, int i18) {
                                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                        }
                                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1113, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                ComposableLambda composableLambdaRememberComposableLambda11111111110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1117), composerStartRestartGroup, 54);
                                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                                if (zChanged2) {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                } else {
                                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                }
                                ll3 ll3Var1115 = (ll3) objRememberedValue4;
                                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                                if (zChanged3) {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                } else {
                                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                }
                                NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111119, composableLambdaRememberComposableLambda11111111110, composableLambdaRememberComposableLambda1111111117, composableLambda18, z111117, ll3Var1115, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                                composerStartRestartGroup.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                navigationBarItemColors2 = navigationBarItemColors1117;
                                z8 = z111117;
                                composer2 = composerStartRestartGroup;
                                modifier2 = modifier110;
                                mutableInteractionSource2 = mutableInteractionSource3;
                                bm3Var4 = bm3Var6;
                                z7 = z111119;
                            } else {
                                mutableIntState2 = mutableIntState;
                            }
                            dc.b(bm3VarB17, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier17, companion18.getSetModifier());
                            BoxScopeInstance boxScopeInstance1114 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState1116 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens17, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density1114 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1116.getIntValue() - density1114.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1114.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var1114 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource1114 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda11111111111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1114, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda11111111112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1117), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var1116 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda11111111111, composableLambdaRememberComposableLambda11111111112, composableLambdaRememberComposableLambda1111111117, composableLambda18, z111117, ll3Var1116, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors1117;
                            z8 = z111117;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier110;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z111119;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            navigationBarItemColors2 = navigationBarItemColors;
                            composer2 = composerStartRestartGroup;
                            z7 = z4;
                            z8 = z5;
                            bm3Var4 = bm3Var3;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 805306368;
                    i12 = i3;
                    if ((i3 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        } else {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224963495);
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-7257538);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens18 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens18, composerStartRestartGroup, 6);
                        mutableInteractionSource5 = mutableInteractionSource4;
                        boolean z1111110 = z5;
                        ComposableLambda composableLambdaRememberComposableLambda11111111113 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                        if (bm3Var5 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224036658);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var6 = bm3Var5;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-224036657);
                            final NavigationBarItemColors navigationBarItemColors1118 = navigationBarItemColors3;
                            final boolean z1111111 = z4;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var114 = bm3Var5;
                            bm3Var6 = bm3Var114;
                            ComposableLambda composableLambdaRememberComposableLambda11111111114 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors1118.m3644textColorWaAFU9c$material3(z, z1111111), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var114, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda11111111114;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableIntState = (MutableIntState) objRememberedValue;
                        boolean z1111112 = z4;
                        Modifier modifier111 = modifier3;
                        ComposableLambda composableLambda19 = composableLambda;
                        Modifier modifierWeight$default18 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier111, z, mutableInteractionSource5, null, z1111112, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            i15 = 0;
                            objRememberedValue2 = new gj5(mutableIntState, i15);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            i15 = 0;
                        }
                        Modifier modifierOnSizeChanged18 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default18, (nl3) objRememberedValue2);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy18 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                        CompositionLocalMap currentCompositionLocalMap18 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier18 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged18);
                        ComposeUiNode.Companion companion19 = ComposeUiNode.Companion;
                        NavigationBarItemColors navigationBarItemColors1119 = navigationBarItemColors3;
                        constructor = companion19.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB18 = cc.b(companion19, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy18, composerM5355constructorimpl, currentCompositionLocalMap18);
                        if (composerM5355constructorimpl.getInserting()) {
                            mutableIntState2 = mutableIntState;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier18, companion19.getSetModifier());
                            BoxScopeInstance boxScopeInstance1115 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState1117 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens18, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density1115 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1117.getIntValue() - density1115.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1115.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var1115 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource1115 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda11111111115 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1115, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda11111111116 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1119), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var1117 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda11111111115, composableLambdaRememberComposableLambda11111111116, composableLambdaRememberComposableLambda11111111113, composableLambda19, z1111110, ll3Var1117, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors1119;
                            z8 = z1111110;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier111;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z1111112;
                        } else {
                            mutableIntState2 = mutableIntState;
                        }
                        dc.b(bm3VarB18, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier18, companion19.getSetModifier());
                        BoxScopeInstance boxScopeInstance1116 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState1118 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens18, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density1116 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1118.getIntValue() - density1116.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1116.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var1116 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource1116 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda11111111117 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1116, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda11111111118 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1119), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var1118 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda11111111117, composableLambdaRememberComposableLambda11111111118, composableLambdaRememberComposableLambda11111111113, composableLambda19, z1111110, ll3Var1118, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors1119;
                        z8 = z1111110;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier111;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z1111112;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        navigationBarItemColors2 = navigationBarItemColors;
                        composer2 = composerStartRestartGroup;
                        z7 = z4;
                        z8 = z5;
                        bm3Var4 = bm3Var3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                z5 = z3;
                c = ' ';
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    i12 = i3;
                    if ((i3 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        } else {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224963495);
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-7257538);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens19 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens19, composerStartRestartGroup, 6);
                        mutableInteractionSource5 = mutableInteractionSource4;
                        boolean z1111113 = z5;
                        ComposableLambda composableLambdaRememberComposableLambda11111111119 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                        if (bm3Var5 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224036658);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var6 = bm3Var5;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-224036657);
                            final NavigationBarItemColors navigationBarItemColors11110 = navigationBarItemColors3;
                            final boolean z1111114 = z4;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var115 = bm3Var5;
                            bm3Var6 = bm3Var115;
                            ComposableLambda composableLambdaRememberComposableLambda111111111110 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors11110.m3644textColorWaAFU9c$material3(z, z1111114), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var115, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda111111111110;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableIntState = (MutableIntState) objRememberedValue;
                        boolean z1111115 = z4;
                        Modifier modifier112 = modifier3;
                        ComposableLambda composableLambda110 = composableLambda;
                        Modifier modifierWeight$default19 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier112, z, mutableInteractionSource5, null, z1111115, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            i15 = 0;
                            objRememberedValue2 = new gj5(mutableIntState, i15);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            i15 = 0;
                        }
                        Modifier modifierOnSizeChanged19 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default19, (nl3) objRememberedValue2);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy19 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                        CompositionLocalMap currentCompositionLocalMap19 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier19 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged19);
                        ComposeUiNode.Companion companion110 = ComposeUiNode.Companion;
                        NavigationBarItemColors navigationBarItemColors11111 = navigationBarItemColors3;
                        constructor = companion110.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB19 = cc.b(companion110, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy19, composerM5355constructorimpl, currentCompositionLocalMap19);
                        if (composerM5355constructorimpl.getInserting()) {
                            mutableIntState2 = mutableIntState;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier19, companion110.getSetModifier());
                            BoxScopeInstance boxScopeInstance1117 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState1119 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens19, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density1117 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1119.getIntValue() - density1117.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1117.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var1117 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource1117 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda111111111111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1117, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda111111111112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11111), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var1119 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111111, composableLambdaRememberComposableLambda111111111112, composableLambdaRememberComposableLambda11111111119, composableLambda110, z1111113, ll3Var1119, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors11111;
                            z8 = z1111113;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier112;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z1111115;
                        } else {
                            mutableIntState2 = mutableIntState;
                        }
                        dc.b(bm3VarB19, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier19, companion110.getSetModifier());
                        BoxScopeInstance boxScopeInstance1118 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState11110 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens19, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density1118 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState11110.getIntValue() - density1118.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1118.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var1118 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource1118 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda111111111113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1118, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda111111111114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11111), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var11110 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111113, composableLambdaRememberComposableLambda111111111114, composableLambdaRememberComposableLambda11111111119, composableLambda110, z1111113, ll3Var11110, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors11111;
                        z8 = z1111113;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier112;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z1111115;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        navigationBarItemColors2 = navigationBarItemColors;
                        composer2 = composerStartRestartGroup;
                        z7 = z4;
                        z8 = z5;
                        bm3Var4 = bm3Var3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 805306368;
                i12 = i3;
                if ((i3 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224963495);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-7257538);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens110 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens110, composerStartRestartGroup, 6);
                    mutableInteractionSource5 = mutableInteractionSource4;
                    boolean z1111116 = z5;
                    ComposableLambda composableLambdaRememberComposableLambda111111111115 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                    if (bm3Var5 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224036658);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var6 = bm3Var5;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-224036657);
                        final NavigationBarItemColors navigationBarItemColors11112 = navigationBarItemColors3;
                        final boolean z1111117 = z4;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var116 = bm3Var5;
                        bm3Var6 = bm3Var116;
                        ComposableLambda composableLambdaRememberComposableLambda111111111116 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors11112.m3644textColorWaAFU9c$material3(z, z1111117), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var116, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda111111111116;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableIntState = (MutableIntState) objRememberedValue;
                    boolean z1111118 = z4;
                    Modifier modifier113 = modifier3;
                    ComposableLambda composableLambda111 = composableLambda;
                    Modifier modifierWeight$default110 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier113, z, mutableInteractionSource5, null, z1111118, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        i15 = 0;
                        objRememberedValue2 = new gj5(mutableIntState, i15);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        i15 = 0;
                    }
                    Modifier modifierOnSizeChanged110 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default110, (nl3) objRememberedValue2);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy110 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                    CompositionLocalMap currentCompositionLocalMap110 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier110 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged110);
                    ComposeUiNode.Companion companion111 = ComposeUiNode.Companion;
                    NavigationBarItemColors navigationBarItemColors11113 = navigationBarItemColors3;
                    constructor = companion111.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB110 = cc.b(companion111, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy110, composerM5355constructorimpl, currentCompositionLocalMap110);
                    if (composerM5355constructorimpl.getInserting()) {
                        mutableIntState2 = mutableIntState;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier110, companion111.getSetModifier());
                        BoxScopeInstance boxScopeInstance1119 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState11111 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens110, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density1119 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState11111.getIntValue() - density1119.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1119.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var1119 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource1119 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda111111111117 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1119, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda111111111118 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11113), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var11111 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111117, composableLambdaRememberComposableLambda111111111118, composableLambdaRememberComposableLambda111111111115, composableLambda111, z1111116, ll3Var11111, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors11113;
                        z8 = z1111116;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier113;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z1111118;
                    } else {
                        mutableIntState2 = mutableIntState;
                    }
                    dc.b(bm3VarB110, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier110, companion111.getSetModifier());
                    BoxScopeInstance boxScopeInstance11110 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState11112 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens110, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density11110 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState11112.getIntValue() - density11110.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density11110.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var11110 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource11110 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda111111111119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource11110, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda1111111111110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11113), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var11112 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111119, composableLambdaRememberComposableLambda1111111111110, composableLambdaRememberComposableLambda111111111115, composableLambda111, z1111116, ll3Var11112, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors11113;
                    z8 = z1111116;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier113;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z1111118;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    navigationBarItemColors2 = navigationBarItemColors;
                    composer2 = composerStartRestartGroup;
                    z7 = z4;
                    z8 = z5;
                    bm3Var4 = bm3Var3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            bm3Var3 = bm3Var2;
            i8 = i2 & 64;
            if (i8 != 0) {
                z5 = z3;
                if ((i & 12582912) == 0) {
                    c = ' ';
                    if (composerStartRestartGroup.changed(z5)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    i12 = i3;
                    if ((i3 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        } else {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224963495);
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-7257538);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens111 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens111, composerStartRestartGroup, 6);
                        mutableInteractionSource5 = mutableInteractionSource4;
                        boolean z1111119 = z5;
                        ComposableLambda composableLambdaRememberComposableLambda1111111111111 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                        if (bm3Var5 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224036658);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var6 = bm3Var5;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-224036657);
                            final NavigationBarItemColors navigationBarItemColors11114 = navigationBarItemColors3;
                            final boolean z11111110 = z4;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var117 = bm3Var5;
                            bm3Var6 = bm3Var117;
                            ComposableLambda composableLambdaRememberComposableLambda1111111111112 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors11114.m3644textColorWaAFU9c$material3(z, z11111110), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var117, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda1111111111112;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableIntState = (MutableIntState) objRememberedValue;
                        boolean z11111111 = z4;
                        Modifier modifier114 = modifier3;
                        ComposableLambda composableLambda112 = composableLambda;
                        Modifier modifierWeight$default111 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier114, z, mutableInteractionSource5, null, z11111111, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            i15 = 0;
                            objRememberedValue2 = new gj5(mutableIntState, i15);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            i15 = 0;
                        }
                        Modifier modifierOnSizeChanged111 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default111, (nl3) objRememberedValue2);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy111 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                        CompositionLocalMap currentCompositionLocalMap111 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier111 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged111);
                        ComposeUiNode.Companion companion112 = ComposeUiNode.Companion;
                        NavigationBarItemColors navigationBarItemColors11115 = navigationBarItemColors3;
                        constructor = companion112.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB111 = cc.b(companion112, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy111, composerM5355constructorimpl, currentCompositionLocalMap111);
                        if (composerM5355constructorimpl.getInserting()) {
                            mutableIntState2 = mutableIntState;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier111, companion112.getSetModifier());
                            BoxScopeInstance boxScopeInstance11111 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState11113 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens111, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density11111 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState11113.getIntValue() - density11111.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density11111.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var11111 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource11111 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda1111111111113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource11111, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda1111111111114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11115), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var11113 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111111113, composableLambdaRememberComposableLambda1111111111114, composableLambdaRememberComposableLambda1111111111111, composableLambda112, z1111119, ll3Var11113, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors11115;
                            z8 = z1111119;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier114;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z11111111;
                        } else {
                            mutableIntState2 = mutableIntState;
                        }
                        dc.b(bm3VarB111, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier111, companion112.getSetModifier());
                        BoxScopeInstance boxScopeInstance11112 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState11114 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens111, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density11112 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState11114.getIntValue() - density11112.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density11112.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var11112 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource11112 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda1111111111115 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource11112, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda1111111111116 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11115), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var11114 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111111115, composableLambdaRememberComposableLambda1111111111116, composableLambdaRememberComposableLambda1111111111111, composableLambda112, z1111119, ll3Var11114, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors11115;
                        z8 = z1111119;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier114;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z11111111;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        navigationBarItemColors2 = navigationBarItemColors;
                        composer2 = composerStartRestartGroup;
                        z7 = z4;
                        z8 = z5;
                        bm3Var4 = bm3Var3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 805306368;
                i12 = i3;
                if ((i3 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224963495);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-7257538);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens112 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens112, composerStartRestartGroup, 6);
                    mutableInteractionSource5 = mutableInteractionSource4;
                    boolean z11111112 = z5;
                    ComposableLambda composableLambdaRememberComposableLambda1111111111117 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                    if (bm3Var5 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224036658);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var6 = bm3Var5;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-224036657);
                        final NavigationBarItemColors navigationBarItemColors11116 = navigationBarItemColors3;
                        final boolean z11111113 = z4;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var118 = bm3Var5;
                        bm3Var6 = bm3Var118;
                        ComposableLambda composableLambdaRememberComposableLambda1111111111118 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors11116.m3644textColorWaAFU9c$material3(z, z11111113), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var118, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda1111111111118;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableIntState = (MutableIntState) objRememberedValue;
                    boolean z11111114 = z4;
                    Modifier modifier115 = modifier3;
                    ComposableLambda composableLambda113 = composableLambda;
                    Modifier modifierWeight$default112 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier115, z, mutableInteractionSource5, null, z11111114, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        i15 = 0;
                        objRememberedValue2 = new gj5(mutableIntState, i15);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        i15 = 0;
                    }
                    Modifier modifierOnSizeChanged112 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default112, (nl3) objRememberedValue2);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy112 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                    CompositionLocalMap currentCompositionLocalMap112 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier112 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged112);
                    ComposeUiNode.Companion companion113 = ComposeUiNode.Companion;
                    NavigationBarItemColors navigationBarItemColors11117 = navigationBarItemColors3;
                    constructor = companion113.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB112 = cc.b(companion113, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy112, composerM5355constructorimpl, currentCompositionLocalMap112);
                    if (composerM5355constructorimpl.getInserting()) {
                        mutableIntState2 = mutableIntState;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier112, companion113.getSetModifier());
                        BoxScopeInstance boxScopeInstance11113 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState11115 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens112, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density11113 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState11115.getIntValue() - density11113.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density11113.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var11113 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource11113 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda1111111111119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource11113, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda11111111111110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11117), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var11115 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111111119, composableLambdaRememberComposableLambda11111111111110, composableLambdaRememberComposableLambda1111111111117, composableLambda113, z11111112, ll3Var11115, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors11117;
                        z8 = z11111112;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier115;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z11111114;
                    } else {
                        mutableIntState2 = mutableIntState;
                    }
                    dc.b(bm3VarB112, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier112, companion113.getSetModifier());
                    BoxScopeInstance boxScopeInstance11114 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState11116 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens112, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density11114 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState11116.getIntValue() - density11114.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density11114.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var11114 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource11114 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda11111111111111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource11114, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda11111111111112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11117), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var11116 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda11111111111111, composableLambdaRememberComposableLambda11111111111112, composableLambdaRememberComposableLambda1111111111117, composableLambda113, z11111112, ll3Var11116, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors11117;
                    z8 = z11111112;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier115;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z11111114;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    navigationBarItemColors2 = navigationBarItemColors;
                    composer2 = composerStartRestartGroup;
                    z7 = z4;
                    z8 = z5;
                    bm3Var4 = bm3Var3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            z5 = z3;
            c = ' ';
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                i12 = i3;
                if ((i3 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224963495);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-7257538);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens113 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens113, composerStartRestartGroup, 6);
                    mutableInteractionSource5 = mutableInteractionSource4;
                    boolean z11111115 = z5;
                    ComposableLambda composableLambdaRememberComposableLambda11111111111113 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                    if (bm3Var5 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224036658);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var6 = bm3Var5;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-224036657);
                        final NavigationBarItemColors navigationBarItemColors11118 = navigationBarItemColors3;
                        final boolean z11111116 = z4;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var119 = bm3Var5;
                        bm3Var6 = bm3Var119;
                        ComposableLambda composableLambdaRememberComposableLambda11111111111114 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors11118.m3644textColorWaAFU9c$material3(z, z11111116), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var119, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda11111111111114;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableIntState = (MutableIntState) objRememberedValue;
                    boolean z11111117 = z4;
                    Modifier modifier116 = modifier3;
                    ComposableLambda composableLambda114 = composableLambda;
                    Modifier modifierWeight$default113 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier116, z, mutableInteractionSource5, null, z11111117, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        i15 = 0;
                        objRememberedValue2 = new gj5(mutableIntState, i15);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        i15 = 0;
                    }
                    Modifier modifierOnSizeChanged113 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default113, (nl3) objRememberedValue2);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy113 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                    CompositionLocalMap currentCompositionLocalMap113 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier113 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged113);
                    ComposeUiNode.Companion companion114 = ComposeUiNode.Companion;
                    NavigationBarItemColors navigationBarItemColors11119 = navigationBarItemColors3;
                    constructor = companion114.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB113 = cc.b(companion114, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy113, composerM5355constructorimpl, currentCompositionLocalMap113);
                    if (composerM5355constructorimpl.getInserting()) {
                        mutableIntState2 = mutableIntState;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier113, companion114.getSetModifier());
                        BoxScopeInstance boxScopeInstance11115 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState11117 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens113, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density11115 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState11117.getIntValue() - density11115.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density11115.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var11115 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource11115 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda11111111111115 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource11115, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda11111111111116 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11119), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var11117 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda11111111111115, composableLambdaRememberComposableLambda11111111111116, composableLambdaRememberComposableLambda11111111111113, composableLambda114, z11111115, ll3Var11117, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors11119;
                        z8 = z11111115;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier116;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z11111117;
                    } else {
                        mutableIntState2 = mutableIntState;
                    }
                    dc.b(bm3VarB113, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier113, companion114.getSetModifier());
                    BoxScopeInstance boxScopeInstance11116 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState11118 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens113, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density11116 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState11118.getIntValue() - density11116.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density11116.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var11116 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource11116 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda11111111111117 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource11116, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda11111111111118 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors11119), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var11118 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda11111111111117, composableLambdaRememberComposableLambda11111111111118, composableLambdaRememberComposableLambda11111111111113, composableLambda114, z11111115, ll3Var11118, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors11119;
                    z8 = z11111115;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier116;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z11111117;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    navigationBarItemColors2 = navigationBarItemColors;
                    composer2 = composerStartRestartGroup;
                    z7 = z4;
                    z8 = z5;
                    bm3Var4 = bm3Var3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 805306368;
            i12 = i3;
            if ((i3 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        z5 = true;
                    }
                    if ((i2 & 128) != 0) {
                        navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i13 = i12 & (-234881025);
                    } else {
                        navigationBarItemColorsColors = navigationBarItemColors;
                        i13 = i12;
                    }
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    i14 = i13;
                    navigationBarItemColors3 = navigationBarItemColorsColors;
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        z5 = true;
                    }
                    if ((i2 & 128) != 0) {
                        navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i13 = i12 & (-234881025);
                    } else {
                        navigationBarItemColorsColors = navigationBarItemColors;
                        i13 = i12;
                    }
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    i14 = i13;
                    navigationBarItemColors3 = navigationBarItemColorsColors;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-224963495);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-7257538);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens114 = MotionSchemeKeyTokens.DefaultEffects;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens114, composerStartRestartGroup, 6);
                mutableInteractionSource5 = mutableInteractionSource4;
                boolean z11111118 = z5;
                ComposableLambda composableLambdaRememberComposableLambda11111111111119 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                if (bm3Var5 == null) {
                    composerStartRestartGroup.startReplaceGroup(-224036658);
                    composerStartRestartGroup.endReplaceGroup();
                    bm3Var6 = bm3Var5;
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-224036657);
                    final NavigationBarItemColors navigationBarItemColors111110 = navigationBarItemColors3;
                    final boolean z11111119 = z4;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1110 = bm3Var5;
                    bm3Var6 = bm3Var1110;
                    ComposableLambda composableLambdaRememberComposableLambda111111111111110 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                        private static final long invoke$lambda$0(State<Color> state) {
                            return state.getValue().m6242unboximpl();
                        }

                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                            }
                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors111110.m3644textColorWaAFU9c$material3(z, z11111119), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var1110, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = composableLambdaRememberComposableLambda111111111111110;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableIntState = (MutableIntState) objRememberedValue;
                boolean z111111110 = z4;
                Modifier modifier117 = modifier3;
                ComposableLambda composableLambda115 = composableLambda;
                Modifier modifierWeight$default114 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier117, z, mutableInteractionSource5, null, z111111110, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    i15 = 0;
                    objRememberedValue2 = new gj5(mutableIntState, i15);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    i15 = 0;
                }
                Modifier modifierOnSizeChanged114 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default114, (nl3) objRememberedValue2);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy114 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                CompositionLocalMap currentCompositionLocalMap114 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier114 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged114);
                ComposeUiNode.Companion companion115 = ComposeUiNode.Companion;
                NavigationBarItemColors navigationBarItemColors111111 = navigationBarItemColors3;
                constructor = companion115.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB114 = cc.b(companion115, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy114, composerM5355constructorimpl, currentCompositionLocalMap114);
                if (composerM5355constructorimpl.getInserting()) {
                    mutableIntState2 = mutableIntState;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier114, companion115.getSetModifier());
                    BoxScopeInstance boxScopeInstance11117 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState11119 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens114, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density11117 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState11119.getIntValue() - density11117.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density11117.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var11117 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource11117 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda111111111111111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource11117, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda111111111111112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111111), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var11119 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111111111, composableLambdaRememberComposableLambda111111111111112, composableLambdaRememberComposableLambda11111111111119, composableLambda115, z11111118, ll3Var11119, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors111111;
                    z8 = z11111118;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier117;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z111111110;
                } else {
                    mutableIntState2 = mutableIntState;
                }
                dc.b(bm3VarB114, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier114, companion115.getSetModifier());
                BoxScopeInstance boxScopeInstance11118 = BoxScopeInstance.INSTANCE;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                MutableIntState mutableIntState111110 = mutableIntState2;
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens114, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Density density11118 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState111110.getIntValue() - density11118.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density11118.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                j59 j59Var11118 = j59.a;
                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                final MappedInteractionSource mappedInteractionSource11118 = (MappedInteractionSource) objRememberedValue3;
                i16 = 1;
                ComposableLambda composableLambdaRememberComposableLambda111111111111113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                    public final void invoke(Composer composer3, int i18) {
                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                        }
                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource11118, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                ComposableLambda composableLambdaRememberComposableLambda111111111111114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111111), composerStartRestartGroup, 54);
                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                ll3 ll3Var111110 = (ll3) objRememberedValue4;
                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111111113, composableLambdaRememberComposableLambda111111111111114, composableLambdaRememberComposableLambda11111111111119, composableLambda115, z11111118, ll3Var111110, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                navigationBarItemColors2 = navigationBarItemColors111111;
                z8 = z11111118;
                composer2 = composerStartRestartGroup;
                modifier2 = modifier117;
                mutableInteractionSource2 = mutableInteractionSource3;
                bm3Var4 = bm3Var6;
                z7 = z111111110;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                navigationBarItemColors2 = navigationBarItemColors;
                composer2 = composerStartRestartGroup;
                z7 = z4;
                z8 = z5;
                bm3Var4 = bm3Var3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        z4 = z2;
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((1572864 & i) == 0) {
                bm3Var3 = bm3Var2;
                if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                    i7 = 1048576;
                } else {
                    i7 = 524288;
                }
                i3 |= i7;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                z5 = z3;
                if ((i & 12582912) == 0) {
                    c = ' ';
                    if (composerStartRestartGroup.changed(z5)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    i12 = i3;
                    if ((i3 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        } else {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                z5 = true;
                            }
                            if ((i2 & 128) != 0) {
                                navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i13 = i12 & (-234881025);
                            } else {
                                navigationBarItemColorsColors = navigationBarItemColors;
                                i13 = i12;
                            }
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            modifier3 = modifier2;
                            bm3Var5 = bm3Var3;
                            i14 = i13;
                            navigationBarItemColors3 = navigationBarItemColorsColors;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224963495);
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-7257538);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens115 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens115, composerStartRestartGroup, 6);
                        mutableInteractionSource5 = mutableInteractionSource4;
                        boolean z111111111 = z5;
                        ComposableLambda composableLambdaRememberComposableLambda111111111111115 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                        if (bm3Var5 == null) {
                            composerStartRestartGroup.startReplaceGroup(-224036658);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var6 = bm3Var5;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-224036657);
                            final NavigationBarItemColors navigationBarItemColors111112 = navigationBarItemColors3;
                            final boolean z111111112 = z4;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var1111 = bm3Var5;
                            bm3Var6 = bm3Var1111;
                            ComposableLambda composableLambdaRememberComposableLambda111111111111116 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors111112.m3644textColorWaAFU9c$material3(z, z111111112), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var1111, composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda111111111111116;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableIntState = (MutableIntState) objRememberedValue;
                        boolean z111111113 = z4;
                        Modifier modifier118 = modifier3;
                        ComposableLambda composableLambda116 = composableLambda;
                        Modifier modifierWeight$default115 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier118, z, mutableInteractionSource5, null, z111111113, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            i15 = 0;
                            objRememberedValue2 = new gj5(mutableIntState, i15);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            i15 = 0;
                        }
                        Modifier modifierOnSizeChanged115 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default115, (nl3) objRememberedValue2);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy115 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                        CompositionLocalMap currentCompositionLocalMap115 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier115 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged115);
                        ComposeUiNode.Companion companion116 = ComposeUiNode.Companion;
                        NavigationBarItemColors navigationBarItemColors111113 = navigationBarItemColors3;
                        constructor = companion116.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3 bm3VarB115 = cc.b(companion116, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy115, composerM5355constructorimpl, currentCompositionLocalMap115);
                        if (composerM5355constructorimpl.getInserting()) {
                            mutableIntState2 = mutableIntState;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier115, companion116.getSetModifier());
                            BoxScopeInstance boxScopeInstance11119 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            MutableIntState mutableIntState111111 = mutableIntState2;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens115, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density11119 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState111111.getIntValue() - density11119.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density11119.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                            j59 j59Var11119 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            final MappedInteractionSource mappedInteractionSource11119 = (MappedInteractionSource) objRememberedValue3;
                            i16 = 1;
                            ComposableLambda composableLambdaRememberComposableLambda111111111111117 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                                public final void invoke(Composer composer3, int i18) {
                                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource11119, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            ComposableLambda composableLambdaRememberComposableLambda111111111111118 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111113), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3 ll3Var111111 = (ll3) objRememberedValue4;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            } else {
                                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111111117, composableLambdaRememberComposableLambda111111111111118, composableLambdaRememberComposableLambda111111111111115, composableLambda116, z111111111, ll3Var111111, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationBarItemColors2 = navigationBarItemColors111113;
                            z8 = z111111111;
                            composer2 = composerStartRestartGroup;
                            modifier2 = modifier118;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            bm3Var4 = bm3Var6;
                            z7 = z111111113;
                        } else {
                            mutableIntState2 = mutableIntState;
                        }
                        dc.b(bm3VarB115, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier115, companion116.getSetModifier());
                        BoxScopeInstance boxScopeInstance111110 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState111112 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens115, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density111110 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState111112.getIntValue() - density111110.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density111110.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var111110 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource111110 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda111111111111119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource111110, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda1111111111111110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111113), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var111112 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111111119, composableLambdaRememberComposableLambda1111111111111110, composableLambdaRememberComposableLambda111111111111115, composableLambda116, z111111111, ll3Var111112, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors111113;
                        z8 = z111111111;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier118;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z111111113;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        navigationBarItemColors2 = navigationBarItemColors;
                        composer2 = composerStartRestartGroup;
                        z7 = z4;
                        z8 = z5;
                        bm3Var4 = bm3Var3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 805306368;
                i12 = i3;
                if ((i3 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224963495);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-7257538);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens116 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens116, composerStartRestartGroup, 6);
                    mutableInteractionSource5 = mutableInteractionSource4;
                    boolean z111111114 = z5;
                    ComposableLambda composableLambdaRememberComposableLambda1111111111111111 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                    if (bm3Var5 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224036658);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var6 = bm3Var5;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-224036657);
                        final NavigationBarItemColors navigationBarItemColors111114 = navigationBarItemColors3;
                        final boolean z111111115 = z4;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1112 = bm3Var5;
                        bm3Var6 = bm3Var1112;
                        ComposableLambda composableLambdaRememberComposableLambda1111111111111112 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors111114.m3644textColorWaAFU9c$material3(z, z111111115), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var1112, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda1111111111111112;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableIntState = (MutableIntState) objRememberedValue;
                    boolean z111111116 = z4;
                    Modifier modifier119 = modifier3;
                    ComposableLambda composableLambda117 = composableLambda;
                    Modifier modifierWeight$default116 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier119, z, mutableInteractionSource5, null, z111111116, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        i15 = 0;
                        objRememberedValue2 = new gj5(mutableIntState, i15);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        i15 = 0;
                    }
                    Modifier modifierOnSizeChanged116 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default116, (nl3) objRememberedValue2);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy116 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                    CompositionLocalMap currentCompositionLocalMap116 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier116 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged116);
                    ComposeUiNode.Companion companion117 = ComposeUiNode.Companion;
                    NavigationBarItemColors navigationBarItemColors111115 = navigationBarItemColors3;
                    constructor = companion117.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB116 = cc.b(companion117, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy116, composerM5355constructorimpl, currentCompositionLocalMap116);
                    if (composerM5355constructorimpl.getInserting()) {
                        mutableIntState2 = mutableIntState;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier116, companion117.getSetModifier());
                        BoxScopeInstance boxScopeInstance111111 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState111113 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens116, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density111111 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState111113.getIntValue() - density111111.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density111111.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var111111 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource111111 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda1111111111111113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource111111, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda1111111111111114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111115), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var111113 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111111111113, composableLambdaRememberComposableLambda1111111111111114, composableLambdaRememberComposableLambda1111111111111111, composableLambda117, z111111114, ll3Var111113, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors111115;
                        z8 = z111111114;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier119;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z111111116;
                    } else {
                        mutableIntState2 = mutableIntState;
                    }
                    dc.b(bm3VarB116, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier116, companion117.getSetModifier());
                    BoxScopeInstance boxScopeInstance111112 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState111114 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens116, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density111112 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState111114.getIntValue() - density111112.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density111112.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var111112 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource111112 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda1111111111111115 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource111112, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda1111111111111116 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111115), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var111114 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111111111115, composableLambdaRememberComposableLambda1111111111111116, composableLambdaRememberComposableLambda1111111111111111, composableLambda117, z111111114, ll3Var111114, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors111115;
                    z8 = z111111114;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier119;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z111111116;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    navigationBarItemColors2 = navigationBarItemColors;
                    composer2 = composerStartRestartGroup;
                    z7 = z4;
                    z8 = z5;
                    bm3Var4 = bm3Var3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            z5 = z3;
            c = ' ';
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                i12 = i3;
                if ((i3 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224963495);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-7257538);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens117 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens117, composerStartRestartGroup, 6);
                    mutableInteractionSource5 = mutableInteractionSource4;
                    boolean z111111117 = z5;
                    ComposableLambda composableLambdaRememberComposableLambda1111111111111117 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                    if (bm3Var5 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224036658);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var6 = bm3Var5;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-224036657);
                        final NavigationBarItemColors navigationBarItemColors111116 = navigationBarItemColors3;
                        final boolean z111111118 = z4;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1113 = bm3Var5;
                        bm3Var6 = bm3Var1113;
                        ComposableLambda composableLambdaRememberComposableLambda1111111111111118 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors111116.m3644textColorWaAFU9c$material3(z, z111111118), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var1113, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda1111111111111118;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableIntState = (MutableIntState) objRememberedValue;
                    boolean z111111119 = z4;
                    Modifier modifier1110 = modifier3;
                    ComposableLambda composableLambda118 = composableLambda;
                    Modifier modifierWeight$default117 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier1110, z, mutableInteractionSource5, null, z111111119, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        i15 = 0;
                        objRememberedValue2 = new gj5(mutableIntState, i15);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        i15 = 0;
                    }
                    Modifier modifierOnSizeChanged117 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default117, (nl3) objRememberedValue2);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy117 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                    CompositionLocalMap currentCompositionLocalMap117 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier117 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged117);
                    ComposeUiNode.Companion companion118 = ComposeUiNode.Companion;
                    NavigationBarItemColors navigationBarItemColors111117 = navigationBarItemColors3;
                    constructor = companion118.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB117 = cc.b(companion118, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy117, composerM5355constructorimpl, currentCompositionLocalMap117);
                    if (composerM5355constructorimpl.getInserting()) {
                        mutableIntState2 = mutableIntState;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier117, companion118.getSetModifier());
                        BoxScopeInstance boxScopeInstance111113 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState111115 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens117, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density111113 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState111115.getIntValue() - density111113.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density111113.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var111113 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource111113 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda1111111111111119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource111113, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda11111111111111110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111117), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var111115 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111111111119, composableLambdaRememberComposableLambda11111111111111110, composableLambdaRememberComposableLambda1111111111111117, composableLambda118, z111111117, ll3Var111115, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors111117;
                        z8 = z111111117;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier1110;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z111111119;
                    } else {
                        mutableIntState2 = mutableIntState;
                    }
                    dc.b(bm3VarB117, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier117, companion118.getSetModifier());
                    BoxScopeInstance boxScopeInstance111114 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState111116 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens117, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density111114 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState111116.getIntValue() - density111114.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density111114.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var111114 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource111114 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda11111111111111111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource111114, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda11111111111111112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111117), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var111116 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda11111111111111111, composableLambdaRememberComposableLambda11111111111111112, composableLambdaRememberComposableLambda1111111111111117, composableLambda118, z111111117, ll3Var111116, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors111117;
                    z8 = z111111117;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier1110;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z111111119;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    navigationBarItemColors2 = navigationBarItemColors;
                    composer2 = composerStartRestartGroup;
                    z7 = z4;
                    z8 = z5;
                    bm3Var4 = bm3Var3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 805306368;
            i12 = i3;
            if ((i3 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        z5 = true;
                    }
                    if ((i2 & 128) != 0) {
                        navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i13 = i12 & (-234881025);
                    } else {
                        navigationBarItemColorsColors = navigationBarItemColors;
                        i13 = i12;
                    }
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    i14 = i13;
                    navigationBarItemColors3 = navigationBarItemColorsColors;
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        z5 = true;
                    }
                    if ((i2 & 128) != 0) {
                        navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i13 = i12 & (-234881025);
                    } else {
                        navigationBarItemColorsColors = navigationBarItemColors;
                        i13 = i12;
                    }
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    i14 = i13;
                    navigationBarItemColors3 = navigationBarItemColorsColors;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-224963495);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-7257538);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens118 = MotionSchemeKeyTokens.DefaultEffects;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens118, composerStartRestartGroup, 6);
                mutableInteractionSource5 = mutableInteractionSource4;
                boolean z1111111110 = z5;
                ComposableLambda composableLambdaRememberComposableLambda11111111111111113 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                if (bm3Var5 == null) {
                    composerStartRestartGroup.startReplaceGroup(-224036658);
                    composerStartRestartGroup.endReplaceGroup();
                    bm3Var6 = bm3Var5;
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-224036657);
                    final NavigationBarItemColors navigationBarItemColors111118 = navigationBarItemColors3;
                    final boolean z1111111111 = z4;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1114 = bm3Var5;
                    bm3Var6 = bm3Var1114;
                    ComposableLambda composableLambdaRememberComposableLambda11111111111111114 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                        private static final long invoke$lambda$0(State<Color> state) {
                            return state.getValue().m6242unboximpl();
                        }

                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                            }
                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors111118.m3644textColorWaAFU9c$material3(z, z1111111111), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var1114, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = composableLambdaRememberComposableLambda11111111111111114;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableIntState = (MutableIntState) objRememberedValue;
                boolean z1111111112 = z4;
                Modifier modifier1111 = modifier3;
                ComposableLambda composableLambda119 = composableLambda;
                Modifier modifierWeight$default118 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier1111, z, mutableInteractionSource5, null, z1111111112, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    i15 = 0;
                    objRememberedValue2 = new gj5(mutableIntState, i15);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    i15 = 0;
                }
                Modifier modifierOnSizeChanged118 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default118, (nl3) objRememberedValue2);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy118 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                CompositionLocalMap currentCompositionLocalMap118 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier118 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged118);
                ComposeUiNode.Companion companion119 = ComposeUiNode.Companion;
                NavigationBarItemColors navigationBarItemColors111119 = navigationBarItemColors3;
                constructor = companion119.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB118 = cc.b(companion119, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy118, composerM5355constructorimpl, currentCompositionLocalMap118);
                if (composerM5355constructorimpl.getInserting()) {
                    mutableIntState2 = mutableIntState;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier118, companion119.getSetModifier());
                    BoxScopeInstance boxScopeInstance111115 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState111117 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens118, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density111115 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState111117.getIntValue() - density111115.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density111115.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var111115 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource111115 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda11111111111111115 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource111115, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda11111111111111116 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111119), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var111117 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda11111111111111115, composableLambdaRememberComposableLambda11111111111111116, composableLambdaRememberComposableLambda11111111111111113, composableLambda119, z1111111110, ll3Var111117, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors111119;
                    z8 = z1111111110;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier1111;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z1111111112;
                } else {
                    mutableIntState2 = mutableIntState;
                }
                dc.b(bm3VarB118, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier118, companion119.getSetModifier());
                BoxScopeInstance boxScopeInstance111116 = BoxScopeInstance.INSTANCE;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                MutableIntState mutableIntState111118 = mutableIntState2;
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens118, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Density density111116 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState111118.getIntValue() - density111116.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density111116.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                j59 j59Var111116 = j59.a;
                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                final MappedInteractionSource mappedInteractionSource111116 = (MappedInteractionSource) objRememberedValue3;
                i16 = 1;
                ComposableLambda composableLambdaRememberComposableLambda11111111111111117 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                    public final void invoke(Composer composer3, int i18) {
                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                        }
                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource111116, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                ComposableLambda composableLambdaRememberComposableLambda11111111111111118 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors111119), composerStartRestartGroup, 54);
                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                ll3 ll3Var111118 = (ll3) objRememberedValue4;
                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                NavigationBarItemLayout(composableLambdaRememberComposableLambda11111111111111117, composableLambdaRememberComposableLambda11111111111111118, composableLambdaRememberComposableLambda11111111111111113, composableLambda119, z1111111110, ll3Var111118, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                navigationBarItemColors2 = navigationBarItemColors111119;
                z8 = z1111111110;
                composer2 = composerStartRestartGroup;
                modifier2 = modifier1111;
                mutableInteractionSource2 = mutableInteractionSource3;
                bm3Var4 = bm3Var6;
                z7 = z1111111112;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                navigationBarItemColors2 = navigationBarItemColors;
                composer2 = composerStartRestartGroup;
                z7 = z4;
                z8 = z5;
                bm3Var4 = bm3Var3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 1572864;
        bm3Var3 = bm3Var2;
        i8 = i2 & 64;
        if (i8 != 0) {
            z5 = z3;
            if ((i & 12582912) == 0) {
                c = ' ';
                if (composerStartRestartGroup.changed(z5)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i3 |= i9;
            }
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                i12 = i3;
                if ((i3 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            z5 = true;
                        }
                        if ((i2 & 128) != 0) {
                            navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i13 = i12 & (-234881025);
                        } else {
                            navigationBarItemColorsColors = navigationBarItemColors;
                            i13 = i12;
                        }
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        modifier3 = modifier2;
                        bm3Var5 = bm3Var3;
                        i14 = i13;
                        navigationBarItemColors3 = navigationBarItemColorsColors;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224963495);
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-7257538);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens119 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens119, composerStartRestartGroup, 6);
                    mutableInteractionSource5 = mutableInteractionSource4;
                    boolean z1111111113 = z5;
                    ComposableLambda composableLambdaRememberComposableLambda11111111111111119 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                    if (bm3Var5 == null) {
                        composerStartRestartGroup.startReplaceGroup(-224036658);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var6 = bm3Var5;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-224036657);
                        final NavigationBarItemColors navigationBarItemColors1111110 = navigationBarItemColors3;
                        final boolean z1111111114 = z4;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var1115 = bm3Var5;
                        bm3Var6 = bm3Var1115;
                        ComposableLambda composableLambdaRememberComposableLambda111111111111111110 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors1111110.m3644textColorWaAFU9c$material3(z, z1111111114), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var1115, composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda111111111111111110;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableIntState = (MutableIntState) objRememberedValue;
                    boolean z1111111115 = z4;
                    Modifier modifier1112 = modifier3;
                    ComposableLambda composableLambda1110 = composableLambda;
                    Modifier modifierWeight$default119 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier1112, z, mutableInteractionSource5, null, z1111111115, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        i15 = 0;
                        objRememberedValue2 = new gj5(mutableIntState, i15);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        i15 = 0;
                    }
                    Modifier modifierOnSizeChanged119 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default119, (nl3) objRememberedValue2);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy119 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                    CompositionLocalMap currentCompositionLocalMap119 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier119 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged119);
                    ComposeUiNode.Companion companion1110 = ComposeUiNode.Companion;
                    NavigationBarItemColors navigationBarItemColors1111111 = navigationBarItemColors3;
                    constructor = companion1110.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3 bm3VarB119 = cc.b(companion1110, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy119, composerM5355constructorimpl, currentCompositionLocalMap119);
                    if (composerM5355constructorimpl.getInserting()) {
                        mutableIntState2 = mutableIntState;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier119, companion1110.getSetModifier());
                        BoxScopeInstance boxScopeInstance111117 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        MutableIntState mutableIntState111119 = mutableIntState2;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens119, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density111117 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState111119.getIntValue() - density111117.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density111117.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                        j59 j59Var111117 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        final MappedInteractionSource mappedInteractionSource111117 = (MappedInteractionSource) objRememberedValue3;
                        i16 = 1;
                        ComposableLambda composableLambdaRememberComposableLambda111111111111111111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                            public final void invoke(Composer composer3, int i18) {
                                if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource111117, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        ComposableLambda composableLambdaRememberComposableLambda111111111111111112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1111111), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3 ll3Var111119 = (ll3) objRememberedValue4;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111111111111, composableLambdaRememberComposableLambda111111111111111112, composableLambdaRememberComposableLambda11111111111111119, composableLambda1110, z1111111113, ll3Var111119, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationBarItemColors2 = navigationBarItemColors1111111;
                        z8 = z1111111113;
                        composer2 = composerStartRestartGroup;
                        modifier2 = modifier1112;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        bm3Var4 = bm3Var6;
                        z7 = z1111111115;
                    } else {
                        mutableIntState2 = mutableIntState;
                    }
                    dc.b(bm3VarB119, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier119, companion1110.getSetModifier());
                    BoxScopeInstance boxScopeInstance111118 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState1111110 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens119, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density111118 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1111110.getIntValue() - density111118.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density111118.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var111118 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource111118 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda111111111111111113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource111118, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda111111111111111114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1111111), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var1111110 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111111111113, composableLambdaRememberComposableLambda111111111111111114, composableLambdaRememberComposableLambda11111111111111119, composableLambda1110, z1111111113, ll3Var1111110, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors1111111;
                    z8 = z1111111113;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier1112;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z1111111115;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    navigationBarItemColors2 = navigationBarItemColors;
                    composer2 = composerStartRestartGroup;
                    z7 = z4;
                    z8 = z5;
                    bm3Var4 = bm3Var3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 805306368;
            i12 = i3;
            if ((i3 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        z5 = true;
                    }
                    if ((i2 & 128) != 0) {
                        navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i13 = i12 & (-234881025);
                    } else {
                        navigationBarItemColorsColors = navigationBarItemColors;
                        i13 = i12;
                    }
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    i14 = i13;
                    navigationBarItemColors3 = navigationBarItemColorsColors;
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        z5 = true;
                    }
                    if ((i2 & 128) != 0) {
                        navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i13 = i12 & (-234881025);
                    } else {
                        navigationBarItemColorsColors = navigationBarItemColors;
                        i13 = i12;
                    }
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    i14 = i13;
                    navigationBarItemColors3 = navigationBarItemColorsColors;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-224963495);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-7257538);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens1110 = MotionSchemeKeyTokens.DefaultEffects;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens1110, composerStartRestartGroup, 6);
                mutableInteractionSource5 = mutableInteractionSource4;
                boolean z1111111116 = z5;
                ComposableLambda composableLambdaRememberComposableLambda111111111111111115 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                if (bm3Var5 == null) {
                    composerStartRestartGroup.startReplaceGroup(-224036658);
                    composerStartRestartGroup.endReplaceGroup();
                    bm3Var6 = bm3Var5;
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-224036657);
                    final NavigationBarItemColors navigationBarItemColors1111112 = navigationBarItemColors3;
                    final boolean z1111111117 = z4;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1116 = bm3Var5;
                    bm3Var6 = bm3Var1116;
                    ComposableLambda composableLambdaRememberComposableLambda111111111111111116 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                        private static final long invoke$lambda$0(State<Color> state) {
                            return state.getValue().m6242unboximpl();
                        }

                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                            }
                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors1111112.m3644textColorWaAFU9c$material3(z, z1111111117), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var1116, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = composableLambdaRememberComposableLambda111111111111111116;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableIntState = (MutableIntState) objRememberedValue;
                boolean z1111111118 = z4;
                Modifier modifier1113 = modifier3;
                ComposableLambda composableLambda1111 = composableLambda;
                Modifier modifierWeight$default1110 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier1113, z, mutableInteractionSource5, null, z1111111118, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    i15 = 0;
                    objRememberedValue2 = new gj5(mutableIntState, i15);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    i15 = 0;
                }
                Modifier modifierOnSizeChanged1110 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default1110, (nl3) objRememberedValue2);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy1110 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                CompositionLocalMap currentCompositionLocalMap1110 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier1110 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged1110);
                ComposeUiNode.Companion companion1111 = ComposeUiNode.Companion;
                NavigationBarItemColors navigationBarItemColors1111113 = navigationBarItemColors3;
                constructor = companion1111.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB1110 = cc.b(companion1111, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy1110, composerM5355constructorimpl, currentCompositionLocalMap1110);
                if (composerM5355constructorimpl.getInserting()) {
                    mutableIntState2 = mutableIntState;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier1110, companion1111.getSetModifier());
                    BoxScopeInstance boxScopeInstance111119 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState1111111 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens1110, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density111119 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1111111.getIntValue() - density111119.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density111119.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var111119 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource111119 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda111111111111111117 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource111119, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda111111111111111118 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1111113), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var1111111 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111111111117, composableLambdaRememberComposableLambda111111111111111118, composableLambdaRememberComposableLambda111111111111111115, composableLambda1111, z1111111116, ll3Var1111111, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors1111113;
                    z8 = z1111111116;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier1113;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z1111111118;
                } else {
                    mutableIntState2 = mutableIntState;
                }
                dc.b(bm3VarB1110, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier1110, companion1111.getSetModifier());
                BoxScopeInstance boxScopeInstance1111110 = BoxScopeInstance.INSTANCE;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                MutableIntState mutableIntState1111112 = mutableIntState2;
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens1110, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Density density1111110 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1111112.getIntValue() - density1111110.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1111110.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                j59 j59Var1111110 = j59.a;
                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                final MappedInteractionSource mappedInteractionSource1111110 = (MappedInteractionSource) objRememberedValue3;
                i16 = 1;
                ComposableLambda composableLambdaRememberComposableLambda111111111111111119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                    public final void invoke(Composer composer3, int i18) {
                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                        }
                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1111110, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                ComposableLambda composableLambdaRememberComposableLambda1111111111111111110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1111113), composerStartRestartGroup, 54);
                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                ll3 ll3Var1111112 = (ll3) objRememberedValue4;
                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                NavigationBarItemLayout(composableLambdaRememberComposableLambda111111111111111119, composableLambdaRememberComposableLambda1111111111111111110, composableLambdaRememberComposableLambda111111111111111115, composableLambda1111, z1111111116, ll3Var1111112, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                navigationBarItemColors2 = navigationBarItemColors1111113;
                z8 = z1111111116;
                composer2 = composerStartRestartGroup;
                modifier2 = modifier1113;
                mutableInteractionSource2 = mutableInteractionSource3;
                bm3Var4 = bm3Var6;
                z7 = z1111111118;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                navigationBarItemColors2 = navigationBarItemColors;
                composer2 = composerStartRestartGroup;
                z7 = z4;
                z8 = z5;
                bm3Var4 = bm3Var3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 12582912;
        z5 = z3;
        c = ' ';
        if ((i & 100663296) != 0) {
            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(navigationBarItemColors)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
        }
        i10 = i2 & 256;
        if (i10 != 0) {
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i11 = 536870912;
                } else {
                    i11 = 268435456;
                }
                i3 |= i11;
            }
            i12 = i3;
            if ((i3 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        z5 = true;
                    }
                    if ((i2 & 128) != 0) {
                        navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i13 = i12 & (-234881025);
                    } else {
                        navigationBarItemColorsColors = navigationBarItemColors;
                        i13 = i12;
                    }
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    i14 = i13;
                    navigationBarItemColors3 = navigationBarItemColorsColors;
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        z5 = true;
                    }
                    if ((i2 & 128) != 0) {
                        navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i13 = i12 & (-234881025);
                    } else {
                        navigationBarItemColorsColors = navigationBarItemColors;
                        i13 = i12;
                    }
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    modifier3 = modifier2;
                    bm3Var5 = bm3Var3;
                    i14 = i13;
                    navigationBarItemColors3 = navigationBarItemColorsColors;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-224963495);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-7257538);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens1111 = MotionSchemeKeyTokens.DefaultEffects;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens1111, composerStartRestartGroup, 6);
                mutableInteractionSource5 = mutableInteractionSource4;
                boolean z1111111119 = z5;
                ComposableLambda composableLambdaRememberComposableLambda1111111111111111111 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
                if (bm3Var5 == null) {
                    composerStartRestartGroup.startReplaceGroup(-224036658);
                    composerStartRestartGroup.endReplaceGroup();
                    bm3Var6 = bm3Var5;
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-224036657);
                    final NavigationBarItemColors navigationBarItemColors1111114 = navigationBarItemColors3;
                    final boolean z11111111110 = z4;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var1117 = bm3Var5;
                    bm3Var6 = bm3Var1117;
                    ComposableLambda composableLambdaRememberComposableLambda1111111111111111112 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                        private static final long invoke$lambda$0(State<Color> state) {
                            return state.getValue().m6242unboximpl();
                        }

                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                            }
                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors1111114.m3644textColorWaAFU9c$material3(z, z11111111110), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var1117, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = composableLambdaRememberComposableLambda1111111111111111112;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableIntState = (MutableIntState) objRememberedValue;
                boolean z11111111111 = z4;
                Modifier modifier1114 = modifier3;
                ComposableLambda composableLambda1112 = composableLambda;
                Modifier modifierWeight$default1111 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier1114, z, mutableInteractionSource5, null, z11111111111, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    i15 = 0;
                    objRememberedValue2 = new gj5(mutableIntState, i15);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    i15 = 0;
                }
                Modifier modifierOnSizeChanged1111 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default1111, (nl3) objRememberedValue2);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy1111 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
                CompositionLocalMap currentCompositionLocalMap1111 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier1111 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged1111);
                ComposeUiNode.Companion companion1112 = ComposeUiNode.Companion;
                NavigationBarItemColors navigationBarItemColors1111115 = navigationBarItemColors3;
                constructor = companion1112.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB1111 = cc.b(companion1112, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy1111, composerM5355constructorimpl, currentCompositionLocalMap1111);
                if (composerM5355constructorimpl.getInserting()) {
                    mutableIntState2 = mutableIntState;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier1111, companion1112.getSetModifier());
                    BoxScopeInstance boxScopeInstance1111111 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    MutableIntState mutableIntState1111113 = mutableIntState2;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens1111, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density1111111 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1111113.getIntValue() - density1111111.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1111111.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var1111111 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    final MappedInteractionSource mappedInteractionSource1111111 = (MappedInteractionSource) objRememberedValue3;
                    i16 = 1;
                    ComposableLambda composableLambdaRememberComposableLambda1111111111111111113 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                        public final void invoke(Composer composer3, int i18) {
                            if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1111111, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    ComposableLambda composableLambdaRememberComposableLambda1111111111111111114 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1111115), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3 ll3Var1111113 = (ll3) objRememberedValue4;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111111111111113, composableLambdaRememberComposableLambda1111111111111111114, composableLambdaRememberComposableLambda1111111111111111111, composableLambda1112, z1111111119, ll3Var1111113, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationBarItemColors2 = navigationBarItemColors1111115;
                    z8 = z1111111119;
                    composer2 = composerStartRestartGroup;
                    modifier2 = modifier1114;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    bm3Var4 = bm3Var6;
                    z7 = z11111111111;
                } else {
                    mutableIntState2 = mutableIntState;
                }
                dc.b(bm3VarB1111, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier1111, companion1112.getSetModifier());
                BoxScopeInstance boxScopeInstance1111112 = BoxScopeInstance.INSTANCE;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                MutableIntState mutableIntState1111114 = mutableIntState2;
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens1111, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Density density1111112 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1111114.getIntValue() - density1111112.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1111112.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                j59 j59Var1111112 = j59.a;
                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                final MappedInteractionSource mappedInteractionSource1111112 = (MappedInteractionSource) objRememberedValue3;
                i16 = 1;
                ComposableLambda composableLambdaRememberComposableLambda1111111111111111115 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                    public final void invoke(Composer composer3, int i18) {
                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                        }
                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1111112, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                ComposableLambda composableLambdaRememberComposableLambda1111111111111111116 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1111115), composerStartRestartGroup, 54);
                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                ll3 ll3Var1111114 = (ll3) objRememberedValue4;
                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111111111111115, composableLambdaRememberComposableLambda1111111111111111116, composableLambdaRememberComposableLambda1111111111111111111, composableLambda1112, z1111111119, ll3Var1111114, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                navigationBarItemColors2 = navigationBarItemColors1111115;
                z8 = z1111111119;
                composer2 = composerStartRestartGroup;
                modifier2 = modifier1114;
                mutableInteractionSource2 = mutableInteractionSource3;
                bm3Var4 = bm3Var6;
                z7 = z11111111111;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                navigationBarItemColors2 = navigationBarItemColors;
                composer2 = composerStartRestartGroup;
                z7 = z4;
                z8 = z5;
                bm3Var4 = bm3Var3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 805306368;
        i12 = i3;
        if ((i3 & 306783379) != 306783378) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z6, i12 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z4 = true;
                }
                if (i6 != 0) {
                    bm3Var3 = null;
                }
                if (i8 != 0) {
                    z5 = true;
                }
                if ((i2 & 128) != 0) {
                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    i13 = i12 & (-234881025);
                } else {
                    navigationBarItemColorsColors = navigationBarItemColors;
                    i13 = i12;
                }
                if (i10 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                modifier3 = modifier2;
                bm3Var5 = bm3Var3;
                i14 = i13;
                navigationBarItemColors3 = navigationBarItemColorsColors;
            } else {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z4 = true;
                }
                if (i6 != 0) {
                    bm3Var3 = null;
                }
                if (i8 != 0) {
                    z5 = true;
                }
                if ((i2 & 128) != 0) {
                    navigationBarItemColorsColors = NavigationBarItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    i13 = i12 & (-234881025);
                } else {
                    navigationBarItemColorsColors = navigationBarItemColors;
                    i13 = i12;
                }
                if (i10 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                modifier3 = modifier2;
                bm3Var5 = bm3Var3;
                i14 = i13;
                navigationBarItemColors3 = navigationBarItemColorsColors;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(974293026, i14, -1, "androidx.compose.material3.NavigationBarItem (NavigationBar.kt:205)");
            }
            if (mutableInteractionSource3 == null) {
                composerStartRestartGroup.startReplaceGroup(-224963495);
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                    objRememberedValue6 = InteractionSourceKt.MutableInteractionSource();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                composerStartRestartGroup.endReplaceGroup();
                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue6;
            } else {
                composerStartRestartGroup.startReplaceGroup(-7257538);
                composerStartRestartGroup.endReplaceGroup();
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            MotionSchemeKeyTokens motionSchemeKeyTokens1112 = MotionSchemeKeyTokens.DefaultEffects;
            finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens1112, composerStartRestartGroup, 6);
            mutableInteractionSource5 = mutableInteractionSource4;
            boolean z11111111112 = z5;
            ComposableLambda composableLambdaRememberComposableLambda1111111111111111117 = ComposableLambdaKt.rememberComposableLambda(-876637252, true, new NavigationBarKt$NavigationBarItem$styledIcon$1(navigationBarItemColors3, z, z4, finiteAnimationSpecValue, bm3Var5, z5, bm3Var), composerStartRestartGroup, 54);
            if (bm3Var5 == null) {
                composerStartRestartGroup.startReplaceGroup(-224036658);
                composerStartRestartGroup.endReplaceGroup();
                bm3Var6 = bm3Var5;
                composableLambda = null;
            } else {
                composerStartRestartGroup.startReplaceGroup(-224036657);
                final NavigationBarItemColors navigationBarItemColors1111116 = navigationBarItemColors3;
                final boolean z11111111113 = z4;
                final bm3<? super Composer, ? super Integer, j59> bm3Var1118 = bm3Var5;
                bm3Var6 = bm3Var1118;
                ComposableLambda composableLambdaRememberComposableLambda1111111111111111118 = ComposableLambdaKt.rememberComposableLambda(802208206, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$styledLabel$1$1
                    private static final long invoke$lambda$0(State<Color> state) {
                        return state.getValue().m6242unboximpl();
                    }

                    public final void invoke(Composer composer3, int i18) {
                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(802208206, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:227)");
                        }
                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationBarItemColors1111116.m3644textColorWaAFU9c$material3(z, z11111111113), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationBarTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var1118, composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                composerStartRestartGroup.endReplaceGroup();
                composableLambda = composableLambdaRememberComposableLambda1111111111111111118;
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            mutableIntState = (MutableIntState) objRememberedValue;
            boolean z11111111114 = z4;
            Modifier modifier1115 = modifier3;
            ComposableLambda composableLambda1113 = composableLambda;
            Modifier modifierWeight$default1112 = RowScope.weight$default(rowScope, SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier1115, z, mutableInteractionSource5, null, z11111111114, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationBarHeight, 1, null), 1.0f, false, 2, null);
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                i15 = 0;
                objRememberedValue2 = new gj5(mutableIntState, i15);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                i15 = 0;
            }
            Modifier modifierOnSizeChanged1112 = OnRemeasuredModifierKt.onSizeChanged(modifierWeight$default1112, (nl3) objRememberedValue2);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy1112 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i15);
            CompositionLocalMap currentCompositionLocalMap1112 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier1112 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged1112);
            ComposeUiNode.Companion companion1113 = ComposeUiNode.Companion;
            NavigationBarItemColors navigationBarItemColors1111117 = navigationBarItemColors3;
            constructor = companion1113.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB1112 = cc.b(companion1113, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy1112, composerM5355constructorimpl, currentCompositionLocalMap1112);
            if (composerM5355constructorimpl.getInserting()) {
                mutableIntState2 = mutableIntState;
                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier1112, companion1113.getSetModifier());
                BoxScopeInstance boxScopeInstance1111113 = BoxScopeInstance.INSTANCE;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                MutableIntState mutableIntState1111115 = mutableIntState2;
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens1112, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Density density1111113 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1111115.getIntValue() - density1111113.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1111113.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                j59 j59Var1111113 = j59.a;
                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                final MappedInteractionSource mappedInteractionSource1111113 = (MappedInteractionSource) objRememberedValue3;
                i16 = 1;
                ComposableLambda composableLambdaRememberComposableLambda1111111111111111119 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                    public final void invoke(Composer composer3, int i18) {
                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                        }
                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1111113, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                ComposableLambda composableLambdaRememberComposableLambda11111111111111111110 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1111117), composerStartRestartGroup, 54);
                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                ll3 ll3Var1111115 = (ll3) objRememberedValue4;
                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                NavigationBarItemLayout(composableLambdaRememberComposableLambda1111111111111111119, composableLambdaRememberComposableLambda11111111111111111110, composableLambdaRememberComposableLambda1111111111111111117, composableLambda1113, z11111111112, ll3Var1111115, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                navigationBarItemColors2 = navigationBarItemColors1111117;
                z8 = z11111111112;
                composer2 = composerStartRestartGroup;
                modifier2 = modifier1115;
                mutableInteractionSource2 = mutableInteractionSource3;
                bm3Var4 = bm3Var6;
                z7 = z11111111114;
            } else {
                mutableIntState2 = mutableIntState;
            }
            dc.b(bm3VarB1112, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier1112, companion1113.getSetModifier());
            BoxScopeInstance boxScopeInstance1111114 = BoxScopeInstance.INSTANCE;
            if (z) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            MutableIntState mutableIntState1111116 = mutableIntState2;
            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, MotionSchemeKt.value(motionSchemeKeyTokens1112, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
            if (z) {
                f2 = 1.0f;
            } else {
                f2 = 0.0f;
            }
            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
            Density density1111114 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState1111116.getIntValue() - density1111114.mo1428roundToPx0680j_4(NavigationBarVerticalItemTokens.INSTANCE.m4916getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density1111114.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
            j59 j59Var1111114 = j59.a;
            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            final MappedInteractionSource mappedInteractionSource1111114 = (MappedInteractionSource) objRememberedValue3;
            i16 = 1;
            ComposableLambda composableLambdaRememberComposableLambda11111111111111111111 = ComposableLambdaKt.rememberComposableLambda(-2082182507, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItem$2$indicatorRipple$1
                public final void invoke(Composer composer3, int i18) {
                    if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-2082182507, i18, -1, "androidx.compose.material3.NavigationBarItem.<anonymous>.<anonymous> (NavigationBar.kt:289)");
                    }
                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), ShapesKt.getValue(NavigationBarTokens.INSTANCE.getItemActiveIndicatorShape(), composer3, 6)), mappedInteractionSource1111114, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54);
            ComposableLambda composableLambdaRememberComposableLambda11111111111111111112 = ComposableLambdaKt.rememberComposableLambda(-799524251, true, new NavigationBarKt$NavigationBarItem$2$indicator$1(stateAnimateFloatAsState, navigationBarItemColors1111117), composerStartRestartGroup, 54);
            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged2) {
                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            } else {
                objRememberedValue4 = new sg0(stateAnimateFloatAsState, i16);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            ll3 ll3Var1111116 = (ll3) objRememberedValue4;
            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (zChanged3) {
                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            } else {
                objRememberedValue5 = new tg0(stateAnimateFloatAsState2, 1);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            NavigationBarItemLayout(composableLambdaRememberComposableLambda11111111111111111111, composableLambdaRememberComposableLambda11111111111111111112, composableLambdaRememberComposableLambda1111111111111111117, composableLambda1113, z11111111112, ll3Var1111116, (ll3) objRememberedValue5, composerStartRestartGroup, ((i14 >> 9) & 57344) | 438);
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            navigationBarItemColors2 = navigationBarItemColors1111117;
            z8 = z11111111112;
            composer2 = composerStartRestartGroup;
            modifier2 = modifier1115;
            mutableInteractionSource2 = mutableInteractionSource3;
            bm3Var4 = bm3Var6;
            z7 = z11111111114;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            navigationBarItemColors2 = navigationBarItemColors;
            composer2 = composerStartRestartGroup;
            z7 = z4;
            z8 = z5;
            bm3Var4 = bm3Var3;
            mutableInteractionSource2 = mutableInteractionSource;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hj5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationBarKt.NavigationBarItem$lambda$16(rowScope, z, ll3Var, bm3Var, modifier2, z7, bm3Var4, z8, navigationBarItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float NavigationBarItem$lambda$15$lambda$12$lambda$11(State state) {
        return ((Number) state.getValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float NavigationBarItem$lambda$15$lambda$14$lambda$13(State state) {
        return ((Number) state.getValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationBarItem$lambda$16(RowScope rowScope, boolean z, ll3 ll3Var, bm3 bm3Var, Modifier modifier, boolean z2, bm3 bm3Var2, boolean z3, NavigationBarItemColors navigationBarItemColors, MutableInteractionSource mutableInteractionSource, int i, int i2, Composer composer, int i3) {
        NavigationBarItem(rowScope, z, ll3Var, bm3Var, modifier, z2, bm3Var2, z3, navigationBarItemColors, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationBarItem$lambda$8$lambda$7(MutableIntState mutableIntState, IntSize intSize) {
        mutableIntState.setIntValue((int) (intSize.m9217unboximpl() >> 32));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:106:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:108:0x01da  */
    /* JADX WARN: Code duplicated, block: B:109:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:113:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:118:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:121:0x0226  */
    /* JADX WARN: Code duplicated, block: B:124:0x0232  */
    /* JADX WARN: Code duplicated, block: B:125:0x0236  */
    /* JADX WARN: Code duplicated, block: B:130:0x0255  */
    /* JADX WARN: Code duplicated, block: B:132:0x0267  */
    /* JADX WARN: Code duplicated, block: B:135:0x0279  */
    /* JADX WARN: Code duplicated, block: B:94:0x017f  */
    /* JADX WARN: Code duplicated, block: B:97:0x018b  */
    /* JADX WARN: Code duplicated, block: B:98:0x018f  */
    private static final void NavigationBarItemLayout(final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final bm3<? super Composer, ? super Integer, j59> bm3Var3, final bm3<? super Composer, ? super Integer, j59> bm3Var4, final boolean z, final ll3<Float> ll3Var, final ll3<Float> ll3Var2, Composer composer, final int i) {
        int i2;
        int i3;
        Alignment.Companion companion;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        bm3 bm3VarB;
        boolean z2;
        boolean z3;
        Object objRememberedValue;
        int currentCompositeKeyHash2;
        ll3<ComposeUiNode> constructor2;
        Composer composerM5355constructorimpl2;
        bm3 bm3VarB2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1019541078);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(bm3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var4) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 1048576 : 524288;
        }
        if (composerStartRestartGroup.shouldExecute((599187 & i2) != 599186, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1019541078, i2, -1, "androidx.compose.material3.NavigationBarItemLayout (NavigationBar.kt:553)");
            }
            Modifier.Companion companion2 = Modifier.Companion;
            Modifier modifierBadgeBounds = BadgeKt.badgeBounds(companion2);
            int i4 = 57344 & i2;
            boolean z4 = ((i2 & 7168) == 2048) | ((3670016 & i2) == 1048576) | (i4 == 16384);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z4 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new MeasurePolicy() { // from class: androidx.compose.material3.NavigationBarKt$NavigationBarItemLayout$1$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                        Measurable measurable;
                        Placeable placeableMo7702measureBRTryo0;
                        float fFloatValue = ll3Var2.invoke().floatValue();
                        float f = fFloatValue < 0.0f ? 0.0f : fFloatValue;
                        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
                        int size = list.size();
                        for (int i5 = 0; i5 < size; i5++) {
                            Measurable measurable2 = list.get(i5);
                            if (aa4.e(LayoutIdKt.getLayoutId(measurable2), "icon")) {
                                Placeable placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
                                int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(NavigationBarKt.IndicatorHorizontalPadding * 2.0f)) + placeableMo7702measureBRTryo1.getWidth();
                                int iB = w65.b(iMo1428roundToPx0680j_4 * f);
                                int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(NavigationBarKt.getIndicatorVerticalPadding() * 2.0f)) + placeableMo7702measureBRTryo1.getHeight();
                                List<? extends Measurable> list2 = list;
                                int size2 = list2.size();
                                for (int i6 = 0; i6 < size2; i6++) {
                                    Measurable measurable3 = list.get(i6);
                                    if (aa4.e(LayoutIdKt.getLayoutId(measurable3), "indicatorRipple")) {
                                        Placeable placeableMo7702measureBRTryo2 = measurable3.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(iMo1428roundToPx0680j_4, iMo1428roundToPx0680j_5));
                                        int size3 = list2.size();
                                        int i7 = 0;
                                        while (true) {
                                            if (i7 >= size3) {
                                                measurable = null;
                                                break;
                                            }
                                            measurable = list.get(i7);
                                            if (aa4.e(LayoutIdKt.getLayoutId(measurable), "indicator")) {
                                                break;
                                            }
                                            i7++;
                                        }
                                        Measurable measurable4 = measurable;
                                        Placeable placeableMo7702measureBRTryo3 = measurable4 != null ? measurable4.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(iB, iMo1428roundToPx0680j_5)) : null;
                                        if (bm3Var4 != null) {
                                            int size4 = list2.size();
                                            int i8 = 0;
                                            while (true) {
                                                if (i8 >= size4) {
                                                    throw hm.d("Collection contains no element matching the predicate.");
                                                }
                                                Measurable measurable5 = list.get(i8);
                                                if (aa4.e(LayoutIdKt.getLayoutId(measurable5), Constants.ScionAnalytics.PARAM_LABEL)) {
                                                    placeableMo7702measureBRTryo0 = measurable5.mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
                                                    break;
                                                }
                                                i8++;
                                            }
                                        } else {
                                            placeableMo7702measureBRTryo0 = null;
                                        }
                                        if (bm3Var4 == null) {
                                            return NavigationBarKt.m3650placeIconX9ElhV4(measureScope, placeableMo7702measureBRTryo1, placeableMo7702measureBRTryo2, placeableMo7702measureBRTryo3, j);
                                        }
                                        placeableMo7702measureBRTryo0.getClass();
                                        return NavigationBarKt.m3651placeLabelAndIconzUg2_y0(measureScope, placeableMo7702measureBRTryo0, placeableMo7702measureBRTryo1, placeableMo7702measureBRTryo2, placeableMo7702measureBRTryo3, j, z, f);
                                    }
                                }
                                throw hm.d("Collection contains no element matching the predicate.");
                            }
                        }
                        throw hm.d("Collection contains no element matching the predicate.");
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue2;
            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierBadgeBounds);
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor3 = companion3.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor3);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB3 = cc.b(companion3, composerM5355constructorimpl3, measurePolicy, composerM5355constructorimpl3, currentCompositionLocalMap);
            if (composerM5355constructorimpl3.getInserting()) {
                i3 = i2;
            } else {
                i3 = i2;
                if (!aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier, companion3.getSetModifier());
                bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i3 & 14));
                bm3Var2.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 3) & 14));
                Modifier modifierLayoutId = LayoutIdKt.layoutId(companion2, IconLayoutIdTag);
                companion = Alignment.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierLayoutId);
                constructor = companion3.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap2);
                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                bm3Var3.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 14));
                composerStartRestartGroup.endNode();
                if (bm3Var4 != null) {
                    composerStartRestartGroup.startReplaceGroup(-660471321);
                    Modifier modifierLayoutId2 = LayoutIdKt.layoutId(companion2, "label");
                    if (i4 == 16384) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z3 = z2 | ((i3 & 458752) == 131072);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new nl3() { // from class: cj5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return NavigationBarKt.NavigationBarItemLayout$lambda$22$lambda$20$lambda$19(z, ll3Var, (GraphicsLayerScope) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierGraphicsLayer = GraphicsLayerModifierKt.graphicsLayer(modifierLayoutId2, (nl3) objRememberedValue);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), false);
                    currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierGraphicsLayer);
                    constructor2 = companion3.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap3);
                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier3, companion3.getSetModifier());
                    js2.d(bm3Var4, composerStartRestartGroup, (i3 >> 9) & 14);
                } else {
                    composerStartRestartGroup.startReplaceGroup(-660200319);
                    composerStartRestartGroup.endReplaceGroup();
                }
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier, companion3.getSetModifier());
            bm3Var.invoke(composerStartRestartGroup, Integer.valueOf(i3 & 14));
            bm3Var2.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 3) & 14));
            Modifier modifierLayoutId3 = LayoutIdKt.layoutId(companion2, IconLayoutIdTag);
            companion = Alignment.Companion;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), false);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierLayoutId3);
            constructor = companion3.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap4);
            if (composerM5355constructorimpl.getInserting()) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            } else {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion3.getSetModifier());
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
            bm3Var3.invoke(composerStartRestartGroup, Integer.valueOf((i3 >> 6) & 14));
            composerStartRestartGroup.endNode();
            if (bm3Var4 != null) {
                composerStartRestartGroup.startReplaceGroup(-660471321);
                Modifier modifierLayoutId4 = LayoutIdKt.layoutId(companion2, "label");
                if (i4 == 16384) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z3 = z2 | ((i3 & 458752) == 131072);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z3) {
                    objRememberedValue = new nl3() { // from class: cj5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return NavigationBarKt.NavigationBarItemLayout$lambda$22$lambda$20$lambda$19(z, ll3Var, (GraphicsLayerScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new nl3() { // from class: cj5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return NavigationBarKt.NavigationBarItemLayout$lambda$22$lambda$20$lambda$19(z, ll3Var, (GraphicsLayerScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierGraphicsLayer2 = GraphicsLayerModifierKt.graphicsLayer(modifierLayoutId4, (nl3) objRememberedValue);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), false);
                currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierGraphicsLayer2);
                constructor2 = companion3.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl2, currentCompositionLocalMap5);
                if (composerM5355constructorimpl2.getInserting()) {
                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                } else {
                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                }
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier5, companion3.getSetModifier());
                js2.d(bm3Var4, composerStartRestartGroup, (i3 >> 9) & 14);
            } else {
                composerStartRestartGroup.startReplaceGroup(-660200319);
                composerStartRestartGroup.endReplaceGroup();
            }
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: dj5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationBarKt.NavigationBarItemLayout$lambda$23(bm3Var, bm3Var2, bm3Var3, bm3Var4, z, ll3Var, ll3Var2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationBarItemLayout$lambda$22$lambda$20$lambda$19(boolean z, ll3 ll3Var, GraphicsLayerScope graphicsLayerScope) {
        graphicsLayerScope.setAlpha(z ? 1.0f : ((Number) ll3Var.invoke()).floatValue());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationBarItemLayout$lambda$23(bm3 bm3Var, bm3 bm3Var2, bm3 bm3Var3, bm3 bm3Var4, boolean z, ll3 ll3Var, ll3 ll3Var2, int i, Composer composer, int i2) {
        NavigationBarItemLayout(bm3Var, bm3Var2, bm3Var3, bm3Var4, z, ll3Var, ll3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationBar_HsRjFd4$lambda$1(Modifier modifier, long j, long j2, float f, WindowInsets windowInsets, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        m3647NavigationBarHsRjFd4(modifier, j, j2, f, windowInsets, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static final float getIndicatorVerticalPadding() {
        return IndicatorVerticalPadding;
    }

    public static final ProvidableCompositionLocal<NavigationBarOverride> getLocalNavigationBarOverride() {
        return LocalNavigationBarOverride;
    }

    public static final float getNavigationBarIndicatorToLabelPadding() {
        return NavigationBarIndicatorToLabelPadding;
    }

    public static final float getNavigationBarItemHorizontalPadding() {
        return NavigationBarItemHorizontalPadding;
    }

    public static final float getNavigationBarItemToIconMinimumPadding() {
        return NavigationBarItemToIconMinimumPadding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: placeIcon-X9ElhV4, reason: not valid java name */
    public static final MeasureResult m3650placeIconX9ElhV4(MeasureScope measureScope, final Placeable placeable, final Placeable placeable2, final Placeable placeable3, long j) {
        int iM8995getMaxWidthimpl;
        if (Constraints.m8995getMaxWidthimpl(j) == Integer.MAX_VALUE) {
            iM8995getMaxWidthimpl = (measureScope.mo1428roundToPx0680j_4(NavigationBarItemToIconMinimumPadding) * 2) + placeable.getWidth();
        } else {
            iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        }
        final int i = iM8995getMaxWidthimpl;
        final int iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(j, measureScope.mo1428roundToPx0680j_4(NavigationBarHeight));
        final int iB = ug.b(i, 2, placeable);
        final int iB2 = tg.b(iM9011constrainHeightK40F9xA, 2, placeable);
        final int iB3 = ug.b(i, 2, placeable2);
        final int iB4 = tg.b(iM9011constrainHeightK40F9xA, 2, placeable2);
        return MeasureScope.layout$default(measureScope, i, iM9011constrainHeightK40F9xA, null, new nl3() { // from class: ij5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                Placeable placeable4 = placeable3;
                int i2 = iB;
                int i3 = iB2;
                Placeable placeable5 = placeable;
                int i4 = iB3;
                int i5 = iB4;
                return NavigationBarKt.placeIcon_X9ElhV4$lambda$25(placeable4, placeable5, i2, i3, placeable2, i4, i5, i, iM9011constrainHeightK40F9xA, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 placeIcon_X9ElhV4$lambda$25(Placeable placeable, Placeable placeable2, int i, int i2, Placeable placeable3, int i3, int i4, int i5, int i6, Placeable.PlacementScope placementScope) {
        if (placeable != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, ug.b(i5, 2, placeable), tg.b(i6, 2, placeable), 0.0f, 4, null);
        }
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i, i2, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i3, i4, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: placeLabelAndIcon-zUg2_y0, reason: not valid java name */
    public static final MeasureResult m3651placeLabelAndIconzUg2_y0(final MeasureScope measureScope, final Placeable placeable, final Placeable placeable2, final Placeable placeable3, final Placeable placeable4, long j, final boolean z, final float f) {
        int iM8995getMaxWidthimpl;
        float height = placeable2.getHeight();
        float f2 = IndicatorVerticalPadding;
        float fMo1434toPx0680j_4 = measureScope.mo1434toPx0680j_4(f2) + height;
        float f3 = NavigationBarIndicatorToLabelPadding;
        float fMo1434toPx0680j_5 = measureScope.mo1434toPx0680j_4(f3) + fMo1434toPx0680j_4 + placeable.getHeight();
        float fM8996getMinHeightimpl = (Constraints.m8996getMinHeightimpl(j) - fMo1434toPx0680j_5) / 2.0f;
        float fMo1434toPx0680j_6 = measureScope.mo1434toPx0680j_4(f2);
        final float f4 = fM8996getMinHeightimpl < fMo1434toPx0680j_6 ? fMo1434toPx0680j_6 : fM8996getMinHeightimpl;
        float f5 = (f4 * 2.0f) + fMo1434toPx0680j_5;
        final float height2 = (1.0f - f) * ((z ? f4 : (f5 - placeable2.getHeight()) / 2.0f) - f4);
        final float fMo1434toPx0680j_7 = measureScope.mo1434toPx0680j_4(f3) + measureScope.mo1434toPx0680j_4(f2) + placeable2.getHeight() + f4;
        if (Constraints.m8995getMaxWidthimpl(j) == Integer.MAX_VALUE) {
            iM8995getMaxWidthimpl = (measureScope.mo1428roundToPx0680j_4(NavigationBarItemToIconMinimumPadding) * 2) + placeable2.getWidth();
        } else {
            iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        }
        final int i = iM8995getMaxWidthimpl;
        final int iB = ug.b(i, 2, placeable);
        final int iB2 = ug.b(i, 2, placeable2);
        final int iB3 = ug.b(i, 2, placeable3);
        final float fMo1434toPx0680j_8 = f4 - measureScope.mo1434toPx0680j_4(f2);
        return MeasureScope.layout$default(measureScope, i, w65.b(f5), null, new nl3() { // from class: ej5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return NavigationBarKt.placeLabelAndIcon_zUg2_y0$lambda$27(placeable4, z, f, placeable, iB, fMo1434toPx0680j_7, height2, placeable2, iB2, f4, placeable3, iB3, fMo1434toPx0680j_8, i, measureScope, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 placeLabelAndIcon_zUg2_y0$lambda$27(Placeable placeable, boolean z, float f, Placeable placeable2, int i, float f2, float f3, Placeable placeable3, int i2, float f4, Placeable placeable4, int i3, float f5, int i4, MeasureScope measureScope, Placeable.PlacementScope placementScope) {
        if (placeable != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, ug.b(i4, 2, placeable), w65.b((f4 - measureScope.mo1428roundToPx0680j_4(IndicatorVerticalPadding)) + f3), 0.0f, 4, null);
        }
        if (z || f != 0.0f) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i, w65.b(f2 + f3), 0.0f, 4, null);
        }
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i2, w65.b(f4 + f3), 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, i3, w65.b(f5 + f3), 0.0f, 4, null);
        return j59.a;
    }
}
