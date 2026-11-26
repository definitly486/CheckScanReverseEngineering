package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.NavigationRailKt;
import androidx.compose.material3.internal.MappedInteractionSource;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.NavigationRailBaselineItemTokens;
import androidx.compose.material3.tokens.NavigationRailCollapsedTokens;
import androidx.compose.material3.tokens.NavigationRailVerticalItemTokens;
import androidx.compose.material3.tokens.ShapeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
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
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import com.google.firebase.messaging.Constants;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.f80;
import defpackage.hm;
import defpackage.j59;
import defpackage.js2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pl5;
import defpackage.tg;
import defpackage.ug;
import defpackage.uj;
import defpackage.w65;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationRailKt {
    private static final String IconLayoutIdTag = "icon";
    private static final float IndicatorHorizontalPadding;
    private static final String IndicatorLayoutIdTag = "indicator";
    private static final String IndicatorRippleLayoutIdTag = "indicatorRipple";
    private static final float IndicatorVerticalPaddingNoLabel;
    private static final float IndicatorVerticalPaddingWithLabel;
    private static final String LabelLayoutIdTag = "label";
    private static final ProvidableCompositionLocal<NavigationRailOverride> LocalNavigationRailOverride;
    private static final float NavigationRailItemHeight;
    private static final float NavigationRailItemVerticalPadding;
    private static final float NavigationRailVerticalPadding = Dp.m9042constructorimpl(4.0f);
    private static final float NavigationRailHeaderPadding = Dp.m9042constructorimpl(8.0f);
    private static final float NavigationRailItemWidth = NavigationRailCollapsedTokens.INSTANCE.m4935getNarrowContainerWidthD9Ej5fM();

    static {
        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens = NavigationRailVerticalItemTokens.INSTANCE;
        NavigationRailItemHeight = navigationRailVerticalItemTokens.m4948getActiveIndicatorWidthD9Ej5fM();
        NavigationRailItemVerticalPadding = Dp.m9042constructorimpl(4.0f);
        float fM4948getActiveIndicatorWidthD9Ej5fM = navigationRailVerticalItemTokens.m4948getActiveIndicatorWidthD9Ej5fM();
        NavigationRailBaselineItemTokens navigationRailBaselineItemTokens = NavigationRailBaselineItemTokens.INSTANCE;
        IndicatorHorizontalPadding = Dp.m9042constructorimpl(Dp.m9042constructorimpl(fM4948getActiveIndicatorWidthD9Ej5fM - navigationRailBaselineItemTokens.m4931getIconSizeD9Ej5fM()) / 2.0f);
        IndicatorVerticalPaddingWithLabel = Dp.m9042constructorimpl(Dp.m9042constructorimpl(navigationRailVerticalItemTokens.m4947getActiveIndicatorHeightD9Ej5fM() - navigationRailBaselineItemTokens.m4931getIconSizeD9Ej5fM()) / 2.0f);
        IndicatorVerticalPaddingNoLabel = Dp.m9042constructorimpl(Dp.m9042constructorimpl(navigationRailVerticalItemTokens.m4948getActiveIndicatorWidthD9Ej5fM() - navigationRailBaselineItemTokens.m4931getIconSizeD9Ej5fM()) / 2.0f);
        LocalNavigationRailOverride = CompositionLocalKt.compositionLocalOf$default(null, new pl5(0), 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x011c  */
    /* JADX WARN: Code duplicated, block: B:104:0x0122  */
    /* JADX WARN: Code duplicated, block: B:105:0x0133  */
    /* JADX WARN: Code duplicated, block: B:108:0x013e  */
    /* JADX WARN: Code duplicated, block: B:111:0x015e  */
    /* JADX WARN: Code duplicated, block: B:113:0x016a  */
    /* JADX WARN: Code duplicated, block: B:116:0x0178  */
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
    /* JADX INFO: renamed from: NavigationRail-qi6gXK8, reason: not valid java name */
    public static final void m3711NavigationRailqi6gXK8(Modifier modifier, long j, long j2, dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, WindowInsets windowInsets, final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        long containerColor;
        long jM3275contentColorForek8zF_U;
        dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var3;
        WindowInsets windowInsets2;
        dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var4;
        int i4;
        boolean z;
        Modifier modifier3;
        final long j3;
        final long j4;
        final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var5;
        final WindowInsets windowInsets3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        WindowInsets windowInsets4;
        long j5;
        long j6;
        dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var6;
        Composer composerStartRestartGroup = composer.startRestartGroup(331386280);
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
                jM3275contentColorForek8zF_U = j2;
                int i7 = composerStartRestartGroup.changed(jM3275contentColorForek8zF_U) ? 256 : 128;
                i3 |= i7;
            } else {
                jM3275contentColorForek8zF_U = j2;
            }
            i3 |= i7;
        } else {
            jM3275contentColorForek8zF_U = j2;
        }
        int i8 = i2 & 8;
        if (i8 == 0) {
            if ((i & 3072) == 0) {
                dm3Var3 = dm3Var;
                i3 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 2048 : 1024;
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
                    dm3Var4 = dm3Var2;
                    if (composerStartRestartGroup.changedInstance(dm3Var4)) {
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
                            containerColor = NavigationRailDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i3 &= -113;
                        }
                        if ((i2 & 4) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i3 >> 3) & 14);
                            i3 &= -897;
                        }
                        if (i8 != 0) {
                            dm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            modifier3 = modifier4;
                            windowInsets4 = NavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                            j5 = containerColor;
                            j6 = jM3275contentColorForek8zF_U;
                            dm3Var6 = dm3Var3;
                        } else {
                            modifier3 = modifier4;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(331386280, i3, -1, "androidx.compose.material3.NavigationRail (NavigationRail.kt:126)");
                        }
                        ((NavigationRailOverride) composerStartRestartGroup.consume(LocalNavigationRailOverride)).NavigationRail(new NavigationRailOverrideScope(modifier3, j5, j6, dm3Var6, windowInsets4, dm3Var4, null), composerStartRestartGroup, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j3 = j5;
                        j4 = j6;
                        dm3Var5 = dm3Var6;
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
                    j6 = jM3275contentColorForek8zF_U;
                    dm3Var6 = dm3Var3;
                    windowInsets4 = windowInsets2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(331386280, i3, -1, "androidx.compose.material3.NavigationRail (NavigationRail.kt:126)");
                    }
                    ((NavigationRailOverride) composerStartRestartGroup.consume(LocalNavigationRailOverride)).NavigationRail(new NavigationRailOverrideScope(modifier3, j5, j6, dm3Var6, windowInsets4, dm3Var4, null), composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j3 = j5;
                    j4 = j6;
                    dm3Var5 = dm3Var6;
                    windowInsets3 = windowInsets4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    j3 = containerColor;
                    j4 = jM3275contentColorForek8zF_U;
                    dm3Var5 = dm3Var3;
                    windowInsets3 = windowInsets2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier5 = modifier3;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationRailKt.NavigationRail_qi6gXK8$lambda$1(modifier5, j3, j4, dm3Var5, windowInsets3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            dm3Var4 = dm3Var2;
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
                        containerColor = NavigationRailDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i3 &= -113;
                    }
                    if ((i2 & 4) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i3 >> 3) & 14);
                        i3 &= -897;
                    }
                    if (i8 != 0) {
                        dm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        modifier3 = modifier4;
                        windowInsets4 = NavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        j5 = containerColor;
                        j6 = jM3275contentColorForek8zF_U;
                        dm3Var6 = dm3Var3;
                    } else {
                        modifier3 = modifier4;
                        j5 = containerColor;
                        j6 = jM3275contentColorForek8zF_U;
                        dm3Var6 = dm3Var3;
                        windowInsets4 = windowInsets2;
                    }
                } else {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 2) != 0) {
                        containerColor = NavigationRailDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i3 &= -113;
                    }
                    if ((i2 & 4) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i3 >> 3) & 14);
                        i3 &= -897;
                    }
                    if (i8 != 0) {
                        dm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        modifier3 = modifier4;
                        windowInsets4 = NavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        j5 = containerColor;
                        j6 = jM3275contentColorForek8zF_U;
                        dm3Var6 = dm3Var3;
                    } else {
                        modifier3 = modifier4;
                        j5 = containerColor;
                        j6 = jM3275contentColorForek8zF_U;
                        dm3Var6 = dm3Var3;
                        windowInsets4 = windowInsets2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(331386280, i3, -1, "androidx.compose.material3.NavigationRail (NavigationRail.kt:126)");
                }
                ((NavigationRailOverride) composerStartRestartGroup.consume(LocalNavigationRailOverride)).NavigationRail(new NavigationRailOverrideScope(modifier3, j5, j6, dm3Var6, windowInsets4, dm3Var4, null), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = j5;
                j4 = j6;
                dm3Var5 = dm3Var6;
                windowInsets3 = windowInsets4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j3 = containerColor;
                j4 = jM3275contentColorForek8zF_U;
                dm3Var5 = dm3Var3;
                windowInsets3 = windowInsets2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier6 = modifier3;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationRailKt.NavigationRail_qi6gXK8$lambda$1(modifier6, j3, j4, dm3Var5, windowInsets3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        dm3Var3 = dm3Var;
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
                dm3Var4 = dm3Var2;
                if (composerStartRestartGroup.changedInstance(dm3Var4)) {
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
                        containerColor = NavigationRailDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i3 &= -113;
                    }
                    if ((i2 & 4) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i3 >> 3) & 14);
                        i3 &= -897;
                    }
                    if (i8 != 0) {
                        dm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        modifier3 = modifier4;
                        windowInsets4 = NavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        j5 = containerColor;
                        j6 = jM3275contentColorForek8zF_U;
                        dm3Var6 = dm3Var3;
                    } else {
                        modifier3 = modifier4;
                        j5 = containerColor;
                        j6 = jM3275contentColorForek8zF_U;
                        dm3Var6 = dm3Var3;
                        windowInsets4 = windowInsets2;
                    }
                } else {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 2) != 0) {
                        containerColor = NavigationRailDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i3 &= -113;
                    }
                    if ((i2 & 4) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i3 >> 3) & 14);
                        i3 &= -897;
                    }
                    if (i8 != 0) {
                        dm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        modifier3 = modifier4;
                        windowInsets4 = NavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        j5 = containerColor;
                        j6 = jM3275contentColorForek8zF_U;
                        dm3Var6 = dm3Var3;
                    } else {
                        modifier3 = modifier4;
                        j5 = containerColor;
                        j6 = jM3275contentColorForek8zF_U;
                        dm3Var6 = dm3Var3;
                        windowInsets4 = windowInsets2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(331386280, i3, -1, "androidx.compose.material3.NavigationRail (NavigationRail.kt:126)");
                }
                ((NavigationRailOverride) composerStartRestartGroup.consume(LocalNavigationRailOverride)).NavigationRail(new NavigationRailOverrideScope(modifier3, j5, j6, dm3Var6, windowInsets4, dm3Var4, null), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = j5;
                j4 = j6;
                dm3Var5 = dm3Var6;
                windowInsets3 = windowInsets4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j3 = containerColor;
                j4 = jM3275contentColorForek8zF_U;
                dm3Var5 = dm3Var3;
                windowInsets3 = windowInsets2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier7 = modifier3;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationRailKt.NavigationRail_qi6gXK8$lambda$1(modifier7, j3, j4, dm3Var5, windowInsets3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        dm3Var4 = dm3Var2;
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
                    containerColor = NavigationRailDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i3 >> 3) & 14);
                    i3 &= -897;
                }
                if (i8 != 0) {
                    dm3Var3 = null;
                }
                if ((i2 & 16) != 0) {
                    i3 &= -57345;
                    modifier3 = modifier4;
                    windowInsets4 = NavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                    j5 = containerColor;
                    j6 = jM3275contentColorForek8zF_U;
                    dm3Var6 = dm3Var3;
                } else {
                    modifier3 = modifier4;
                    j5 = containerColor;
                    j6 = jM3275contentColorForek8zF_U;
                    dm3Var6 = dm3Var3;
                    windowInsets4 = windowInsets2;
                }
            } else {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 2) != 0) {
                    containerColor = NavigationRailDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i3 >> 3) & 14);
                    i3 &= -897;
                }
                if (i8 != 0) {
                    dm3Var3 = null;
                }
                if ((i2 & 16) != 0) {
                    i3 &= -57345;
                    modifier3 = modifier4;
                    windowInsets4 = NavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                    j5 = containerColor;
                    j6 = jM3275contentColorForek8zF_U;
                    dm3Var6 = dm3Var3;
                } else {
                    modifier3 = modifier4;
                    j5 = containerColor;
                    j6 = jM3275contentColorForek8zF_U;
                    dm3Var6 = dm3Var3;
                    windowInsets4 = windowInsets2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(331386280, i3, -1, "androidx.compose.material3.NavigationRail (NavigationRail.kt:126)");
            }
            ((NavigationRailOverride) composerStartRestartGroup.consume(LocalNavigationRailOverride)).NavigationRail(new NavigationRailOverrideScope(modifier3, j5, j6, dm3Var6, windowInsets4, dm3Var4, null), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j3 = j5;
            j4 = j6;
            dm3Var5 = dm3Var6;
            windowInsets3 = windowInsets4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            j3 = containerColor;
            j4 = jM3275contentColorForek8zF_U;
            dm3Var5 = dm3Var3;
            windowInsets3 = windowInsets2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier8 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationRailKt.NavigationRail_qi6gXK8$lambda$1(modifier8, j3, j4, dm3Var5, windowInsets3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011c  */
    /* JADX WARN: Code duplicated, block: B:101:0x011e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0127  */
    /* JADX WARN: Code duplicated, block: B:106:0x0132  */
    /* JADX WARN: Code duplicated, block: B:114:0x014b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x014d  */
    /* JADX WARN: Code duplicated, block: B:117:0x0152  */
    /* JADX WARN: Code duplicated, block: B:119:0x0155  */
    /* JADX WARN: Code duplicated, block: B:121:0x0158  */
    /* JADX WARN: Code duplicated, block: B:122:0x015a  */
    /* JADX WARN: Code duplicated, block: B:125:0x0160  */
    /* JADX WARN: Code duplicated, block: B:128:0x016e  */
    /* JADX WARN: Code duplicated, block: B:130:0x0171  */
    /* JADX WARN: Code duplicated, block: B:133:0x017d  */
    /* JADX WARN: Code duplicated, block: B:135:0x0188  */
    /* JADX WARN: Code duplicated, block: B:137:0x019a  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:142:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:143:0x01df  */
    /* JADX WARN: Code duplicated, block: B:146:0x025b  */
    /* JADX WARN: Code duplicated, block: B:149:0x0267  */
    /* JADX WARN: Code duplicated, block: B:150:0x026b  */
    /* JADX WARN: Code duplicated, block: B:153:0x027c  */
    /* JADX WARN: Code duplicated, block: B:156:0x028d  */
    /* JADX WARN: Code duplicated, block: B:160:0x029d  */
    /* JADX WARN: Code duplicated, block: B:162:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:165:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:166:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:169:0x031e  */
    /* JADX WARN: Code duplicated, block: B:171:0x0326  */
    /* JADX WARN: Code duplicated, block: B:174:0x0333  */
    /* JADX WARN: Code duplicated, block: B:175:0x0348  */
    /* JADX WARN: Code duplicated, block: B:178:0x037d  */
    /* JADX WARN: Code duplicated, block: B:180:0x0385  */
    /* JADX WARN: Code duplicated, block: B:183:0x039a  */
    /* JADX WARN: Code duplicated, block: B:185:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:188:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:190:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:193:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:195:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x007b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0084  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:53:0x008f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0098  */
    /* JADX WARN: Code duplicated, block: B:59:0x009f  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:80:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:91:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:93:0x0101  */
    /* JADX WARN: Code duplicated, block: B:95:0x010b  */
    /* JADX WARN: Code duplicated, block: B:96:0x010e  */
    public static final void NavigationRailItem(final boolean z, final ll3<j59> ll3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var, Modifier modifier, boolean z2, bm3<? super Composer, ? super Integer, j59> bm3Var2, boolean z3, NavigationRailItemColors navigationRailItemColors, MutableInteractionSource mutableInteractionSource, Composer composer, final int i, final int i2) {
        int i3;
        ll3<j59> ll3Var2;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        final Modifier modifier2;
        int i4;
        boolean z4;
        int i5;
        int i6;
        bm3<? super Composer, ? super Integer, j59> bm3Var4;
        char c;
        int i7;
        int i8;
        int i9;
        NavigationRailItemColors navigationRailItemColorsColors;
        int i10;
        int i11;
        boolean z5;
        final boolean z6;
        final MutableInteractionSource mutableInteractionSource2;
        final boolean z7;
        Composer composer2;
        final NavigationRailItemColors navigationRailItemColors2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var5;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        boolean z8;
        int i12;
        boolean z9;
        NavigationRailItemColors navigationRailItemColors3;
        bm3<? super Composer, ? super Integer, j59> bm3Var6;
        MutableInteractionSource mutableInteractionSource3;
        boolean z10;
        MutableInteractionSource mutableInteractionSource4;
        final FiniteAnimationSpec finiteAnimationSpecValue;
        bm3<? super Composer, ? super Integer, j59> bm3Var7;
        ComposableLambda composableLambda;
        MutableInteractionSource mutableInteractionSource5;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        NavigationRailItemColors navigationRailItemColors4;
        float f;
        State<Float> stateAnimateFloatAsState;
        float f2;
        State<Float> stateAnimateFloatAsState2;
        long jM5979constructorimpl;
        boolean zChanged;
        Object objRememberedValue;
        final Shape value;
        boolean zChanged2;
        Object objRememberedValue2;
        boolean zChanged3;
        Object objRememberedValue3;
        Object objRememberedValue4;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1620317701);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
            ll3Var2 = ll3Var;
        } else {
            ll3Var2 = ll3Var;
            if ((i & 48) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 32 : 16;
            }
        }
        if ((i2 & 4) != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            bm3Var3 = bm3Var;
        } else {
            bm3Var3 = bm3Var;
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 256 : 128;
            }
        }
        int i13 = i2 & 8;
        if (i13 == 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 2048 : 1024;
            }
            i4 = i2 & 16;
            if (i4 != 0) {
                if ((i & 24576) == 0) {
                    z4 = z2;
                    if (composerStartRestartGroup.changed(z4)) {
                        i5 = 16384;
                    } else {
                        i5 = 8192;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    bm3Var4 = bm3Var2;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        c = ' ';
                        if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 64;
                    if (i8 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(z3)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    if ((i & 12582912) == 0) {
                        if ((i2 & 128) == 0) {
                            navigationRailItemColorsColors = navigationRailItemColors;
                            int i14 = composerStartRestartGroup.changed(navigationRailItemColorsColors) ? 8388608 : 4194304;
                            i3 |= i14;
                        } else {
                            navigationRailItemColorsColors = navigationRailItemColors;
                        }
                        i3 |= i14;
                    } else {
                        navigationRailItemColorsColors = navigationRailItemColors;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((i3 & 38347923) != 38347922) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i13 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z4 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var4 = null;
                                }
                                if (i8 != 0) {
                                    z8 = true;
                                } else {
                                    z8 = z3;
                                }
                                if ((i2 & 128) != 0) {
                                    i3 &= -29360129;
                                    navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                }
                                i12 = i3;
                                z9 = z4;
                                navigationRailItemColors3 = navigationRailItemColorsColors;
                                bm3Var6 = bm3Var4;
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                z10 = z8;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i2 & 128) != 0) {
                                    i3 &= -29360129;
                                }
                                i12 = i3;
                                z9 = z4;
                                navigationRailItemColors3 = navigationRailItemColorsColors;
                                bm3Var6 = bm3Var4;
                                z10 = z3;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            Modifier modifier3 = modifier2;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(253288608);
                                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                    objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(1947832599);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.DefaultEffects;
                            finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
                            boolean z11 = z10;
                            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                            if (bm3Var6 == null) {
                                composerStartRestartGroup.startReplaceGroup(254215848);
                                composerStartRestartGroup.endReplaceGroup();
                                bm3Var7 = bm3Var6;
                                composableLambda = null;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(254215849);
                                final NavigationRailItemColors navigationRailItemColors5 = navigationRailItemColors3;
                                final boolean z12 = z9;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                bm3Var7 = bm3Var8;
                                ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                                    private static final long invoke$lambda$0(State<Color> state) {
                                        return state.getValue().m6242unboximpl();
                                    }

                                    public final void invoke(Composer composer3, int i15) {
                                        if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                                        }
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors5.m3708textColorWaAFU9c$material3(z, z12), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var8, composer3, 0);
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
                            boolean z13 = z9;
                            mutableInteractionSource5 = mutableInteractionSource4;
                            Modifier modifierM2084defaultMinSizeVpY3zN4$default = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier3, z, mutableInteractionSource5, null, z13, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                            float f3 = NavigationRailItemWidth;
                            Modifier modifierM2106widthInVpY3zN4$default = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default, f3, 0.0f, 2, null);
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default);
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            constructor = companion.getConstructor();
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
                            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting()) {
                                navigationRailItemColors4 = navigationRailItemColors3;
                            } else {
                                navigationRailItemColors4 = navigationRailItemColors3;
                                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                if (z) {
                                    f = 1.0f;
                                } else {
                                    f = 0.0f;
                                }
                                FiniteAnimationSpec finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
                                NavigationRailItemColors navigationRailItemColors6 = navigationRailItemColors4;
                                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue2, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                if (z) {
                                    f2 = 1.0f;
                                } else {
                                    f2 = 0.0f;
                                }
                                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                                Density density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density.mo1428roundToPx0680j_4(f3) - density.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                                j59 j59Var = j59.a;
                                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                final MappedInteractionSource mappedInteractionSource = (MappedInteractionSource) objRememberedValue;
                                if (bm3Var7 != null) {
                                    composerStartRestartGroup.startReplaceGroup(-1825624334);
                                    value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                                    composerStartRestartGroup.endReplaceGroup();
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(-1825528978);
                                    value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                                    composerStartRestartGroup.endReplaceGroup();
                                }
                                ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                                    public final void invoke(Composer composer3, int i15) {
                                        if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                        }
                                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                                ComposableLambda composableLambdaRememberComposableLambda4 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors6, value), composerStartRestartGroup, 54);
                                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                ll3 ll3Var3 = (ll3) objRememberedValue2;
                                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                if (zChanged3 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                                    objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                }
                                NavigationRailItemLayout(composableLambdaRememberComposableLambda3, composableLambdaRememberComposableLambda4, composableLambdaRememberComposableLambda, composableLambda, z11, ll3Var3, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                                composerStartRestartGroup.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                navigationRailItemColors2 = navigationRailItemColors6;
                                composer2 = composerStartRestartGroup;
                                z6 = z11;
                                z7 = z13;
                                mutableInteractionSource2 = mutableInteractionSource3;
                                modifier2 = modifier3;
                                bm3Var5 = bm3Var7;
                            }
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            FiniteAnimationSpec finiteAnimationSpecValue3 = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
                            NavigationRailItemColors navigationRailItemColors7 = navigationRailItemColors4;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue3, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density2 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density2.mo1428roundToPx0680j_4(f3) - density2.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            j59 j59Var2 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            final MappedInteractionSource mappedInteractionSource2 = (MappedInteractionSource) objRememberedValue;
                            if (bm3Var7 != null) {
                                composerStartRestartGroup.startReplaceGroup(-1825624334);
                                value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1825528978);
                                value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            ComposableLambda composableLambdaRememberComposableLambda5 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                                public final void invoke(Composer composer3, int i15) {
                                    if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                            ComposableLambda composableLambdaRememberComposableLambda6 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors7, value), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            ll3 ll3Var4 = (ll3) objRememberedValue2;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            NavigationRailItemLayout(composableLambdaRememberComposableLambda5, composableLambdaRememberComposableLambda6, composableLambdaRememberComposableLambda, composableLambda, z11, ll3Var4, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationRailItemColors2 = navigationRailItemColors7;
                            composer2 = composerStartRestartGroup;
                            z6 = z11;
                            z7 = z13;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            modifier2 = modifier3;
                            bm3Var5 = bm3Var7;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            z6 = z3;
                            mutableInteractionSource2 = mutableInteractionSource;
                            z7 = z4;
                            composer2 = composerStartRestartGroup;
                            navigationRailItemColors2 = navigationRailItemColorsColors;
                            bm3Var5 = bm3Var4;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i3 & 38347923) != 38347922) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i13 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var4 = null;
                            }
                            if (i8 != 0) {
                                z8 = true;
                            } else {
                                z8 = z3;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i12 = i3;
                            z9 = z4;
                            navigationRailItemColors3 = navigationRailItemColorsColors;
                            bm3Var6 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            z10 = z8;
                        } else {
                            if (i13 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var4 = null;
                            }
                            if (i8 != 0) {
                                z8 = true;
                            } else {
                                z8 = z3;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i12 = i3;
                            z9 = z4;
                            navigationRailItemColors3 = navigationRailItemColorsColors;
                            bm3Var6 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            z10 = z8;
                        }
                        Modifier modifier4 = modifier2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(253288608);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1947832599);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens2 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens2, composerStartRestartGroup, 6);
                        boolean z14 = z10;
                        ComposableLambda composableLambdaRememberComposableLambda7 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                        if (bm3Var6 == null) {
                            composerStartRestartGroup.startReplaceGroup(254215848);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var7 = bm3Var6;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(254215849);
                            final NavigationRailItemColors navigationRailItemColors8 = navigationRailItemColors3;
                            final boolean z15 = z9;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var6;
                            bm3Var7 = bm3Var9;
                            ComposableLambda composableLambdaRememberComposableLambda8 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i15) {
                                    if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors8.m3708textColorWaAFU9c$material3(z, z15), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var9, composer3, 0);
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
                        boolean z16 = z9;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        Modifier modifierM2084defaultMinSizeVpY3zN4$default2 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z, mutableInteractionSource5, null, z16, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                        float f4 = NavigationRailItemWidth;
                        Modifier modifierM2106widthInVpY3zN4$default2 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default2, f4, 0.0f, 2, null);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default2);
                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
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
                        bm3 bm3VarB2 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
                        if (composerM5355constructorimpl.getInserting()) {
                            navigationRailItemColors4 = navigationRailItemColors3;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion2.getSetModifier());
                            BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            FiniteAnimationSpec finiteAnimationSpecValue4 = MotionSchemeKt.value(motionSchemeKeyTokens2, composerStartRestartGroup, 6);
                            NavigationRailItemColors navigationRailItemColors9 = navigationRailItemColors4;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue4, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density3 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density3.mo1428roundToPx0680j_4(f4) - density3.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            j59 j59Var3 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            final MappedInteractionSource mappedInteractionSource3 = (MappedInteractionSource) objRememberedValue;
                            if (bm3Var7 != null) {
                                composerStartRestartGroup.startReplaceGroup(-1825624334);
                                value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1825528978);
                                value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            ComposableLambda composableLambdaRememberComposableLambda9 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                                public final void invoke(Composer composer3, int i15) {
                                    if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource3, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                            ComposableLambda composableLambdaRememberComposableLambda10 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors9, value), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            ll3 ll3Var5 = (ll3) objRememberedValue2;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            NavigationRailItemLayout(composableLambdaRememberComposableLambda9, composableLambdaRememberComposableLambda10, composableLambdaRememberComposableLambda7, composableLambda, z14, ll3Var5, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationRailItemColors2 = navigationRailItemColors9;
                            composer2 = composerStartRestartGroup;
                            z6 = z14;
                            z7 = z16;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            modifier2 = modifier4;
                            bm3Var5 = bm3Var7;
                        } else {
                            navigationRailItemColors4 = navigationRailItemColors3;
                        }
                        dc.b(bm3VarB2, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion2.getSetModifier());
                        BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        FiniteAnimationSpec finiteAnimationSpecValue5 = MotionSchemeKt.value(motionSchemeKeyTokens2, composerStartRestartGroup, 6);
                        NavigationRailItemColors navigationRailItemColors10 = navigationRailItemColors4;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue5, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density4 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density4.mo1428roundToPx0680j_4(f4) - density4.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        j59 j59Var4 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final MappedInteractionSource mappedInteractionSource4 = (MappedInteractionSource) objRememberedValue;
                        if (bm3Var7 != null) {
                            composerStartRestartGroup.startReplaceGroup(-1825624334);
                            value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1825528978);
                            value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        ComposableLambda composableLambdaRememberComposableLambda11 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                        ComposableLambda composableLambdaRememberComposableLambda12 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors10, value), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3 ll3Var6 = (ll3) objRememberedValue2;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        NavigationRailItemLayout(composableLambdaRememberComposableLambda11, composableLambdaRememberComposableLambda12, composableLambdaRememberComposableLambda7, composableLambda, z14, ll3Var6, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationRailItemColors2 = navigationRailItemColors10;
                        composer2 = composerStartRestartGroup;
                        z6 = z14;
                        z7 = z16;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier2 = modifier4;
                        bm3Var5 = bm3Var7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z6 = z3;
                        mutableInteractionSource2 = mutableInteractionSource;
                        z7 = z4;
                        composer2 = composerStartRestartGroup;
                        navigationRailItemColors2 = navigationRailItemColorsColors;
                        bm3Var5 = bm3Var4;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                bm3Var4 = bm3Var2;
                c = ' ';
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(z3)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) == 0) {
                    if ((i2 & 128) == 0) {
                        navigationRailItemColorsColors = navigationRailItemColors;
                        if (composerStartRestartGroup.changed(navigationRailItemColorsColors)) {
                        }
                        i3 |= i14;
                    } else {
                        navigationRailItemColorsColors = navigationRailItemColors;
                    }
                    i3 |= i14;
                } else {
                    navigationRailItemColorsColors = navigationRailItemColors;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i13 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var4 = null;
                            }
                            if (i8 != 0) {
                                z8 = true;
                            } else {
                                z8 = z3;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i12 = i3;
                            z9 = z4;
                            navigationRailItemColors3 = navigationRailItemColorsColors;
                            bm3Var6 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            z10 = z8;
                        } else {
                            if (i13 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var4 = null;
                            }
                            if (i8 != 0) {
                                z8 = true;
                            } else {
                                z8 = z3;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i12 = i3;
                            z9 = z4;
                            navigationRailItemColors3 = navigationRailItemColorsColors;
                            bm3Var6 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            z10 = z8;
                        }
                        Modifier modifier5 = modifier2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(253288608);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1947832599);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens3 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens3, composerStartRestartGroup, 6);
                        boolean z17 = z10;
                        ComposableLambda composableLambdaRememberComposableLambda13 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                        if (bm3Var6 == null) {
                            composerStartRestartGroup.startReplaceGroup(254215848);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var7 = bm3Var6;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(254215849);
                            final NavigationRailItemColors navigationRailItemColors11 = navigationRailItemColors3;
                            final boolean z18 = z9;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var6;
                            bm3Var7 = bm3Var10;
                            ComposableLambda composableLambdaRememberComposableLambda14 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i15) {
                                    if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors11.m3708textColorWaAFU9c$material3(z, z18), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var10, composer3, 0);
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
                        boolean z19 = z9;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        Modifier modifierM2084defaultMinSizeVpY3zN4$default3 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier5, z, mutableInteractionSource5, null, z19, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                        float f5 = NavigationRailItemWidth;
                        Modifier modifierM2106widthInVpY3zN4$default3 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default3, f5, 0.0f, 2, null);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default3);
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
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
                        bm3 bm3VarB3 = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap3);
                        if (composerM5355constructorimpl.getInserting()) {
                            navigationRailItemColors4 = navigationRailItemColors3;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion3.getSetModifier());
                            BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            FiniteAnimationSpec finiteAnimationSpecValue6 = MotionSchemeKt.value(motionSchemeKeyTokens3, composerStartRestartGroup, 6);
                            NavigationRailItemColors navigationRailItemColors12 = navigationRailItemColors4;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue6, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density5 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density5.mo1428roundToPx0680j_4(f5) - density5.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            j59 j59Var5 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            final MappedInteractionSource mappedInteractionSource5 = (MappedInteractionSource) objRememberedValue;
                            if (bm3Var7 != null) {
                                composerStartRestartGroup.startReplaceGroup(-1825624334);
                                value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1825528978);
                                value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            ComposableLambda composableLambdaRememberComposableLambda15 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                                public final void invoke(Composer composer3, int i15) {
                                    if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource5, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                            ComposableLambda composableLambdaRememberComposableLambda16 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors12, value), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            ll3 ll3Var7 = (ll3) objRememberedValue2;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            NavigationRailItemLayout(composableLambdaRememberComposableLambda15, composableLambdaRememberComposableLambda16, composableLambdaRememberComposableLambda13, composableLambda, z17, ll3Var7, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationRailItemColors2 = navigationRailItemColors12;
                            composer2 = composerStartRestartGroup;
                            z6 = z17;
                            z7 = z19;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            modifier2 = modifier5;
                            bm3Var5 = bm3Var7;
                        } else {
                            navigationRailItemColors4 = navigationRailItemColors3;
                        }
                        dc.b(bm3VarB3, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        FiniteAnimationSpec finiteAnimationSpecValue7 = MotionSchemeKt.value(motionSchemeKeyTokens3, composerStartRestartGroup, 6);
                        NavigationRailItemColors navigationRailItemColors13 = navigationRailItemColors4;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue7, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density6 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density6.mo1428roundToPx0680j_4(f5) - density6.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        j59 j59Var6 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final MappedInteractionSource mappedInteractionSource6 = (MappedInteractionSource) objRememberedValue;
                        if (bm3Var7 != null) {
                            composerStartRestartGroup.startReplaceGroup(-1825624334);
                            value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1825528978);
                            value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        ComposableLambda composableLambdaRememberComposableLambda17 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource6, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                        ComposableLambda composableLambdaRememberComposableLambda18 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors13, value), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3 ll3Var8 = (ll3) objRememberedValue2;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        NavigationRailItemLayout(composableLambdaRememberComposableLambda17, composableLambdaRememberComposableLambda18, composableLambdaRememberComposableLambda13, composableLambda, z17, ll3Var8, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationRailItemColors2 = navigationRailItemColors13;
                        composer2 = composerStartRestartGroup;
                        z6 = z17;
                        z7 = z19;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier2 = modifier5;
                        bm3Var5 = bm3Var7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z6 = z3;
                        mutableInteractionSource2 = mutableInteractionSource;
                        z7 = z4;
                        composer2 = composerStartRestartGroup;
                        navigationRailItemColors2 = navigationRailItemColorsColors;
                        bm3Var5 = bm3Var4;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i3 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    } else {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    }
                    Modifier modifier6 = modifier2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(253288608);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1947832599);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens4 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens4, composerStartRestartGroup, 6);
                    boolean z110 = z10;
                    ComposableLambda composableLambdaRememberComposableLambda19 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                    if (bm3Var6 == null) {
                        composerStartRestartGroup.startReplaceGroup(254215848);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var7 = bm3Var6;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(254215849);
                        final NavigationRailItemColors navigationRailItemColors14 = navigationRailItemColors3;
                        final boolean z111 = z9;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var6;
                        bm3Var7 = bm3Var11;
                        ComposableLambda composableLambdaRememberComposableLambda110 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors14.m3708textColorWaAFU9c$material3(z, z111), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var11, composer3, 0);
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
                    boolean z112 = z9;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    Modifier modifierM2084defaultMinSizeVpY3zN4$default4 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier6, z, mutableInteractionSource5, null, z112, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                    float f6 = NavigationRailItemWidth;
                    Modifier modifierM2106widthInVpY3zN4$default4 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default4, f6, 0.0f, 2, null);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default4);
                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
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
                    bm3 bm3VarB4 = cc.b(companion4, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl, currentCompositionLocalMap4);
                    if (composerM5355constructorimpl.getInserting()) {
                        navigationRailItemColors4 = navigationRailItemColors3;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion4.getSetModifier());
                        BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        FiniteAnimationSpec finiteAnimationSpecValue8 = MotionSchemeKt.value(motionSchemeKeyTokens4, composerStartRestartGroup, 6);
                        NavigationRailItemColors navigationRailItemColors15 = navigationRailItemColors4;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue8, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density7 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density7.mo1428roundToPx0680j_4(f6) - density7.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        j59 j59Var7 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final MappedInteractionSource mappedInteractionSource7 = (MappedInteractionSource) objRememberedValue;
                        if (bm3Var7 != null) {
                            composerStartRestartGroup.startReplaceGroup(-1825624334);
                            value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1825528978);
                            value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        ComposableLambda composableLambdaRememberComposableLambda111 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource7, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                        ComposableLambda composableLambdaRememberComposableLambda112 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors15, value), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3 ll3Var9 = (ll3) objRememberedValue2;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        NavigationRailItemLayout(composableLambdaRememberComposableLambda111, composableLambdaRememberComposableLambda112, composableLambdaRememberComposableLambda19, composableLambda, z110, ll3Var9, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationRailItemColors2 = navigationRailItemColors15;
                        composer2 = composerStartRestartGroup;
                        z6 = z110;
                        z7 = z112;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier2 = modifier6;
                        bm3Var5 = bm3Var7;
                    } else {
                        navigationRailItemColors4 = navigationRailItemColors3;
                    }
                    dc.b(bm3VarB4, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion4.getSetModifier());
                    BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    FiniteAnimationSpec finiteAnimationSpecValue9 = MotionSchemeKt.value(motionSchemeKeyTokens4, composerStartRestartGroup, 6);
                    NavigationRailItemColors navigationRailItemColors16 = navigationRailItemColors4;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue9, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density8 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density8.mo1428roundToPx0680j_4(f6) - density8.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    j59 j59Var8 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final MappedInteractionSource mappedInteractionSource8 = (MappedInteractionSource) objRememberedValue;
                    if (bm3Var7 != null) {
                        composerStartRestartGroup.startReplaceGroup(-1825624334);
                        value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1825528978);
                        value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    ComposableLambda composableLambdaRememberComposableLambda113 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource8, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                    ComposableLambda composableLambdaRememberComposableLambda114 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors16, value), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3 ll3Var10 = (ll3) objRememberedValue2;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    NavigationRailItemLayout(composableLambdaRememberComposableLambda113, composableLambdaRememberComposableLambda114, composableLambdaRememberComposableLambda19, composableLambda, z110, ll3Var10, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationRailItemColors2 = navigationRailItemColors16;
                    composer2 = composerStartRestartGroup;
                    z6 = z110;
                    z7 = z112;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier2 = modifier6;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z6 = z3;
                    mutableInteractionSource2 = mutableInteractionSource;
                    z7 = z4;
                    composer2 = composerStartRestartGroup;
                    navigationRailItemColors2 = navigationRailItemColorsColors;
                    bm3Var5 = bm3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z4 = z2;
            i6 = i2 & 32;
            if (i6 != 0) {
                bm3Var4 = bm3Var2;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    c = ' ';
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(z3)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) == 0) {
                    if ((i2 & 128) == 0) {
                        navigationRailItemColorsColors = navigationRailItemColors;
                        if (composerStartRestartGroup.changed(navigationRailItemColorsColors)) {
                        }
                        i3 |= i14;
                    } else {
                        navigationRailItemColorsColors = navigationRailItemColors;
                    }
                    i3 |= i14;
                } else {
                    navigationRailItemColorsColors = navigationRailItemColors;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i13 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var4 = null;
                            }
                            if (i8 != 0) {
                                z8 = true;
                            } else {
                                z8 = z3;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i12 = i3;
                            z9 = z4;
                            navigationRailItemColors3 = navigationRailItemColorsColors;
                            bm3Var6 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            z10 = z8;
                        } else {
                            if (i13 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var4 = null;
                            }
                            if (i8 != 0) {
                                z8 = true;
                            } else {
                                z8 = z3;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i12 = i3;
                            z9 = z4;
                            navigationRailItemColors3 = navigationRailItemColorsColors;
                            bm3Var6 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            z10 = z8;
                        }
                        Modifier modifier7 = modifier2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(253288608);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1947832599);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens5 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens5, composerStartRestartGroup, 6);
                        boolean z113 = z10;
                        ComposableLambda composableLambdaRememberComposableLambda115 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                        if (bm3Var6 == null) {
                            composerStartRestartGroup.startReplaceGroup(254215848);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var7 = bm3Var6;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(254215849);
                            final NavigationRailItemColors navigationRailItemColors17 = navigationRailItemColors3;
                            final boolean z114 = z9;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var12 = bm3Var6;
                            bm3Var7 = bm3Var12;
                            ComposableLambda composableLambdaRememberComposableLambda116 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i15) {
                                    if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors17.m3708textColorWaAFU9c$material3(z, z114), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var12, composer3, 0);
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
                        boolean z115 = z9;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        Modifier modifierM2084defaultMinSizeVpY3zN4$default5 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier7, z, mutableInteractionSource5, null, z115, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                        float f7 = NavigationRailItemWidth;
                        Modifier modifierM2106widthInVpY3zN4$default5 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default5, f7, 0.0f, 2, null);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default5);
                        ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
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
                        bm3 bm3VarB5 = cc.b(companion5, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy5, composerM5355constructorimpl, currentCompositionLocalMap5);
                        if (composerM5355constructorimpl.getInserting()) {
                            navigationRailItemColors4 = navigationRailItemColors3;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier5, companion5.getSetModifier());
                            BoxScopeInstance boxScopeInstance9 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            FiniteAnimationSpec finiteAnimationSpecValue10 = MotionSchemeKt.value(motionSchemeKeyTokens5, composerStartRestartGroup, 6);
                            NavigationRailItemColors navigationRailItemColors18 = navigationRailItemColors4;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue10, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density9 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density9.mo1428roundToPx0680j_4(f7) - density9.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            j59 j59Var9 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            final MappedInteractionSource mappedInteractionSource9 = (MappedInteractionSource) objRememberedValue;
                            if (bm3Var7 != null) {
                                composerStartRestartGroup.startReplaceGroup(-1825624334);
                                value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1825528978);
                                value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            ComposableLambda composableLambdaRememberComposableLambda117 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                                public final void invoke(Composer composer3, int i15) {
                                    if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource9, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                            ComposableLambda composableLambdaRememberComposableLambda118 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors18, value), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            ll3 ll3Var11 = (ll3) objRememberedValue2;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            NavigationRailItemLayout(composableLambdaRememberComposableLambda117, composableLambdaRememberComposableLambda118, composableLambdaRememberComposableLambda115, composableLambda, z113, ll3Var11, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationRailItemColors2 = navigationRailItemColors18;
                            composer2 = composerStartRestartGroup;
                            z6 = z113;
                            z7 = z115;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            modifier2 = modifier7;
                            bm3Var5 = bm3Var7;
                        } else {
                            navigationRailItemColors4 = navigationRailItemColors3;
                        }
                        dc.b(bm3VarB5, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier5, companion5.getSetModifier());
                        BoxScopeInstance boxScopeInstance10 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        FiniteAnimationSpec finiteAnimationSpecValue11 = MotionSchemeKt.value(motionSchemeKeyTokens5, composerStartRestartGroup, 6);
                        NavigationRailItemColors navigationRailItemColors19 = navigationRailItemColors4;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue11, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density10 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density10.mo1428roundToPx0680j_4(f7) - density10.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        j59 j59Var10 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final MappedInteractionSource mappedInteractionSource10 = (MappedInteractionSource) objRememberedValue;
                        if (bm3Var7 != null) {
                            composerStartRestartGroup.startReplaceGroup(-1825624334);
                            value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1825528978);
                            value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        ComposableLambda composableLambdaRememberComposableLambda119 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource10, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                        ComposableLambda composableLambdaRememberComposableLambda1110 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors19, value), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3 ll3Var12 = (ll3) objRememberedValue2;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        NavigationRailItemLayout(composableLambdaRememberComposableLambda119, composableLambdaRememberComposableLambda1110, composableLambdaRememberComposableLambda115, composableLambda, z113, ll3Var12, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationRailItemColors2 = navigationRailItemColors19;
                        composer2 = composerStartRestartGroup;
                        z6 = z113;
                        z7 = z115;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier2 = modifier7;
                        bm3Var5 = bm3Var7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z6 = z3;
                        mutableInteractionSource2 = mutableInteractionSource;
                        z7 = z4;
                        composer2 = composerStartRestartGroup;
                        navigationRailItemColors2 = navigationRailItemColorsColors;
                        bm3Var5 = bm3Var4;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i3 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    } else {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    }
                    Modifier modifier8 = modifier2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(253288608);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1947832599);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens6 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens6, composerStartRestartGroup, 6);
                    boolean z116 = z10;
                    ComposableLambda composableLambdaRememberComposableLambda1111 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                    if (bm3Var6 == null) {
                        composerStartRestartGroup.startReplaceGroup(254215848);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var7 = bm3Var6;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(254215849);
                        final NavigationRailItemColors navigationRailItemColors110 = navigationRailItemColors3;
                        final boolean z117 = z9;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var13 = bm3Var6;
                        bm3Var7 = bm3Var13;
                        ComposableLambda composableLambdaRememberComposableLambda1112 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors110.m3708textColorWaAFU9c$material3(z, z117), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var13, composer3, 0);
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
                    boolean z118 = z9;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    Modifier modifierM2084defaultMinSizeVpY3zN4$default6 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier8, z, mutableInteractionSource5, null, z118, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                    float f8 = NavigationRailItemWidth;
                    Modifier modifierM2106widthInVpY3zN4$default6 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default6, f8, 0.0f, 2, null);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default6);
                    ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
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
                    bm3 bm3VarB6 = cc.b(companion6, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy6, composerM5355constructorimpl, currentCompositionLocalMap6);
                    if (composerM5355constructorimpl.getInserting()) {
                        navigationRailItemColors4 = navigationRailItemColors3;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier6, companion6.getSetModifier());
                        BoxScopeInstance boxScopeInstance11 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        FiniteAnimationSpec finiteAnimationSpecValue12 = MotionSchemeKt.value(motionSchemeKeyTokens6, composerStartRestartGroup, 6);
                        NavigationRailItemColors navigationRailItemColors111 = navigationRailItemColors4;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue12, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density11 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density11.mo1428roundToPx0680j_4(f8) - density11.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        j59 j59Var11 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final MappedInteractionSource mappedInteractionSource11 = (MappedInteractionSource) objRememberedValue;
                        if (bm3Var7 != null) {
                            composerStartRestartGroup.startReplaceGroup(-1825624334);
                            value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1825528978);
                            value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        ComposableLambda composableLambdaRememberComposableLambda1113 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource11, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                        ComposableLambda composableLambdaRememberComposableLambda1114 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors111, value), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3 ll3Var13 = (ll3) objRememberedValue2;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        NavigationRailItemLayout(composableLambdaRememberComposableLambda1113, composableLambdaRememberComposableLambda1114, composableLambdaRememberComposableLambda1111, composableLambda, z116, ll3Var13, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationRailItemColors2 = navigationRailItemColors111;
                        composer2 = composerStartRestartGroup;
                        z6 = z116;
                        z7 = z118;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier2 = modifier8;
                        bm3Var5 = bm3Var7;
                    } else {
                        navigationRailItemColors4 = navigationRailItemColors3;
                    }
                    dc.b(bm3VarB6, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier6, companion6.getSetModifier());
                    BoxScopeInstance boxScopeInstance12 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    FiniteAnimationSpec finiteAnimationSpecValue13 = MotionSchemeKt.value(motionSchemeKeyTokens6, composerStartRestartGroup, 6);
                    NavigationRailItemColors navigationRailItemColors112 = navigationRailItemColors4;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue13, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density12 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density12.mo1428roundToPx0680j_4(f8) - density12.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    j59 j59Var12 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final MappedInteractionSource mappedInteractionSource12 = (MappedInteractionSource) objRememberedValue;
                    if (bm3Var7 != null) {
                        composerStartRestartGroup.startReplaceGroup(-1825624334);
                        value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1825528978);
                        value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    ComposableLambda composableLambdaRememberComposableLambda1115 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource12, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                    ComposableLambda composableLambdaRememberComposableLambda1116 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors112, value), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3 ll3Var14 = (ll3) objRememberedValue2;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    NavigationRailItemLayout(composableLambdaRememberComposableLambda1115, composableLambdaRememberComposableLambda1116, composableLambdaRememberComposableLambda1111, composableLambda, z116, ll3Var14, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationRailItemColors2 = navigationRailItemColors112;
                    composer2 = composerStartRestartGroup;
                    z6 = z116;
                    z7 = z118;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier2 = modifier8;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z6 = z3;
                    mutableInteractionSource2 = mutableInteractionSource;
                    z7 = z4;
                    composer2 = composerStartRestartGroup;
                    navigationRailItemColors2 = navigationRailItemColorsColors;
                    bm3Var5 = bm3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            bm3Var4 = bm3Var2;
            c = ' ';
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(z3)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            if ((i & 12582912) == 0) {
                if ((i2 & 128) == 0) {
                    navigationRailItemColorsColors = navigationRailItemColors;
                    if (composerStartRestartGroup.changed(navigationRailItemColorsColors)) {
                    }
                    i3 |= i14;
                } else {
                    navigationRailItemColorsColors = navigationRailItemColors;
                }
                i3 |= i14;
            } else {
                navigationRailItemColorsColors = navigationRailItemColors;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    } else {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    }
                    Modifier modifier9 = modifier2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(253288608);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1947832599);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens7 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens7, composerStartRestartGroup, 6);
                    boolean z119 = z10;
                    ComposableLambda composableLambdaRememberComposableLambda1117 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                    if (bm3Var6 == null) {
                        composerStartRestartGroup.startReplaceGroup(254215848);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var7 = bm3Var6;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(254215849);
                        final NavigationRailItemColors navigationRailItemColors113 = navigationRailItemColors3;
                        final boolean z1110 = z9;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var14 = bm3Var6;
                        bm3Var7 = bm3Var14;
                        ComposableLambda composableLambdaRememberComposableLambda1118 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors113.m3708textColorWaAFU9c$material3(z, z1110), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var14, composer3, 0);
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
                    boolean z1111 = z9;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    Modifier modifierM2084defaultMinSizeVpY3zN4$default7 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier9, z, mutableInteractionSource5, null, z1111, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                    float f9 = NavigationRailItemWidth;
                    Modifier modifierM2106widthInVpY3zN4$default7 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default7, f9, 0.0f, 2, null);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default7);
                    ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
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
                    bm3 bm3VarB7 = cc.b(companion7, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy7, composerM5355constructorimpl, currentCompositionLocalMap7);
                    if (composerM5355constructorimpl.getInserting()) {
                        navigationRailItemColors4 = navigationRailItemColors3;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier7, companion7.getSetModifier());
                        BoxScopeInstance boxScopeInstance13 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        FiniteAnimationSpec finiteAnimationSpecValue14 = MotionSchemeKt.value(motionSchemeKeyTokens7, composerStartRestartGroup, 6);
                        NavigationRailItemColors navigationRailItemColors114 = navigationRailItemColors4;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue14, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density13 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density13.mo1428roundToPx0680j_4(f9) - density13.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        j59 j59Var13 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final MappedInteractionSource mappedInteractionSource13 = (MappedInteractionSource) objRememberedValue;
                        if (bm3Var7 != null) {
                            composerStartRestartGroup.startReplaceGroup(-1825624334);
                            value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1825528978);
                            value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        ComposableLambda composableLambdaRememberComposableLambda1119 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource13, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                        ComposableLambda composableLambdaRememberComposableLambda11110 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors114, value), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3 ll3Var15 = (ll3) objRememberedValue2;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        NavigationRailItemLayout(composableLambdaRememberComposableLambda1119, composableLambdaRememberComposableLambda11110, composableLambdaRememberComposableLambda1117, composableLambda, z119, ll3Var15, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationRailItemColors2 = navigationRailItemColors114;
                        composer2 = composerStartRestartGroup;
                        z6 = z119;
                        z7 = z1111;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier2 = modifier9;
                        bm3Var5 = bm3Var7;
                    } else {
                        navigationRailItemColors4 = navigationRailItemColors3;
                    }
                    dc.b(bm3VarB7, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier7, companion7.getSetModifier());
                    BoxScopeInstance boxScopeInstance14 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    FiniteAnimationSpec finiteAnimationSpecValue15 = MotionSchemeKt.value(motionSchemeKeyTokens7, composerStartRestartGroup, 6);
                    NavigationRailItemColors navigationRailItemColors115 = navigationRailItemColors4;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue15, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density14 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density14.mo1428roundToPx0680j_4(f9) - density14.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    j59 j59Var14 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final MappedInteractionSource mappedInteractionSource14 = (MappedInteractionSource) objRememberedValue;
                    if (bm3Var7 != null) {
                        composerStartRestartGroup.startReplaceGroup(-1825624334);
                        value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1825528978);
                        value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    ComposableLambda composableLambdaRememberComposableLambda11111 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource14, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                    ComposableLambda composableLambdaRememberComposableLambda11112 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors115, value), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3 ll3Var16 = (ll3) objRememberedValue2;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    NavigationRailItemLayout(composableLambdaRememberComposableLambda11111, composableLambdaRememberComposableLambda11112, composableLambdaRememberComposableLambda1117, composableLambda, z119, ll3Var16, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationRailItemColors2 = navigationRailItemColors115;
                    composer2 = composerStartRestartGroup;
                    z6 = z119;
                    z7 = z1111;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier2 = modifier9;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z6 = z3;
                    mutableInteractionSource2 = mutableInteractionSource;
                    z7 = z4;
                    composer2 = composerStartRestartGroup;
                    navigationRailItemColors2 = navigationRailItemColorsColors;
                    bm3Var5 = bm3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i3 & 38347923) != 38347922) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i13 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var4 = null;
                    }
                    if (i8 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i12 = i3;
                    z9 = z4;
                    navigationRailItemColors3 = navigationRailItemColorsColors;
                    bm3Var6 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z10 = z8;
                } else {
                    if (i13 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var4 = null;
                    }
                    if (i8 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i12 = i3;
                    z9 = z4;
                    navigationRailItemColors3 = navigationRailItemColorsColors;
                    bm3Var6 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z10 = z8;
                }
                Modifier modifier10 = modifier2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(253288608);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1947832599);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens8 = MotionSchemeKeyTokens.DefaultEffects;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens8, composerStartRestartGroup, 6);
                boolean z1112 = z10;
                ComposableLambda composableLambdaRememberComposableLambda11113 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                if (bm3Var6 == null) {
                    composerStartRestartGroup.startReplaceGroup(254215848);
                    composerStartRestartGroup.endReplaceGroup();
                    bm3Var7 = bm3Var6;
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(254215849);
                    final NavigationRailItemColors navigationRailItemColors116 = navigationRailItemColors3;
                    final boolean z1113 = z9;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var15 = bm3Var6;
                    bm3Var7 = bm3Var15;
                    ComposableLambda composableLambdaRememberComposableLambda11114 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                        private static final long invoke$lambda$0(State<Color> state) {
                            return state.getValue().m6242unboximpl();
                        }

                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                            }
                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors116.m3708textColorWaAFU9c$material3(z, z1113), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var15, composer3, 0);
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
                boolean z1114 = z9;
                mutableInteractionSource5 = mutableInteractionSource4;
                Modifier modifierM2084defaultMinSizeVpY3zN4$default8 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier10, z, mutableInteractionSource5, null, z1114, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                float f10 = NavigationRailItemWidth;
                Modifier modifierM2106widthInVpY3zN4$default8 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default8, f10, 0.0f, 2, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default8);
                ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
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
                bm3 bm3VarB8 = cc.b(companion8, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy8, composerM5355constructorimpl, currentCompositionLocalMap8);
                if (composerM5355constructorimpl.getInserting()) {
                    navigationRailItemColors4 = navigationRailItemColors3;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion8.getSetModifier());
                    BoxScopeInstance boxScopeInstance15 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    FiniteAnimationSpec finiteAnimationSpecValue16 = MotionSchemeKt.value(motionSchemeKeyTokens8, composerStartRestartGroup, 6);
                    NavigationRailItemColors navigationRailItemColors117 = navigationRailItemColors4;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue16, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density15 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density15.mo1428roundToPx0680j_4(f10) - density15.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    j59 j59Var15 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final MappedInteractionSource mappedInteractionSource15 = (MappedInteractionSource) objRememberedValue;
                    if (bm3Var7 != null) {
                        composerStartRestartGroup.startReplaceGroup(-1825624334);
                        value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1825528978);
                        value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    ComposableLambda composableLambdaRememberComposableLambda11115 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource15, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                    ComposableLambda composableLambdaRememberComposableLambda11116 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors117, value), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3 ll3Var17 = (ll3) objRememberedValue2;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    NavigationRailItemLayout(composableLambdaRememberComposableLambda11115, composableLambdaRememberComposableLambda11116, composableLambdaRememberComposableLambda11113, composableLambda, z1112, ll3Var17, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationRailItemColors2 = navigationRailItemColors117;
                    composer2 = composerStartRestartGroup;
                    z6 = z1112;
                    z7 = z1114;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier2 = modifier10;
                    bm3Var5 = bm3Var7;
                } else {
                    navigationRailItemColors4 = navigationRailItemColors3;
                }
                dc.b(bm3VarB8, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion8.getSetModifier());
                BoxScopeInstance boxScopeInstance16 = BoxScopeInstance.INSTANCE;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                FiniteAnimationSpec finiteAnimationSpecValue17 = MotionSchemeKt.value(motionSchemeKeyTokens8, composerStartRestartGroup, 6);
                NavigationRailItemColors navigationRailItemColors118 = navigationRailItemColors4;
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue17, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Density density16 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density16.mo1428roundToPx0680j_4(f10) - density16.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                j59 j59Var16 = j59.a;
                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final MappedInteractionSource mappedInteractionSource16 = (MappedInteractionSource) objRememberedValue;
                if (bm3Var7 != null) {
                    composerStartRestartGroup.startReplaceGroup(-1825624334);
                    value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1825528978);
                    value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                }
                ComposableLambda composableLambdaRememberComposableLambda11117 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                    public final void invoke(Composer composer3, int i15) {
                        if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                        }
                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource16, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                ComposableLambda composableLambdaRememberComposableLambda11118 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors118, value), composerStartRestartGroup, 54);
                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                ll3 ll3Var18 = (ll3) objRememberedValue2;
                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                NavigationRailItemLayout(composableLambdaRememberComposableLambda11117, composableLambdaRememberComposableLambda11118, composableLambdaRememberComposableLambda11113, composableLambda, z1112, ll3Var18, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                navigationRailItemColors2 = navigationRailItemColors118;
                composer2 = composerStartRestartGroup;
                z6 = z1112;
                z7 = z1114;
                mutableInteractionSource2 = mutableInteractionSource3;
                modifier2 = modifier10;
                bm3Var5 = bm3Var7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z6 = z3;
                mutableInteractionSource2 = mutableInteractionSource;
                z7 = z4;
                composer2 = composerStartRestartGroup;
                navigationRailItemColors2 = navigationRailItemColorsColors;
                bm3Var5 = bm3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        modifier2 = modifier;
        i4 = i2 & 16;
        if (i4 != 0) {
            if ((i & 24576) == 0) {
                z4 = z2;
                if (composerStartRestartGroup.changed(z4)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i3 |= i5;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                bm3Var4 = bm3Var2;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    c = ' ';
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(z3)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) == 0) {
                    if ((i2 & 128) == 0) {
                        navigationRailItemColorsColors = navigationRailItemColors;
                        if (composerStartRestartGroup.changed(navigationRailItemColorsColors)) {
                        }
                        i3 |= i14;
                    } else {
                        navigationRailItemColorsColors = navigationRailItemColors;
                    }
                    i3 |= i14;
                } else {
                    navigationRailItemColorsColors = navigationRailItemColors;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i13 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var4 = null;
                            }
                            if (i8 != 0) {
                                z8 = true;
                            } else {
                                z8 = z3;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i12 = i3;
                            z9 = z4;
                            navigationRailItemColors3 = navigationRailItemColorsColors;
                            bm3Var6 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            z10 = z8;
                        } else {
                            if (i13 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z4 = true;
                            }
                            if (i6 != 0) {
                                bm3Var4 = null;
                            }
                            if (i8 != 0) {
                                z8 = true;
                            } else {
                                z8 = z3;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i12 = i3;
                            z9 = z4;
                            navigationRailItemColors3 = navigationRailItemColorsColors;
                            bm3Var6 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            z10 = z8;
                        }
                        Modifier modifier11 = modifier2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(253288608);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1947832599);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens9 = MotionSchemeKeyTokens.DefaultEffects;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens9, composerStartRestartGroup, 6);
                        boolean z1115 = z10;
                        ComposableLambda composableLambdaRememberComposableLambda11119 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                        if (bm3Var6 == null) {
                            composerStartRestartGroup.startReplaceGroup(254215848);
                            composerStartRestartGroup.endReplaceGroup();
                            bm3Var7 = bm3Var6;
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(254215849);
                            final NavigationRailItemColors navigationRailItemColors119 = navigationRailItemColors3;
                            final boolean z1116 = z9;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var16 = bm3Var6;
                            bm3Var7 = bm3Var16;
                            ComposableLambda composableLambdaRememberComposableLambda111110 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                                private static final long invoke$lambda$0(State<Color> state) {
                                    return state.getValue().m6242unboximpl();
                                }

                                public final void invoke(Composer composer3, int i15) {
                                    if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                                    }
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors119.m3708textColorWaAFU9c$material3(z, z1116), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var16, composer3, 0);
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
                        boolean z1117 = z9;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        Modifier modifierM2084defaultMinSizeVpY3zN4$default9 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier11, z, mutableInteractionSource5, null, z1117, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                        float f11 = NavigationRailItemWidth;
                        Modifier modifierM2106widthInVpY3zN4$default9 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default9, f11, 0.0f, 2, null);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy9 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap9 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier9 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default9);
                        ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
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
                        bm3 bm3VarB9 = cc.b(companion9, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy9, composerM5355constructorimpl, currentCompositionLocalMap9);
                        if (composerM5355constructorimpl.getInserting()) {
                            navigationRailItemColors4 = navigationRailItemColors3;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier9, companion9.getSetModifier());
                            BoxScopeInstance boxScopeInstance17 = BoxScopeInstance.INSTANCE;
                            if (z) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            FiniteAnimationSpec finiteAnimationSpecValue18 = MotionSchemeKt.value(motionSchemeKeyTokens9, composerStartRestartGroup, 6);
                            NavigationRailItemColors navigationRailItemColors1110 = navigationRailItemColors4;
                            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue18, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            if (z) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.0f;
                            }
                            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                            Density density17 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density17.mo1428roundToPx0680j_4(f11) - density17.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            j59 j59Var17 = j59.a;
                            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChanged) {
                                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            final MappedInteractionSource mappedInteractionSource17 = (MappedInteractionSource) objRememberedValue;
                            if (bm3Var7 != null) {
                                composerStartRestartGroup.startReplaceGroup(-1825624334);
                                value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1825528978);
                                value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            ComposableLambda composableLambdaRememberComposableLambda111111 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                                public final void invoke(Composer composer3, int i15) {
                                    if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                    }
                                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource17, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                            ComposableLambda composableLambdaRememberComposableLambda111112 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors1110, value), composerStartRestartGroup, 54);
                            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (zChanged2) {
                                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            ll3 ll3Var19 = (ll3) objRememberedValue2;
                            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged3) {
                                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            NavigationRailItemLayout(composableLambdaRememberComposableLambda111111, composableLambdaRememberComposableLambda111112, composableLambdaRememberComposableLambda11119, composableLambda, z1115, ll3Var19, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            navigationRailItemColors2 = navigationRailItemColors1110;
                            composer2 = composerStartRestartGroup;
                            z6 = z1115;
                            z7 = z1117;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            modifier2 = modifier11;
                            bm3Var5 = bm3Var7;
                        } else {
                            navigationRailItemColors4 = navigationRailItemColors3;
                        }
                        dc.b(bm3VarB9, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier9, companion9.getSetModifier());
                        BoxScopeInstance boxScopeInstance18 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        FiniteAnimationSpec finiteAnimationSpecValue19 = MotionSchemeKt.value(motionSchemeKeyTokens9, composerStartRestartGroup, 6);
                        NavigationRailItemColors navigationRailItemColors1111 = navigationRailItemColors4;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue19, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density18 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density18.mo1428roundToPx0680j_4(f11) - density18.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        j59 j59Var18 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final MappedInteractionSource mappedInteractionSource18 = (MappedInteractionSource) objRememberedValue;
                        if (bm3Var7 != null) {
                            composerStartRestartGroup.startReplaceGroup(-1825624334);
                            value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1825528978);
                            value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        ComposableLambda composableLambdaRememberComposableLambda111113 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource18, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                        ComposableLambda composableLambdaRememberComposableLambda111114 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors1111, value), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3 ll3Var110 = (ll3) objRememberedValue2;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        NavigationRailItemLayout(composableLambdaRememberComposableLambda111113, composableLambdaRememberComposableLambda111114, composableLambdaRememberComposableLambda11119, composableLambda, z1115, ll3Var110, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationRailItemColors2 = navigationRailItemColors1111;
                        composer2 = composerStartRestartGroup;
                        z6 = z1115;
                        z7 = z1117;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier2 = modifier11;
                        bm3Var5 = bm3Var7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z6 = z3;
                        mutableInteractionSource2 = mutableInteractionSource;
                        z7 = z4;
                        composer2 = composerStartRestartGroup;
                        navigationRailItemColors2 = navigationRailItemColorsColors;
                        bm3Var5 = bm3Var4;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i3 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    } else {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    }
                    Modifier modifier12 = modifier2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(253288608);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1947832599);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens10 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens10, composerStartRestartGroup, 6);
                    boolean z1118 = z10;
                    ComposableLambda composableLambdaRememberComposableLambda111115 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                    if (bm3Var6 == null) {
                        composerStartRestartGroup.startReplaceGroup(254215848);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var7 = bm3Var6;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(254215849);
                        final NavigationRailItemColors navigationRailItemColors1112 = navigationRailItemColors3;
                        final boolean z1119 = z9;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var17 = bm3Var6;
                        bm3Var7 = bm3Var17;
                        ComposableLambda composableLambdaRememberComposableLambda111116 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors1112.m3708textColorWaAFU9c$material3(z, z1119), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var17, composer3, 0);
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
                    boolean z11110 = z9;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    Modifier modifierM2084defaultMinSizeVpY3zN4$default10 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier12, z, mutableInteractionSource5, null, z11110, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                    float f12 = NavigationRailItemWidth;
                    Modifier modifierM2106widthInVpY3zN4$default10 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default10, f12, 0.0f, 2, null);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy10 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap10 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier10 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default10);
                    ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
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
                    bm3 bm3VarB10 = cc.b(companion10, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy10, composerM5355constructorimpl, currentCompositionLocalMap10);
                    if (composerM5355constructorimpl.getInserting()) {
                        navigationRailItemColors4 = navigationRailItemColors3;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier10, companion10.getSetModifier());
                        BoxScopeInstance boxScopeInstance19 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        FiniteAnimationSpec finiteAnimationSpecValue110 = MotionSchemeKt.value(motionSchemeKeyTokens10, composerStartRestartGroup, 6);
                        NavigationRailItemColors navigationRailItemColors1113 = navigationRailItemColors4;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue110, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density19 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density19.mo1428roundToPx0680j_4(f12) - density19.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        j59 j59Var19 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final MappedInteractionSource mappedInteractionSource19 = (MappedInteractionSource) objRememberedValue;
                        if (bm3Var7 != null) {
                            composerStartRestartGroup.startReplaceGroup(-1825624334);
                            value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1825528978);
                            value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        ComposableLambda composableLambdaRememberComposableLambda111117 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource19, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                        ComposableLambda composableLambdaRememberComposableLambda111118 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors1113, value), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3 ll3Var111 = (ll3) objRememberedValue2;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        NavigationRailItemLayout(composableLambdaRememberComposableLambda111117, composableLambdaRememberComposableLambda111118, composableLambdaRememberComposableLambda111115, composableLambda, z1118, ll3Var111, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationRailItemColors2 = navigationRailItemColors1113;
                        composer2 = composerStartRestartGroup;
                        z6 = z1118;
                        z7 = z11110;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier2 = modifier12;
                        bm3Var5 = bm3Var7;
                    } else {
                        navigationRailItemColors4 = navigationRailItemColors3;
                    }
                    dc.b(bm3VarB10, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier10, companion10.getSetModifier());
                    BoxScopeInstance boxScopeInstance110 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    FiniteAnimationSpec finiteAnimationSpecValue111 = MotionSchemeKt.value(motionSchemeKeyTokens10, composerStartRestartGroup, 6);
                    NavigationRailItemColors navigationRailItemColors1114 = navigationRailItemColors4;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue111, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density110 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density110.mo1428roundToPx0680j_4(f12) - density110.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    j59 j59Var110 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final MappedInteractionSource mappedInteractionSource110 = (MappedInteractionSource) objRememberedValue;
                    if (bm3Var7 != null) {
                        composerStartRestartGroup.startReplaceGroup(-1825624334);
                        value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1825528978);
                        value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    ComposableLambda composableLambdaRememberComposableLambda111119 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource110, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                    ComposableLambda composableLambdaRememberComposableLambda1111110 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors1114, value), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3 ll3Var112 = (ll3) objRememberedValue2;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    NavigationRailItemLayout(composableLambdaRememberComposableLambda111119, composableLambdaRememberComposableLambda1111110, composableLambdaRememberComposableLambda111115, composableLambda, z1118, ll3Var112, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationRailItemColors2 = navigationRailItemColors1114;
                    composer2 = composerStartRestartGroup;
                    z6 = z1118;
                    z7 = z11110;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier2 = modifier12;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z6 = z3;
                    mutableInteractionSource2 = mutableInteractionSource;
                    z7 = z4;
                    composer2 = composerStartRestartGroup;
                    navigationRailItemColors2 = navigationRailItemColorsColors;
                    bm3Var5 = bm3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            bm3Var4 = bm3Var2;
            c = ' ';
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(z3)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            if ((i & 12582912) == 0) {
                if ((i2 & 128) == 0) {
                    navigationRailItemColorsColors = navigationRailItemColors;
                    if (composerStartRestartGroup.changed(navigationRailItemColorsColors)) {
                    }
                    i3 |= i14;
                } else {
                    navigationRailItemColorsColors = navigationRailItemColors;
                }
                i3 |= i14;
            } else {
                navigationRailItemColorsColors = navigationRailItemColors;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    } else {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    }
                    Modifier modifier13 = modifier2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(253288608);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1947832599);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens11 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens11, composerStartRestartGroup, 6);
                    boolean z11111 = z10;
                    ComposableLambda composableLambdaRememberComposableLambda1111111 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                    if (bm3Var6 == null) {
                        composerStartRestartGroup.startReplaceGroup(254215848);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var7 = bm3Var6;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(254215849);
                        final NavigationRailItemColors navigationRailItemColors1115 = navigationRailItemColors3;
                        final boolean z11112 = z9;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var18 = bm3Var6;
                        bm3Var7 = bm3Var18;
                        ComposableLambda composableLambdaRememberComposableLambda1111112 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors1115.m3708textColorWaAFU9c$material3(z, z11112), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var18, composer3, 0);
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
                    boolean z11113 = z9;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    Modifier modifierM2084defaultMinSizeVpY3zN4$default11 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier13, z, mutableInteractionSource5, null, z11113, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                    float f13 = NavigationRailItemWidth;
                    Modifier modifierM2106widthInVpY3zN4$default11 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default11, f13, 0.0f, 2, null);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy11 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap11 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier11 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default11);
                    ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
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
                    bm3 bm3VarB11 = cc.b(companion11, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy11, composerM5355constructorimpl, currentCompositionLocalMap11);
                    if (composerM5355constructorimpl.getInserting()) {
                        navigationRailItemColors4 = navigationRailItemColors3;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier11, companion11.getSetModifier());
                        BoxScopeInstance boxScopeInstance111 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        FiniteAnimationSpec finiteAnimationSpecValue112 = MotionSchemeKt.value(motionSchemeKeyTokens11, composerStartRestartGroup, 6);
                        NavigationRailItemColors navigationRailItemColors1116 = navigationRailItemColors4;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue112, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density111 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density111.mo1428roundToPx0680j_4(f13) - density111.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        j59 j59Var111 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final MappedInteractionSource mappedInteractionSource111 = (MappedInteractionSource) objRememberedValue;
                        if (bm3Var7 != null) {
                            composerStartRestartGroup.startReplaceGroup(-1825624334);
                            value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1825528978);
                            value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        ComposableLambda composableLambdaRememberComposableLambda1111113 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource111, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                        ComposableLambda composableLambdaRememberComposableLambda1111114 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors1116, value), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3 ll3Var113 = (ll3) objRememberedValue2;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        NavigationRailItemLayout(composableLambdaRememberComposableLambda1111113, composableLambdaRememberComposableLambda1111114, composableLambdaRememberComposableLambda1111111, composableLambda, z11111, ll3Var113, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationRailItemColors2 = navigationRailItemColors1116;
                        composer2 = composerStartRestartGroup;
                        z6 = z11111;
                        z7 = z11113;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier2 = modifier13;
                        bm3Var5 = bm3Var7;
                    } else {
                        navigationRailItemColors4 = navigationRailItemColors3;
                    }
                    dc.b(bm3VarB11, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier11, companion11.getSetModifier());
                    BoxScopeInstance boxScopeInstance112 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    FiniteAnimationSpec finiteAnimationSpecValue113 = MotionSchemeKt.value(motionSchemeKeyTokens11, composerStartRestartGroup, 6);
                    NavigationRailItemColors navigationRailItemColors1117 = navigationRailItemColors4;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue113, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density112 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density112.mo1428roundToPx0680j_4(f13) - density112.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    j59 j59Var112 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final MappedInteractionSource mappedInteractionSource112 = (MappedInteractionSource) objRememberedValue;
                    if (bm3Var7 != null) {
                        composerStartRestartGroup.startReplaceGroup(-1825624334);
                        value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1825528978);
                        value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    ComposableLambda composableLambdaRememberComposableLambda1111115 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource112, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                    ComposableLambda composableLambdaRememberComposableLambda1111116 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors1117, value), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3 ll3Var114 = (ll3) objRememberedValue2;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    NavigationRailItemLayout(composableLambdaRememberComposableLambda1111115, composableLambdaRememberComposableLambda1111116, composableLambdaRememberComposableLambda1111111, composableLambda, z11111, ll3Var114, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationRailItemColors2 = navigationRailItemColors1117;
                    composer2 = composerStartRestartGroup;
                    z6 = z11111;
                    z7 = z11113;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier2 = modifier13;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z6 = z3;
                    mutableInteractionSource2 = mutableInteractionSource;
                    z7 = z4;
                    composer2 = composerStartRestartGroup;
                    navigationRailItemColors2 = navigationRailItemColorsColors;
                    bm3Var5 = bm3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i3 & 38347923) != 38347922) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i13 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var4 = null;
                    }
                    if (i8 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i12 = i3;
                    z9 = z4;
                    navigationRailItemColors3 = navigationRailItemColorsColors;
                    bm3Var6 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z10 = z8;
                } else {
                    if (i13 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var4 = null;
                    }
                    if (i8 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i12 = i3;
                    z9 = z4;
                    navigationRailItemColors3 = navigationRailItemColorsColors;
                    bm3Var6 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z10 = z8;
                }
                Modifier modifier14 = modifier2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(253288608);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1947832599);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens12 = MotionSchemeKeyTokens.DefaultEffects;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens12, composerStartRestartGroup, 6);
                boolean z11114 = z10;
                ComposableLambda composableLambdaRememberComposableLambda1111117 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                if (bm3Var6 == null) {
                    composerStartRestartGroup.startReplaceGroup(254215848);
                    composerStartRestartGroup.endReplaceGroup();
                    bm3Var7 = bm3Var6;
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(254215849);
                    final NavigationRailItemColors navigationRailItemColors1118 = navigationRailItemColors3;
                    final boolean z11115 = z9;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var19 = bm3Var6;
                    bm3Var7 = bm3Var19;
                    ComposableLambda composableLambdaRememberComposableLambda1111118 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                        private static final long invoke$lambda$0(State<Color> state) {
                            return state.getValue().m6242unboximpl();
                        }

                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                            }
                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors1118.m3708textColorWaAFU9c$material3(z, z11115), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var19, composer3, 0);
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
                boolean z11116 = z9;
                mutableInteractionSource5 = mutableInteractionSource4;
                Modifier modifierM2084defaultMinSizeVpY3zN4$default12 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier14, z, mutableInteractionSource5, null, z11116, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                float f14 = NavigationRailItemWidth;
                Modifier modifierM2106widthInVpY3zN4$default12 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default12, f14, 0.0f, 2, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy12 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap12 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier12 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default12);
                ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
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
                bm3 bm3VarB12 = cc.b(companion12, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy12, composerM5355constructorimpl, currentCompositionLocalMap12);
                if (composerM5355constructorimpl.getInserting()) {
                    navigationRailItemColors4 = navigationRailItemColors3;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier12, companion12.getSetModifier());
                    BoxScopeInstance boxScopeInstance113 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    FiniteAnimationSpec finiteAnimationSpecValue114 = MotionSchemeKt.value(motionSchemeKeyTokens12, composerStartRestartGroup, 6);
                    NavigationRailItemColors navigationRailItemColors1119 = navigationRailItemColors4;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue114, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density113 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density113.mo1428roundToPx0680j_4(f14) - density113.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    j59 j59Var113 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final MappedInteractionSource mappedInteractionSource113 = (MappedInteractionSource) objRememberedValue;
                    if (bm3Var7 != null) {
                        composerStartRestartGroup.startReplaceGroup(-1825624334);
                        value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1825528978);
                        value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    ComposableLambda composableLambdaRememberComposableLambda1111119 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource113, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                    ComposableLambda composableLambdaRememberComposableLambda11111110 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors1119, value), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3 ll3Var115 = (ll3) objRememberedValue2;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    NavigationRailItemLayout(composableLambdaRememberComposableLambda1111119, composableLambdaRememberComposableLambda11111110, composableLambdaRememberComposableLambda1111117, composableLambda, z11114, ll3Var115, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationRailItemColors2 = navigationRailItemColors1119;
                    composer2 = composerStartRestartGroup;
                    z6 = z11114;
                    z7 = z11116;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier2 = modifier14;
                    bm3Var5 = bm3Var7;
                } else {
                    navigationRailItemColors4 = navigationRailItemColors3;
                }
                dc.b(bm3VarB12, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier12, companion12.getSetModifier());
                BoxScopeInstance boxScopeInstance114 = BoxScopeInstance.INSTANCE;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                FiniteAnimationSpec finiteAnimationSpecValue115 = MotionSchemeKt.value(motionSchemeKeyTokens12, composerStartRestartGroup, 6);
                NavigationRailItemColors navigationRailItemColors11110 = navigationRailItemColors4;
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue115, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Density density114 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density114.mo1428roundToPx0680j_4(f14) - density114.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                j59 j59Var114 = j59.a;
                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final MappedInteractionSource mappedInteractionSource114 = (MappedInteractionSource) objRememberedValue;
                if (bm3Var7 != null) {
                    composerStartRestartGroup.startReplaceGroup(-1825624334);
                    value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1825528978);
                    value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                }
                ComposableLambda composableLambdaRememberComposableLambda11111111 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                    public final void invoke(Composer composer3, int i15) {
                        if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                        }
                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource114, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                ComposableLambda composableLambdaRememberComposableLambda11111112 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors11110, value), composerStartRestartGroup, 54);
                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                ll3 ll3Var116 = (ll3) objRememberedValue2;
                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                NavigationRailItemLayout(composableLambdaRememberComposableLambda11111111, composableLambdaRememberComposableLambda11111112, composableLambdaRememberComposableLambda1111117, composableLambda, z11114, ll3Var116, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                navigationRailItemColors2 = navigationRailItemColors11110;
                composer2 = composerStartRestartGroup;
                z6 = z11114;
                z7 = z11116;
                mutableInteractionSource2 = mutableInteractionSource3;
                modifier2 = modifier14;
                bm3Var5 = bm3Var7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z6 = z3;
                mutableInteractionSource2 = mutableInteractionSource;
                z7 = z4;
                composer2 = composerStartRestartGroup;
                navigationRailItemColors2 = navigationRailItemColorsColors;
                bm3Var5 = bm3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        z4 = z2;
        i6 = i2 & 32;
        if (i6 != 0) {
            bm3Var4 = bm3Var2;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                c = ' ';
                if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(z3)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            if ((i & 12582912) == 0) {
                if ((i2 & 128) == 0) {
                    navigationRailItemColorsColors = navigationRailItemColors;
                    if (composerStartRestartGroup.changed(navigationRailItemColorsColors)) {
                    }
                    i3 |= i14;
                } else {
                    navigationRailItemColorsColors = navigationRailItemColors;
                }
                i3 |= i14;
            } else {
                navigationRailItemColorsColors = navigationRailItemColors;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    } else {
                        if (i13 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if (i6 != 0) {
                            bm3Var4 = null;
                        }
                        if (i8 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i12 = i3;
                        z9 = z4;
                        navigationRailItemColors3 = navigationRailItemColorsColors;
                        bm3Var6 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z10 = z8;
                    }
                    Modifier modifier15 = modifier2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(253288608);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1947832599);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens13 = MotionSchemeKeyTokens.DefaultEffects;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens13, composerStartRestartGroup, 6);
                    boolean z11117 = z10;
                    ComposableLambda composableLambdaRememberComposableLambda11111113 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                    if (bm3Var6 == null) {
                        composerStartRestartGroup.startReplaceGroup(254215848);
                        composerStartRestartGroup.endReplaceGroup();
                        bm3Var7 = bm3Var6;
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(254215849);
                        final NavigationRailItemColors navigationRailItemColors11111 = navigationRailItemColors3;
                        final boolean z11118 = z9;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var110 = bm3Var6;
                        bm3Var7 = bm3Var110;
                        ComposableLambda composableLambdaRememberComposableLambda11111114 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                            private static final long invoke$lambda$0(State<Color> state) {
                                return state.getValue().m6242unboximpl();
                            }

                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                                }
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors11111.m3708textColorWaAFU9c$material3(z, z11118), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var110, composer3, 0);
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
                    boolean z11119 = z9;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    Modifier modifierM2084defaultMinSizeVpY3zN4$default13 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier15, z, mutableInteractionSource5, null, z11119, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                    float f15 = NavigationRailItemWidth;
                    Modifier modifierM2106widthInVpY3zN4$default13 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default13, f15, 0.0f, 2, null);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy13 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap13 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier13 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default13);
                    ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
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
                    bm3 bm3VarB13 = cc.b(companion13, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy13, composerM5355constructorimpl, currentCompositionLocalMap13);
                    if (composerM5355constructorimpl.getInserting()) {
                        navigationRailItemColors4 = navigationRailItemColors3;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier13, companion13.getSetModifier());
                        BoxScopeInstance boxScopeInstance115 = BoxScopeInstance.INSTANCE;
                        if (z) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        FiniteAnimationSpec finiteAnimationSpecValue116 = MotionSchemeKt.value(motionSchemeKeyTokens13, composerStartRestartGroup, 6);
                        NavigationRailItemColors navigationRailItemColors11112 = navigationRailItemColors4;
                        stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue116, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        if (z) {
                            f2 = 1.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                        Density density115 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density115.mo1428roundToPx0680j_4(f15) - density115.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        j59 j59Var115 = j59.a;
                        zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        final MappedInteractionSource mappedInteractionSource115 = (MappedInteractionSource) objRememberedValue;
                        if (bm3Var7 != null) {
                            composerStartRestartGroup.startReplaceGroup(-1825624334);
                            value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1825528978);
                            value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        ComposableLambda composableLambdaRememberComposableLambda11111115 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                            public final void invoke(Composer composer3, int i15) {
                                if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                                }
                                BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource115, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                        ComposableLambda composableLambdaRememberComposableLambda11111116 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors11112, value), composerStartRestartGroup, 54);
                        zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged2) {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        ll3 ll3Var117 = (ll3) objRememberedValue2;
                        zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged3) {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        NavigationRailItemLayout(composableLambdaRememberComposableLambda11111115, composableLambdaRememberComposableLambda11111116, composableLambdaRememberComposableLambda11111113, composableLambda, z11117, ll3Var117, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        navigationRailItemColors2 = navigationRailItemColors11112;
                        composer2 = composerStartRestartGroup;
                        z6 = z11117;
                        z7 = z11119;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier2 = modifier15;
                        bm3Var5 = bm3Var7;
                    } else {
                        navigationRailItemColors4 = navigationRailItemColors3;
                    }
                    dc.b(bm3VarB13, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier13, companion13.getSetModifier());
                    BoxScopeInstance boxScopeInstance116 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    FiniteAnimationSpec finiteAnimationSpecValue117 = MotionSchemeKt.value(motionSchemeKeyTokens13, composerStartRestartGroup, 6);
                    NavigationRailItemColors navigationRailItemColors11113 = navigationRailItemColors4;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue117, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density116 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density116.mo1428roundToPx0680j_4(f15) - density116.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    j59 j59Var116 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final MappedInteractionSource mappedInteractionSource116 = (MappedInteractionSource) objRememberedValue;
                    if (bm3Var7 != null) {
                        composerStartRestartGroup.startReplaceGroup(-1825624334);
                        value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1825528978);
                        value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    ComposableLambda composableLambdaRememberComposableLambda11111117 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource116, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                    ComposableLambda composableLambdaRememberComposableLambda11111118 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors11113, value), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3 ll3Var118 = (ll3) objRememberedValue2;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    NavigationRailItemLayout(composableLambdaRememberComposableLambda11111117, composableLambdaRememberComposableLambda11111118, composableLambdaRememberComposableLambda11111113, composableLambda, z11117, ll3Var118, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationRailItemColors2 = navigationRailItemColors11113;
                    composer2 = composerStartRestartGroup;
                    z6 = z11117;
                    z7 = z11119;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier2 = modifier15;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z6 = z3;
                    mutableInteractionSource2 = mutableInteractionSource;
                    z7 = z4;
                    composer2 = composerStartRestartGroup;
                    navigationRailItemColors2 = navigationRailItemColorsColors;
                    bm3Var5 = bm3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i3 & 38347923) != 38347922) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i13 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var4 = null;
                    }
                    if (i8 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i12 = i3;
                    z9 = z4;
                    navigationRailItemColors3 = navigationRailItemColorsColors;
                    bm3Var6 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z10 = z8;
                } else {
                    if (i13 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var4 = null;
                    }
                    if (i8 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i12 = i3;
                    z9 = z4;
                    navigationRailItemColors3 = navigationRailItemColorsColors;
                    bm3Var6 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z10 = z8;
                }
                Modifier modifier16 = modifier2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(253288608);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1947832599);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens14 = MotionSchemeKeyTokens.DefaultEffects;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens14, composerStartRestartGroup, 6);
                boolean z111110 = z10;
                ComposableLambda composableLambdaRememberComposableLambda11111119 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                if (bm3Var6 == null) {
                    composerStartRestartGroup.startReplaceGroup(254215848);
                    composerStartRestartGroup.endReplaceGroup();
                    bm3Var7 = bm3Var6;
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(254215849);
                    final NavigationRailItemColors navigationRailItemColors11114 = navigationRailItemColors3;
                    final boolean z111111 = z9;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var111 = bm3Var6;
                    bm3Var7 = bm3Var111;
                    ComposableLambda composableLambdaRememberComposableLambda111111110 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                        private static final long invoke$lambda$0(State<Color> state) {
                            return state.getValue().m6242unboximpl();
                        }

                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                            }
                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors11114.m3708textColorWaAFU9c$material3(z, z111111), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var111, composer3, 0);
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
                boolean z111112 = z9;
                mutableInteractionSource5 = mutableInteractionSource4;
                Modifier modifierM2084defaultMinSizeVpY3zN4$default14 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier16, z, mutableInteractionSource5, null, z111112, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                float f16 = NavigationRailItemWidth;
                Modifier modifierM2106widthInVpY3zN4$default14 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default14, f16, 0.0f, 2, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy14 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap14 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier14 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default14);
                ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
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
                bm3 bm3VarB14 = cc.b(companion14, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy14, composerM5355constructorimpl, currentCompositionLocalMap14);
                if (composerM5355constructorimpl.getInserting()) {
                    navigationRailItemColors4 = navigationRailItemColors3;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier14, companion14.getSetModifier());
                    BoxScopeInstance boxScopeInstance117 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    FiniteAnimationSpec finiteAnimationSpecValue118 = MotionSchemeKt.value(motionSchemeKeyTokens14, composerStartRestartGroup, 6);
                    NavigationRailItemColors navigationRailItemColors11115 = navigationRailItemColors4;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue118, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density117 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density117.mo1428roundToPx0680j_4(f16) - density117.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    j59 j59Var117 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final MappedInteractionSource mappedInteractionSource117 = (MappedInteractionSource) objRememberedValue;
                    if (bm3Var7 != null) {
                        composerStartRestartGroup.startReplaceGroup(-1825624334);
                        value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1825528978);
                        value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    ComposableLambda composableLambdaRememberComposableLambda111111111 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource117, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                    ComposableLambda composableLambdaRememberComposableLambda111111112 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors11115, value), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3 ll3Var119 = (ll3) objRememberedValue2;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    NavigationRailItemLayout(composableLambdaRememberComposableLambda111111111, composableLambdaRememberComposableLambda111111112, composableLambdaRememberComposableLambda11111119, composableLambda, z111110, ll3Var119, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationRailItemColors2 = navigationRailItemColors11115;
                    composer2 = composerStartRestartGroup;
                    z6 = z111110;
                    z7 = z111112;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier2 = modifier16;
                    bm3Var5 = bm3Var7;
                } else {
                    navigationRailItemColors4 = navigationRailItemColors3;
                }
                dc.b(bm3VarB14, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier14, companion14.getSetModifier());
                BoxScopeInstance boxScopeInstance118 = BoxScopeInstance.INSTANCE;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                FiniteAnimationSpec finiteAnimationSpecValue119 = MotionSchemeKt.value(motionSchemeKeyTokens14, composerStartRestartGroup, 6);
                NavigationRailItemColors navigationRailItemColors11116 = navigationRailItemColors4;
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue119, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Density density118 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density118.mo1428roundToPx0680j_4(f16) - density118.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                j59 j59Var118 = j59.a;
                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final MappedInteractionSource mappedInteractionSource118 = (MappedInteractionSource) objRememberedValue;
                if (bm3Var7 != null) {
                    composerStartRestartGroup.startReplaceGroup(-1825624334);
                    value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1825528978);
                    value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                }
                ComposableLambda composableLambdaRememberComposableLambda111111113 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                    public final void invoke(Composer composer3, int i15) {
                        if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                        }
                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource118, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                ComposableLambda composableLambdaRememberComposableLambda111111114 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors11116, value), composerStartRestartGroup, 54);
                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                ll3 ll3Var1110 = (ll3) objRememberedValue2;
                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                NavigationRailItemLayout(composableLambdaRememberComposableLambda111111113, composableLambdaRememberComposableLambda111111114, composableLambdaRememberComposableLambda11111119, composableLambda, z111110, ll3Var1110, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                navigationRailItemColors2 = navigationRailItemColors11116;
                composer2 = composerStartRestartGroup;
                z6 = z111110;
                z7 = z111112;
                mutableInteractionSource2 = mutableInteractionSource3;
                modifier2 = modifier16;
                bm3Var5 = bm3Var7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z6 = z3;
                mutableInteractionSource2 = mutableInteractionSource;
                z7 = z4;
                composer2 = composerStartRestartGroup;
                navigationRailItemColors2 = navigationRailItemColorsColors;
                bm3Var5 = bm3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        bm3Var4 = bm3Var2;
        c = ' ';
        i8 = i2 & 64;
        if (i8 != 0) {
            i3 |= 1572864;
        } else if ((i & 1572864) == 0) {
            if (composerStartRestartGroup.changed(z3)) {
                i9 = 1048576;
            } else {
                i9 = 524288;
            }
            i3 |= i9;
        }
        if ((i & 12582912) == 0) {
            if ((i2 & 128) == 0) {
                navigationRailItemColorsColors = navigationRailItemColors;
                if (composerStartRestartGroup.changed(navigationRailItemColorsColors)) {
                }
                i3 |= i14;
            } else {
                navigationRailItemColorsColors = navigationRailItemColors;
            }
            i3 |= i14;
        } else {
            navigationRailItemColorsColors = navigationRailItemColors;
        }
        i10 = i2 & 256;
        if (i10 != 0) {
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((i3 & 38347923) != 38347922) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i13 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var4 = null;
                    }
                    if (i8 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i12 = i3;
                    z9 = z4;
                    navigationRailItemColors3 = navigationRailItemColorsColors;
                    bm3Var6 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z10 = z8;
                } else {
                    if (i13 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if (i6 != 0) {
                        bm3Var4 = null;
                    }
                    if (i8 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i12 = i3;
                    z9 = z4;
                    navigationRailItemColors3 = navigationRailItemColorsColors;
                    bm3Var6 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z10 = z8;
                }
                Modifier modifier17 = modifier2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(253288608);
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1947832599);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens15 = MotionSchemeKeyTokens.DefaultEffects;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens15, composerStartRestartGroup, 6);
                boolean z111113 = z10;
                ComposableLambda composableLambdaRememberComposableLambda111111115 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
                if (bm3Var6 == null) {
                    composerStartRestartGroup.startReplaceGroup(254215848);
                    composerStartRestartGroup.endReplaceGroup();
                    bm3Var7 = bm3Var6;
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(254215849);
                    final NavigationRailItemColors navigationRailItemColors11117 = navigationRailItemColors3;
                    final boolean z111114 = z9;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var112 = bm3Var6;
                    bm3Var7 = bm3Var112;
                    ComposableLambda composableLambdaRememberComposableLambda111111116 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                        private static final long invoke$lambda$0(State<Color> state) {
                            return state.getValue().m6242unboximpl();
                        }

                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                            }
                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors11117.m3708textColorWaAFU9c$material3(z, z111114), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var112, composer3, 0);
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
                boolean z111115 = z9;
                mutableInteractionSource5 = mutableInteractionSource4;
                Modifier modifierM2084defaultMinSizeVpY3zN4$default15 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier17, z, mutableInteractionSource5, null, z111115, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
                float f17 = NavigationRailItemWidth;
                Modifier modifierM2106widthInVpY3zN4$default15 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default15, f17, 0.0f, 2, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy15 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap15 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier15 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default15);
                ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
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
                bm3 bm3VarB15 = cc.b(companion15, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy15, composerM5355constructorimpl, currentCompositionLocalMap15);
                if (composerM5355constructorimpl.getInserting()) {
                    navigationRailItemColors4 = navigationRailItemColors3;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier15, companion15.getSetModifier());
                    BoxScopeInstance boxScopeInstance119 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    FiniteAnimationSpec finiteAnimationSpecValue1110 = MotionSchemeKt.value(motionSchemeKeyTokens15, composerStartRestartGroup, 6);
                    NavigationRailItemColors navigationRailItemColors11118 = navigationRailItemColors4;
                    stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue1110, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    if (z) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.0f;
                    }
                    stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                    Density density119 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density119.mo1428roundToPx0680j_4(f17) - density119.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    j59 j59Var119 = j59.a;
                    zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    final MappedInteractionSource mappedInteractionSource119 = (MappedInteractionSource) objRememberedValue;
                    if (bm3Var7 != null) {
                        composerStartRestartGroup.startReplaceGroup(-1825624334);
                        value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1825528978);
                        value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    ComposableLambda composableLambdaRememberComposableLambda111111117 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                        public final void invoke(Composer composer3, int i15) {
                            if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                            }
                            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource119, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                    ComposableLambda composableLambdaRememberComposableLambda111111118 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors11118, value), composerStartRestartGroup, 54);
                    zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2) {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    ll3 ll3Var1111 = (ll3) objRememberedValue2;
                    zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged3) {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    NavigationRailItemLayout(composableLambdaRememberComposableLambda111111117, composableLambdaRememberComposableLambda111111118, composableLambdaRememberComposableLambda111111115, composableLambda, z111113, ll3Var1111, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    navigationRailItemColors2 = navigationRailItemColors11118;
                    composer2 = composerStartRestartGroup;
                    z6 = z111113;
                    z7 = z111115;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier2 = modifier17;
                    bm3Var5 = bm3Var7;
                } else {
                    navigationRailItemColors4 = navigationRailItemColors3;
                }
                dc.b(bm3VarB15, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier15, companion15.getSetModifier());
                BoxScopeInstance boxScopeInstance1110 = BoxScopeInstance.INSTANCE;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                FiniteAnimationSpec finiteAnimationSpecValue1111 = MotionSchemeKt.value(motionSchemeKeyTokens15, composerStartRestartGroup, 6);
                NavigationRailItemColors navigationRailItemColors11119 = navigationRailItemColors4;
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue1111, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Density density1110 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density1110.mo1428roundToPx0680j_4(f17) - density1110.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                j59 j59Var1110 = j59.a;
                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final MappedInteractionSource mappedInteractionSource1110 = (MappedInteractionSource) objRememberedValue;
                if (bm3Var7 != null) {
                    composerStartRestartGroup.startReplaceGroup(-1825624334);
                    value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1825528978);
                    value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                }
                ComposableLambda composableLambdaRememberComposableLambda111111119 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                    public final void invoke(Composer composer3, int i15) {
                        if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                        }
                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource1110, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                ComposableLambda composableLambdaRememberComposableLambda1111111110 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors11119, value), composerStartRestartGroup, 54);
                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                ll3 ll3Var1112 = (ll3) objRememberedValue2;
                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                NavigationRailItemLayout(composableLambdaRememberComposableLambda111111119, composableLambdaRememberComposableLambda1111111110, composableLambdaRememberComposableLambda111111115, composableLambda, z111113, ll3Var1112, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                navigationRailItemColors2 = navigationRailItemColors11119;
                composer2 = composerStartRestartGroup;
                z6 = z111113;
                z7 = z111115;
                mutableInteractionSource2 = mutableInteractionSource3;
                modifier2 = modifier17;
                bm3Var5 = bm3Var7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z6 = z3;
                mutableInteractionSource2 = mutableInteractionSource;
                z7 = z4;
                composer2 = composerStartRestartGroup;
                navigationRailItemColors2 = navigationRailItemColorsColors;
                bm3Var5 = bm3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 100663296;
        if ((i3 & 38347923) != 38347922) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i13 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z4 = true;
                }
                if (i6 != 0) {
                    bm3Var4 = null;
                }
                if (i8 != 0) {
                    z8 = true;
                } else {
                    z8 = z3;
                }
                if ((i2 & 128) != 0) {
                    i3 &= -29360129;
                    navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                i12 = i3;
                z9 = z4;
                navigationRailItemColors3 = navigationRailItemColorsColors;
                bm3Var6 = bm3Var4;
                if (i10 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                z10 = z8;
            } else {
                if (i13 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z4 = true;
                }
                if (i6 != 0) {
                    bm3Var4 = null;
                }
                if (i8 != 0) {
                    z8 = true;
                } else {
                    z8 = z3;
                }
                if ((i2 & 128) != 0) {
                    i3 &= -29360129;
                    navigationRailItemColorsColors = NavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                i12 = i3;
                z9 = z4;
                navigationRailItemColors3 = navigationRailItemColorsColors;
                bm3Var6 = bm3Var4;
                if (i10 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                z10 = z8;
            }
            Modifier modifier18 = modifier2;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1620317701, i12, -1, "androidx.compose.material3.NavigationRailItem (NavigationRail.kt:209)");
            }
            if (mutableInteractionSource3 == null) {
                composerStartRestartGroup.startReplaceGroup(253288608);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = InteractionSourceKt.MutableInteractionSource();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                composerStartRestartGroup.endReplaceGroup();
                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue4;
            } else {
                composerStartRestartGroup.startReplaceGroup(1947832599);
                composerStartRestartGroup.endReplaceGroup();
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            MotionSchemeKeyTokens motionSchemeKeyTokens16 = MotionSchemeKeyTokens.DefaultEffects;
            finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens16, composerStartRestartGroup, 6);
            boolean z111116 = z10;
            ComposableLambda composableLambdaRememberComposableLambda1111111111 = ComposableLambdaKt.rememberComposableLambda(206057749, true, new NavigationRailKt$NavigationRailItem$styledIcon$1(navigationRailItemColors3, z, z9, finiteAnimationSpecValue, bm3Var6, z10, bm3Var3), composerStartRestartGroup, 54);
            if (bm3Var6 == null) {
                composerStartRestartGroup.startReplaceGroup(254215848);
                composerStartRestartGroup.endReplaceGroup();
                bm3Var7 = bm3Var6;
                composableLambda = null;
            } else {
                composerStartRestartGroup.startReplaceGroup(254215849);
                final NavigationRailItemColors navigationRailItemColors111110 = navigationRailItemColors3;
                final boolean z111117 = z9;
                final bm3<? super Composer, ? super Integer, j59> bm3Var113 = bm3Var6;
                bm3Var7 = bm3Var113;
                ComposableLambda composableLambdaRememberComposableLambda1111111112 = ComposableLambdaKt.rememberComposableLambda(-2056532825, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$styledLabel$1$1
                    private static final long invoke$lambda$0(State<Color> state) {
                        return state.getValue().m6242unboximpl();
                    }

                    public final void invoke(Composer composer3, int i15) {
                        if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-2056532825, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:231)");
                        }
                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(invoke$lambda$0(SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(navigationRailItemColors111110.m3708textColorWaAFU9c$material3(z, z111117), finiteAnimationSpecValue, null, null, composer3, 0, 12)), TypographyKt.getValue(NavigationRailVerticalItemTokens.INSTANCE.getLabelTextFont(), composer3, 6), bm3Var113, composer3, 0);
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
            boolean z111118 = z9;
            mutableInteractionSource5 = mutableInteractionSource4;
            Modifier modifierM2084defaultMinSizeVpY3zN4$default16 = SizeKt.m2084defaultMinSizeVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(modifier18, z, mutableInteractionSource5, null, z111118, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), 0.0f, NavigationRailItemHeight, 1, null);
            float f18 = NavigationRailItemWidth;
            Modifier modifierM2106widthInVpY3zN4$default16 = SizeKt.m2106widthInVpY3zN4$default(modifierM2084defaultMinSizeVpY3zN4$default16, f18, 0.0f, 2, null);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy16 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap16 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier16 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2106widthInVpY3zN4$default16);
            ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
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
            bm3 bm3VarB16 = cc.b(companion16, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy16, composerM5355constructorimpl, currentCompositionLocalMap16);
            if (composerM5355constructorimpl.getInserting()) {
                navigationRailItemColors4 = navigationRailItemColors3;
                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier16, companion16.getSetModifier());
                BoxScopeInstance boxScopeInstance1111 = BoxScopeInstance.INSTANCE;
                if (z) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                FiniteAnimationSpec finiteAnimationSpecValue1112 = MotionSchemeKt.value(motionSchemeKeyTokens16, composerStartRestartGroup, 6);
                NavigationRailItemColors navigationRailItemColors111111 = navigationRailItemColors4;
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue1112, 0.0f, null, null, composerStartRestartGroup, 0, 28);
                if (z) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Density density1111 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density1111.mo1428roundToPx0680j_4(f18) - density1111.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                j59 j59Var1111 = j59.a;
                zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                final MappedInteractionSource mappedInteractionSource1111 = (MappedInteractionSource) objRememberedValue;
                if (bm3Var7 != null) {
                    composerStartRestartGroup.startReplaceGroup(-1825624334);
                    value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1825528978);
                    value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                }
                ComposableLambda composableLambdaRememberComposableLambda1111111113 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                    public final void invoke(Composer composer3, int i15) {
                        if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                        }
                        BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource1111, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
                ComposableLambda composableLambdaRememberComposableLambda1111111114 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors111111, value), composerStartRestartGroup, 54);
                zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                ll3 ll3Var1113 = (ll3) objRememberedValue2;
                zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                NavigationRailItemLayout(composableLambdaRememberComposableLambda1111111113, composableLambdaRememberComposableLambda1111111114, composableLambdaRememberComposableLambda1111111111, composableLambda, z111116, ll3Var1113, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                navigationRailItemColors2 = navigationRailItemColors111111;
                composer2 = composerStartRestartGroup;
                z6 = z111116;
                z7 = z111118;
                mutableInteractionSource2 = mutableInteractionSource3;
                modifier2 = modifier18;
                bm3Var5 = bm3Var7;
            } else {
                navigationRailItemColors4 = navigationRailItemColors3;
            }
            dc.b(bm3VarB16, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier16, companion16.getSetModifier());
            BoxScopeInstance boxScopeInstance1112 = BoxScopeInstance.INSTANCE;
            if (z) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            FiniteAnimationSpec finiteAnimationSpecValue1113 = MotionSchemeKt.value(motionSchemeKeyTokens16, composerStartRestartGroup, 6);
            NavigationRailItemColors navigationRailItemColors111112 = navigationRailItemColors4;
            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f, finiteAnimationSpecValue1113, 0.0f, null, null, composerStartRestartGroup, 0, 28);
            if (z) {
                f2 = 1.0f;
            } else {
                f2 = 0.0f;
            }
            stateAnimateFloatAsState2 = AnimateAsStateKt.animateFloatAsState(f2, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
            Density density1112 = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((density1112.mo1428roundToPx0680j_4(f18) - density1112.mo1428roundToPx0680j_4(NavigationRailVerticalItemTokens.INSTANCE.m4948getActiveIndicatorWidthD9Ej5fM())) / 2.0f)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            j59 j59Var1112 = j59.a;
            zChanged = composerStartRestartGroup.changed(mutableInteractionSource5) | composerStartRestartGroup.changed(jM5979constructorimpl);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new MappedInteractionSource(mutableInteractionSource5, jM5979constructorimpl, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final MappedInteractionSource mappedInteractionSource1112 = (MappedInteractionSource) objRememberedValue;
            if (bm3Var7 != null) {
                composerStartRestartGroup.startReplaceGroup(-1825624334);
                value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1825528978);
                value = ShapesKt.getValue(ShapeKeyTokens.CornerFull, composerStartRestartGroup, 6);
                composerStartRestartGroup.endReplaceGroup();
            }
            ComposableLambda composableLambdaRememberComposableLambda1111111115 = ComposableLambdaKt.rememberComposableLambda(455696046, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItem$1$indicatorRipple$1
                public final void invoke(Composer composer3, int i15) {
                    if (!composer3.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(455696046, i15, -1, "androidx.compose.material3.NavigationRailItem.<anonymous>.<anonymous> (NavigationRail.kt:298)");
                    }
                    BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, "indicatorRipple"), value), mappedInteractionSource1112, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composer3, 0);
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
            ComposableLambda composableLambdaRememberComposableLambda1111111116 = ComposableLambdaKt.rememberComposableLambda(2137606782, true, new NavigationRailKt$NavigationRailItem$1$indicator$1(stateAnimateFloatAsState, navigationRailItemColors111112, value), composerStartRestartGroup, 54);
            zChanged2 = composerStartRestartGroup.changed(stateAnimateFloatAsState);
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged2) {
                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                objRememberedValue2 = new uj(stateAnimateFloatAsState, 5);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            ll3 ll3Var1114 = (ll3) objRememberedValue2;
            zChanged3 = composerStartRestartGroup.changed(stateAnimateFloatAsState2);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged3) {
                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new f80(stateAnimateFloatAsState2, 4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            NavigationRailItemLayout(composableLambdaRememberComposableLambda1111111115, composableLambdaRememberComposableLambda1111111116, composableLambdaRememberComposableLambda1111111111, composableLambda, z111116, ll3Var1114, (ll3) objRememberedValue3, composerStartRestartGroup, (57344 & (i12 >> 6)) | 438);
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            navigationRailItemColors2 = navigationRailItemColors111112;
            composer2 = composerStartRestartGroup;
            z6 = z111116;
            z7 = z111118;
            mutableInteractionSource2 = mutableInteractionSource3;
            modifier2 = modifier18;
            bm3Var5 = bm3Var7;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            z6 = z3;
            mutableInteractionSource2 = mutableInteractionSource;
            z7 = z4;
            composer2 = composerStartRestartGroup;
            navigationRailItemColors2 = navigationRailItemColorsColors;
            bm3Var5 = bm3Var4;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ol5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationRailKt.NavigationRailItem$lambda$11(z, ll3Var, bm3Var, modifier2, z7, bm3Var5, z6, navigationRailItemColors2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float NavigationRailItem$lambda$10$lambda$7$lambda$6(State state) {
        return ((Number) state.getValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float NavigationRailItem$lambda$10$lambda$9$lambda$8(State state) {
        return ((Number) state.getValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationRailItem$lambda$11(boolean z, ll3 ll3Var, bm3 bm3Var, Modifier modifier, boolean z2, bm3 bm3Var2, boolean z3, NavigationRailItemColors navigationRailItemColors, MutableInteractionSource mutableInteractionSource, int i, int i2, Composer composer, int i3) {
        NavigationRailItem(z, ll3Var, bm3Var, modifier, z2, bm3Var2, z3, navigationRailItemColors, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
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
    private static final void NavigationRailItemLayout(final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final bm3<? super Composer, ? super Integer, j59> bm3Var3, final bm3<? super Composer, ? super Integer, j59> bm3Var4, final boolean z, final ll3<Float> ll3Var, final ll3<Float> ll3Var2, Composer composer, final int i) {
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
        Composer composerStartRestartGroup = composer.startRestartGroup(-759267492);
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
                ComposerKt.traceEventStart(-759267492, i2, -1, "androidx.compose.material3.NavigationRailItemLayout (NavigationRail.kt:557)");
            }
            Modifier.Companion companion2 = Modifier.Companion;
            Modifier modifierBadgeBounds = BadgeKt.badgeBounds(companion2);
            int i4 = 57344 & i2;
            boolean z4 = ((i2 & 7168) == 2048) | ((3670016 & i2) == 1048576) | (i4 == 16384);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z4 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new MeasurePolicy() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItemLayout$1$1
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
                                int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(NavigationRailKt.IndicatorHorizontalPadding * 2.0f)) + placeableMo7702measureBRTryo1.getWidth();
                                int iB = w65.b(iMo1428roundToPx0680j_4 * f);
                                int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl((bm3Var4 == null ? NavigationRailKt.IndicatorVerticalPaddingNoLabel : NavigationRailKt.IndicatorVerticalPaddingWithLabel) * 2.0f)) + placeableMo7702measureBRTryo1.getHeight();
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
                                            return NavigationRailKt.m3714placeIconX9ElhV4(measureScope, placeableMo7702measureBRTryo1, placeableMo7702measureBRTryo2, placeableMo7702measureBRTryo3, j);
                                        }
                                        placeableMo7702measureBRTryo0.getClass();
                                        return NavigationRailKt.m3715placeLabelAndIconzUg2_y0(measureScope, placeableMo7702measureBRTryo0, placeableMo7702measureBRTryo1, placeableMo7702measureBRTryo2, placeableMo7702measureBRTryo3, j, z, f);
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
                    composerStartRestartGroup.startReplaceGroup(773116085);
                    Modifier modifierLayoutId2 = LayoutIdKt.layoutId(companion2, "label");
                    if (i4 == 16384) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z3 = z2 | ((i3 & 458752) == 131072);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new nl3() { // from class: sl5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return NavigationRailKt.NavigationRailItemLayout$lambda$17$lambda$15$lambda$14(z, ll3Var, (GraphicsLayerScope) obj);
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
                    composerStartRestartGroup.startReplaceGroup(773387087);
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
                composerStartRestartGroup.startReplaceGroup(773116085);
                Modifier modifierLayoutId4 = LayoutIdKt.layoutId(companion2, "label");
                if (i4 == 16384) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z3 = z2 | ((i3 & 458752) == 131072);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z3) {
                    objRememberedValue = new nl3() { // from class: sl5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return NavigationRailKt.NavigationRailItemLayout$lambda$17$lambda$15$lambda$14(z, ll3Var, (GraphicsLayerScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new nl3() { // from class: sl5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return NavigationRailKt.NavigationRailItemLayout$lambda$17$lambda$15$lambda$14(z, ll3Var, (GraphicsLayerScope) obj);
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
                composerStartRestartGroup.startReplaceGroup(773387087);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tl5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationRailKt.NavigationRailItemLayout$lambda$18(bm3Var, bm3Var2, bm3Var3, bm3Var4, z, ll3Var, ll3Var2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationRailItemLayout$lambda$17$lambda$15$lambda$14(boolean z, ll3 ll3Var, GraphicsLayerScope graphicsLayerScope) {
        graphicsLayerScope.setAlpha(z ? 1.0f : ((Number) ll3Var.invoke()).floatValue());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationRailItemLayout$lambda$18(bm3 bm3Var, bm3 bm3Var2, bm3 bm3Var3, bm3 bm3Var4, boolean z, ll3 ll3Var, ll3 ll3Var2, int i, Composer composer, int i2) {
        NavigationRailItemLayout(bm3Var, bm3Var2, bm3Var3, bm3Var4, z, ll3Var, ll3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationRail_qi6gXK8$lambda$1(Modifier modifier, long j, long j2, dm3 dm3Var, WindowInsets windowInsets, dm3 dm3Var2, int i, int i2, Composer composer, int i3) {
        m3711NavigationRailqi6gXK8(modifier, j, j2, dm3Var, windowInsets, dm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static final ProvidableCompositionLocal<NavigationRailOverride> getLocalNavigationRailOverride() {
        return LocalNavigationRailOverride;
    }

    public static final float getNavigationRailItemHeight() {
        return NavigationRailItemHeight;
    }

    public static final float getNavigationRailItemVerticalPadding() {
        return NavigationRailItemVerticalPadding;
    }

    public static final float getNavigationRailItemWidth() {
        return NavigationRailItemWidth;
    }

    public static final float getNavigationRailVerticalPadding() {
        return NavigationRailVerticalPadding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: placeIcon-X9ElhV4, reason: not valid java name */
    public static final MeasureResult m3714placeIconX9ElhV4(MeasureScope measureScope, final Placeable placeable, final Placeable placeable2, final Placeable placeable3, long j) {
        final int iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, Math.max(placeable.getWidth(), Math.max(placeable2.getWidth(), placeable3 != null ? placeable3.getWidth() : 0)));
        final int iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(j, measureScope.mo1428roundToPx0680j_4(NavigationRailItemHeight));
        final int iB = ug.b(iM9012constrainWidthK40F9xA, 2, placeable);
        final int iB2 = tg.b(iM9011constrainHeightK40F9xA, 2, placeable);
        final int iB3 = ug.b(iM9012constrainWidthK40F9xA, 2, placeable2);
        final int iB4 = tg.b(iM9011constrainHeightK40F9xA, 2, placeable2);
        return MeasureScope.layout$default(measureScope, iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA, null, new nl3() { // from class: ql5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                Placeable placeable4 = placeable3;
                int i = iB;
                int i2 = iB2;
                Placeable placeable5 = placeable;
                int i3 = iB3;
                int i4 = iB4;
                return NavigationRailKt.placeIcon_X9ElhV4$lambda$20(placeable4, placeable5, i, i2, placeable2, i3, i4, iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 placeIcon_X9ElhV4$lambda$20(Placeable placeable, Placeable placeable2, int i, int i2, Placeable placeable3, int i3, int i4, int i5, int i6, Placeable.PlacementScope placementScope) {
        if (placeable != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, ug.b(i5, 2, placeable), tg.b(i6, 2, placeable), 0.0f, 4, null);
        }
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i, i2, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i3, i4, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: placeLabelAndIcon-zUg2_y0, reason: not valid java name */
    public static final MeasureResult m3715placeLabelAndIconzUg2_y0(final MeasureScope measureScope, final Placeable placeable, final Placeable placeable2, final Placeable placeable3, final Placeable placeable4, long j, final boolean z, final float f) {
        float height = placeable2.getHeight();
        float f2 = IndicatorVerticalPaddingWithLabel;
        float fMo1434toPx0680j_4 = measureScope.mo1434toPx0680j_4(f2) + height;
        float f3 = NavigationRailItemVerticalPadding;
        float fMo1434toPx0680j_5 = measureScope.mo1434toPx0680j_4(f3) + fMo1434toPx0680j_4 + placeable.getHeight();
        float fM8996getMinHeightimpl = (Constraints.m8996getMinHeightimpl(j) - fMo1434toPx0680j_5) / 2.0f;
        float fMo1434toPx0680j_6 = measureScope.mo1434toPx0680j_4(f2);
        final float f4 = fM8996getMinHeightimpl < fMo1434toPx0680j_6 ? fMo1434toPx0680j_6 : fM8996getMinHeightimpl;
        float f5 = (f4 * 2.0f) + fMo1434toPx0680j_5;
        final float height2 = (1.0f - f) * ((z ? f4 : (f5 - placeable2.getHeight()) / 2.0f) - f4);
        final float fMo1434toPx0680j_7 = measureScope.mo1434toPx0680j_4(f3) + measureScope.mo1434toPx0680j_4(f2) + placeable2.getHeight() + f4;
        final int iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, Math.max(placeable2.getWidth(), Math.max(placeable.getWidth(), placeable4 != null ? placeable4.getWidth() : 0)));
        final int iB = ug.b(iM9012constrainWidthK40F9xA, 2, placeable);
        final int iB2 = ug.b(iM9012constrainWidthK40F9xA, 2, placeable2);
        final int iB3 = ug.b(iM9012constrainWidthK40F9xA, 2, placeable3);
        final float fMo1434toPx0680j_8 = f4 - measureScope.mo1434toPx0680j_4(f2);
        return MeasureScope.layout$default(measureScope, iM9012constrainWidthK40F9xA, w65.b(f5), null, new nl3() { // from class: nl5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return NavigationRailKt.placeLabelAndIcon_zUg2_y0$lambda$22(placeable4, z, f, placeable, iB, fMo1434toPx0680j_7, height2, placeable2, iB2, f4, placeable3, iB3, fMo1434toPx0680j_8, iM9012constrainWidthK40F9xA, measureScope, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 placeLabelAndIcon_zUg2_y0$lambda$22(Placeable placeable, boolean z, float f, Placeable placeable2, int i, float f2, float f3, Placeable placeable3, int i2, float f4, Placeable placeable4, int i3, float f5, int i4, MeasureScope measureScope, Placeable.PlacementScope placementScope) {
        if (placeable != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, ug.b(i4, 2, placeable), w65.b((f4 - measureScope.mo1434toPx0680j_4(IndicatorVerticalPaddingWithLabel)) + f3), 0.0f, 4, null);
        }
        if (z || f != 0.0f) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i, w65.b(f2 + f3), 0.0f, 4, null);
        }
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i2, w65.b(f4 + f3), 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, i3, w65.b(f5 + f3), 0.0f, 4, null);
        return j59.a;
    }
}
