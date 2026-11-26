package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.selection.SelectableGroupKt;
import androidx.compose.material3.WideNavigationRailKt;
import androidx.compose.material3.internal.AnchoredDraggableKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.DraggableAnchorsConfig;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.NavigationRailBaselineItemTokens;
import androidx.compose.material3.tokens.NavigationRailCollapsedTokens;
import androidx.compose.material3.tokens.NavigationRailExpandedTokens;
import androidx.compose.material3.tokens.NavigationRailHorizontalItemTokens;
import androidx.compose.material3.tokens.NavigationRailVerticalItemTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.c80;
import defpackage.cc;
import defpackage.dc;
import defpackage.dl3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.gf;
import defpackage.hm;
import defpackage.ia2;
import defpackage.j59;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.p12;
import defpackage.r07;
import defpackage.un;
import defpackage.y22;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class WideNavigationRailKt {
    private static final float CollapsedRailWidth;
    private static final float ExpandedRailMaxWidth;
    private static final float ExpandedRailMinWidth;
    private static final String HeaderLayoutIdTag = "header";
    private static final float ItemHorizontalPadding;
    private static final float ItemStartIconIndicatorVerticalPadding;
    private static final float ItemTopIconIndicatorHorizontalPadding;
    private static final float ItemTopIconIndicatorVerticalPadding;
    private static final ProvidableCompositionLocal<ModalWideNavigationRailOverride> LocalModalWideNavigationRailOverride;
    private static final ProvidableCompositionLocal<WideNavigationRailOverride> LocalWideNavigationRailOverride;
    private static final float PredictiveBackMaxScaleXDistance;
    private static final float PredictiveBackMaxScaleYDistance;
    private static final float PredictiveBackPivotFractionY = 0.5f;
    private static final float TopIconItemMinHeight;
    private static final float WNRHeaderPadding;
    private static final float WNRItemNoLabelIndicatorPadding;
    private static final float WNRVerticalPadding;

    static {
        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens = NavigationRailVerticalItemTokens.INSTANCE;
        float fM4948getActiveIndicatorWidthD9Ej5fM = navigationRailVerticalItemTokens.m4948getActiveIndicatorWidthD9Ej5fM();
        NavigationRailBaselineItemTokens navigationRailBaselineItemTokens = NavigationRailBaselineItemTokens.INSTANCE;
        WNRItemNoLabelIndicatorPadding = Dp.m9042constructorimpl(Dp.m9042constructorimpl(fM4948getActiveIndicatorWidthD9Ej5fM - navigationRailBaselineItemTokens.m4931getIconSizeD9Ej5fM()) / 2.0f);
        ItemHorizontalPadding = Dp.m9042constructorimpl(20.0f);
        NavigationRailCollapsedTokens navigationRailCollapsedTokens = NavigationRailCollapsedTokens.INSTANCE;
        WNRVerticalPadding = navigationRailCollapsedTokens.m4936getTopSpaceD9Ej5fM();
        WNRHeaderPadding = navigationRailBaselineItemTokens.m4930getHeaderSpaceMinimumD9Ej5fM();
        CollapsedRailWidth = navigationRailCollapsedTokens.m4933getContainerWidthD9Ej5fM();
        NavigationRailExpandedTokens navigationRailExpandedTokens = NavigationRailExpandedTokens.INSTANCE;
        ExpandedRailMinWidth = navigationRailExpandedTokens.m4939getContainerWidthMinimumD9Ej5fM();
        ExpandedRailMaxWidth = navigationRailExpandedTokens.m4938getContainerWidthMaximumD9Ej5fM();
        TopIconItemMinHeight = navigationRailBaselineItemTokens.m4928getContainerHeightD9Ej5fM();
        ItemTopIconIndicatorVerticalPadding = Dp.m9042constructorimpl(Dp.m9042constructorimpl(navigationRailVerticalItemTokens.m4947getActiveIndicatorHeightD9Ej5fM() - navigationRailBaselineItemTokens.m4931getIconSizeD9Ej5fM()) / 2.0f);
        ItemTopIconIndicatorHorizontalPadding = Dp.m9042constructorimpl(Dp.m9042constructorimpl(navigationRailVerticalItemTokens.m4948getActiveIndicatorWidthD9Ej5fM() - navigationRailBaselineItemTokens.m4931getIconSizeD9Ej5fM()) / 2.0f);
        ItemStartIconIndicatorVerticalPadding = Dp.m9042constructorimpl(Dp.m9042constructorimpl(NavigationRailHorizontalItemTokens.INSTANCE.m4942getActiveIndicatorHeightD9Ej5fM() - navigationRailBaselineItemTokens.m4931getIconSizeD9Ej5fM()) / 2.0f);
        PredictiveBackMaxScaleXDistance = Dp.m9042constructorimpl(24.0f);
        PredictiveBackMaxScaleYDistance = Dp.m9042constructorimpl(48.0f);
        LocalWideNavigationRailOverride = CompositionLocalKt.compositionLocalOf$default(null, new dl3(2), 1, null);
        LocalModalWideNavigationRailOverride = CompositionLocalKt.compositionLocalOf$default(null, new c80(3), 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0118  */
    /* JADX WARN: Code duplicated, block: B:109:0x012e  */
    /* JADX WARN: Code duplicated, block: B:112:0x0134  */
    /* JADX WARN: Code duplicated, block: B:113:0x013b  */
    /* JADX WARN: Code duplicated, block: B:115:0x013f  */
    /* JADX WARN: Code duplicated, block: B:117:0x0149  */
    /* JADX WARN: Code duplicated, block: B:118:0x014c  */
    /* JADX WARN: Code duplicated, block: B:120:0x0151  */
    /* JADX WARN: Code duplicated, block: B:123:0x015b  */
    /* JADX WARN: Code duplicated, block: B:125:0x0160  */
    /* JADX WARN: Code duplicated, block: B:127:0x0164  */
    /* JADX WARN: Code duplicated, block: B:129:0x016c  */
    /* JADX WARN: Code duplicated, block: B:130:0x016f  */
    /* JADX WARN: Code duplicated, block: B:132:0x0174  */
    /* JADX WARN: Code duplicated, block: B:139:0x018d  */
    /* JADX WARN: Code duplicated, block: B:142:0x0196  */
    /* JADX WARN: Code duplicated, block: B:166:0x01ee A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:167:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:168:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:171:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:172:0x0203  */
    /* JADX WARN: Code duplicated, block: B:174:0x0207  */
    /* JADX WARN: Code duplicated, block: B:177:0x020d  */
    /* JADX WARN: Code duplicated, block: B:178:0x0216  */
    /* JADX WARN: Code duplicated, block: B:181:0x021b  */
    /* JADX WARN: Code duplicated, block: B:182:0x0224  */
    /* JADX WARN: Code duplicated, block: B:185:0x0229  */
    /* JADX WARN: Code duplicated, block: B:186:0x0232  */
    /* JADX WARN: Code duplicated, block: B:189:0x0237  */
    /* JADX WARN: Code duplicated, block: B:191:0x023a  */
    /* JADX WARN: Code duplicated, block: B:192:0x0240  */
    /* JADX WARN: Code duplicated, block: B:195:0x0245  */
    /* JADX WARN: Code duplicated, block: B:196:0x024e  */
    /* JADX WARN: Code duplicated, block: B:199:0x0254  */
    /* JADX WARN: Code duplicated, block: B:200:0x025d  */
    /* JADX WARN: Code duplicated, block: B:202:0x0261  */
    /* JADX WARN: Code duplicated, block: B:204:0x027e  */
    /* JADX WARN: Code duplicated, block: B:207:0x0298  */
    /* JADX WARN: Code duplicated, block: B:210:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:212:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:215:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:217:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0047  */
    /* JADX WARN: Code duplicated, block: B:38:0x0069  */
    /* JADX WARN: Code duplicated, block: B:40:0x006d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x0078  */
    /* JADX WARN: Code duplicated, block: B:46:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0084  */
    /* JADX WARN: Code duplicated, block: B:51:0x0088  */
    /* JADX WARN: Code duplicated, block: B:53:0x0090  */
    /* JADX WARN: Code duplicated, block: B:54:0x0093  */
    /* JADX WARN: Code duplicated, block: B:57:0x009a  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:70:0x00be  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:80:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:98:0x0110  */
    /* JADX INFO: renamed from: ModalWideNavigationRail-k3FuEkE, reason: not valid java name */
    public static final void m4324ModalWideNavigationRailk3FuEkE(Modifier modifier, WideNavigationRailState wideNavigationRailState, boolean z, Shape shape, Shape shape2, WideNavigationRailColors wideNavigationRailColors, bm3<? super Composer, ? super Integer, j59> bm3Var, float f, WindowInsets windowInsets, Arrangement.Vertical vertical, ModalWideNavigationRailProperties modalWideNavigationRailProperties, final bm3<? super Composer, ? super Integer, j59> bm3Var2, Composer composer, final int i, final int i2, final int i3) {
        Modifier modifier2;
        int i4;
        boolean z2;
        Shape shape3;
        Shape shape4;
        int i5;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        int i6;
        int i7;
        float f2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z3;
        final WindowInsets windowInsets2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var4;
        final Modifier modifier3;
        final float f3;
        final boolean z4;
        final Shape shape5;
        final Shape shape6;
        final WideNavigationRailState wideNavigationRailState2;
        final WideNavigationRailColors wideNavigationRailColors2;
        final Arrangement.Vertical vertical2;
        final ModalWideNavigationRailProperties modalWideNavigationRailProperties2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        WideNavigationRailState wideNavigationRailStateRememberWideNavigationRailState;
        Shape modalCollapsedShape;
        Shape modalExpandedShape;
        WideNavigationRailColors wideNavigationRailColorsColors;
        bm3<? super Composer, ? super Integer, j59> bm3Var5;
        float fM9042constructorimpl;
        WindowInsets windowInsets3;
        Arrangement.Vertical arrangement;
        ModalWideNavigationRailProperties modalExpandedProperties;
        boolean z5;
        Shape shape7;
        WideNavigationRailColors wideNavigationRailColors3;
        int i14;
        int i15;
        Composer composerStartRestartGroup = composer.startRestartGroup(-38559147);
        int i16 = i3 & 1;
        if (i16 != 0) {
            i4 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i4 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i4 = i;
        }
        if ((i & 48) == 0) {
            if ((i3 & 2) != 0) {
                i15 = 16;
            } else {
                if ((i & 64) == 0 ? composerStartRestartGroup.changed(wideNavigationRailState) : composerStartRestartGroup.changedInstance(wideNavigationRailState)) {
                    i15 = 32;
                } else {
                    i15 = 16;
                }
            }
            i4 |= i15;
        }
        int i17 = i3 & 4;
        if (i17 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                z2 = z;
                i4 |= composerStartRestartGroup.changed(z2) ? 256 : 128;
            }
            if ((i & 3072) == 0) {
                if ((i3 & 8) == 0) {
                    shape3 = shape;
                    int i18 = composerStartRestartGroup.changed(shape3) ? 2048 : 1024;
                    i4 |= i18;
                } else {
                    shape3 = shape;
                }
                i4 |= i18;
            } else {
                shape3 = shape;
            }
            if ((i & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    shape4 = shape2;
                    int i19 = composerStartRestartGroup.changed(shape4) ? 16384 : 8192;
                    i4 |= i19;
                } else {
                    shape4 = shape2;
                }
                i4 |= i19;
            } else {
                shape4 = shape2;
            }
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                if ((i3 & 32) == 0 || !composerStartRestartGroup.changed(wideNavigationRailColors)) {
                    i14 = 65536;
                } else {
                    i14 = 131072;
                }
                i4 |= i14;
            }
            i5 = i3 & 64;
            if (i5 != 0) {
                i4 |= 1572864;
                bm3Var3 = bm3Var;
            } else {
                bm3Var3 = bm3Var;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i6 = 1048576;
                    } else {
                        i6 = 524288;
                    }
                    i4 |= i6;
                }
            }
            i7 = i3 & 128;
            if (i7 != 0) {
                i4 |= 12582912;
                f2 = f;
            } else {
                f2 = f;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i4 |= i8;
                }
            }
            if ((i & 100663296) != 0) {
                i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i & 805306368) != 0) {
                i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(vertical)) ? 268435456 : 536870912;
            }
            i9 = i3 & 1024;
            if (i9 != 0) {
                i10 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changed(modalWideNavigationRailProperties)) {
                    i11 = 4;
                } else {
                    i11 = 2;
                }
                i10 = i2 | i11;
            } else {
                i10 = i2;
            }
            if ((i3 & 2048) != 0) {
                i10 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i12 = 32;
                } else {
                    i12 = 16;
                }
                i10 |= i12;
            }
            i13 = i10;
            if ((i4 & 306783379) == 306783378 || (i13 & 19) != 18) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i16 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 2) != 0) {
                        wideNavigationRailStateRememberWideNavigationRailState = WideNavigationRailStateKt.rememberWideNavigationRailState(null, composerStartRestartGroup, 0, 1);
                        i4 &= -113;
                    } else {
                        wideNavigationRailStateRememberWideNavigationRailState = wideNavigationRailState;
                    }
                    if (i17 != 0) {
                        z2 = false;
                    }
                    if ((i3 & 8) != 0) {
                        modalCollapsedShape = WideNavigationRailDefaults.INSTANCE.getModalCollapsedShape(composerStartRestartGroup, 6);
                        i4 &= -7169;
                    } else {
                        modalCollapsedShape = shape3;
                    }
                    if ((i3 & 16) != 0) {
                        modalExpandedShape = WideNavigationRailDefaults.INSTANCE.getModalExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        modalExpandedShape = shape4;
                    }
                    if ((i3 & 32) != 0) {
                        wideNavigationRailColorsColors = WideNavigationRailDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    } else {
                        wideNavigationRailColorsColors = wideNavigationRailColors;
                    }
                    bm3Var5 = i5 == 0 ? bm3Var3 : null;
                    if (i7 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 256) != 0) {
                        windowInsets3 = WideNavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        windowInsets3 = windowInsets;
                    }
                    if ((i3 & 512) != 0) {
                        arrangement = WideNavigationRailDefaults.INSTANCE.getArrangement();
                        i4 &= -1879048193;
                    } else {
                        arrangement = vertical;
                    }
                    if (i9 != 0) {
                        modalExpandedProperties = WideNavigationRailDefaults.INSTANCE.getModalExpandedProperties();
                    } else {
                        modalExpandedProperties = modalWideNavigationRailProperties;
                    }
                    z5 = z2;
                    shape7 = modalExpandedShape;
                    wideNavigationRailColors3 = wideNavigationRailColorsColors;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                    }
                    if ((i3 & 8) != 0) {
                        i4 &= -7169;
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                    }
                    if ((i3 & 32) != 0) {
                        i4 &= -458753;
                    }
                    if ((i3 & 256) != 0) {
                        i4 &= -234881025;
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                    }
                    wideNavigationRailStateRememberWideNavigationRailState = wideNavigationRailState;
                    wideNavigationRailColors3 = wideNavigationRailColors;
                    windowInsets3 = windowInsets;
                    arrangement = vertical;
                    modalExpandedProperties = modalWideNavigationRailProperties;
                    bm3Var5 = bm3Var3;
                    modifier4 = modifier2;
                    fM9042constructorimpl = f2;
                    z5 = z2;
                    modalCollapsedShape = shape3;
                    shape7 = shape4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-38559147, i4, i13, "androidx.compose.material3.ModalWideNavigationRail (WideNavigationRail.kt:477)");
                }
                ((ModalWideNavigationRailOverride) composerStartRestartGroup.consume(LocalModalWideNavigationRailOverride)).ModalWideNavigationRail(new ModalWideNavigationRailOverrideScope(modifier4, wideNavigationRailStateRememberWideNavigationRailState, z5, modalCollapsedShape, shape7, wideNavigationRailColors3, bm3Var5, fM9042constructorimpl, windowInsets3, arrangement, modalExpandedProperties, bm3Var2, null), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                wideNavigationRailState2 = wideNavigationRailStateRememberWideNavigationRailState;
                z4 = z5;
                shape5 = modalCollapsedShape;
                shape6 = shape7;
                wideNavigationRailColors2 = wideNavigationRailColors3;
                bm3Var4 = bm3Var5;
                f3 = fM9042constructorimpl;
                windowInsets2 = windowInsets3;
                vertical2 = arrangement;
                modalWideNavigationRailProperties2 = modalExpandedProperties;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                windowInsets2 = windowInsets;
                bm3Var4 = bm3Var3;
                modifier3 = modifier2;
                f3 = f2;
                z4 = z2;
                shape5 = shape3;
                shape6 = shape4;
                wideNavigationRailState2 = wideNavigationRailState;
                wideNavigationRailColors2 = wideNavigationRailColors;
                vertical2 = vertical;
                modalWideNavigationRailProperties2 = modalWideNavigationRailProperties;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yh9
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return WideNavigationRailKt.ModalWideNavigationRail_k3FuEkE$lambda$14(modifier3, wideNavigationRailState2, z4, shape5, shape6, wideNavigationRailColors2, bm3Var4, f3, windowInsets2, vertical2, modalWideNavigationRailProperties2, bm3Var2, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        z2 = z;
        if ((i & 3072) == 0) {
            if ((i3 & 8) == 0) {
                shape3 = shape;
                if (composerStartRestartGroup.changed(shape3)) {
                }
                i4 |= i18;
            } else {
                shape3 = shape;
            }
            i4 |= i18;
        } else {
            shape3 = shape;
        }
        if ((i & 24576) == 0) {
            if ((i3 & 16) == 0) {
                shape4 = shape2;
                if (composerStartRestartGroup.changed(shape4)) {
                }
                i4 |= i19;
            } else {
                shape4 = shape2;
            }
            i4 |= i19;
        } else {
            shape4 = shape2;
        }
        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
            if ((i3 & 32) == 0) {
                i14 = 65536;
            } else {
                i14 = 65536;
            }
            i4 |= i14;
        }
        i5 = i3 & 64;
        if (i5 != 0) {
            i4 |= 1572864;
            bm3Var3 = bm3Var;
        } else {
            bm3Var3 = bm3Var;
            if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                    i6 = 1048576;
                } else {
                    i6 = 524288;
                }
                i4 |= i6;
            }
        }
        i7 = i3 & 128;
        if (i7 != 0) {
            i4 |= 12582912;
            f2 = f;
        } else {
            f2 = f;
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i4 |= i8;
            }
        }
        if ((i & 100663296) != 0) {
            i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(windowInsets)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
        }
        if ((i & 805306368) != 0) {
            i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(vertical)) ? 268435456 : 536870912;
        }
        i9 = i3 & 1024;
        if (i9 != 0) {
            i10 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            if (composerStartRestartGroup.changed(modalWideNavigationRailProperties)) {
                i11 = 4;
            } else {
                i11 = 2;
            }
            i10 = i2 | i11;
        } else {
            i10 = i2;
        }
        if ((i3 & 2048) != 0) {
            i10 |= 48;
        } else if ((i2 & 48) != 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i10 |= i12;
        }
        i13 = i10;
        if ((i4 & 306783379) == 306783378) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i16 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    wideNavigationRailStateRememberWideNavigationRailState = WideNavigationRailStateKt.rememberWideNavigationRailState(null, composerStartRestartGroup, 0, 1);
                    i4 &= -113;
                } else {
                    wideNavigationRailStateRememberWideNavigationRailState = wideNavigationRailState;
                }
                if (i17 != 0) {
                    z2 = false;
                }
                if ((i3 & 8) != 0) {
                    modalCollapsedShape = WideNavigationRailDefaults.INSTANCE.getModalCollapsedShape(composerStartRestartGroup, 6);
                    i4 &= -7169;
                } else {
                    modalCollapsedShape = shape3;
                }
                if ((i3 & 16) != 0) {
                    modalExpandedShape = WideNavigationRailDefaults.INSTANCE.getModalExpandedShape(composerStartRestartGroup, 6);
                    i4 &= -57345;
                } else {
                    modalExpandedShape = shape4;
                }
                if ((i3 & 32) != 0) {
                    wideNavigationRailColorsColors = WideNavigationRailDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    i4 &= -458753;
                } else {
                    wideNavigationRailColorsColors = wideNavigationRailColors;
                }
                if (i5 == 0) {
                }
                if (i7 != 0) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                } else {
                    fM9042constructorimpl = f2;
                }
                if ((i3 & 256) != 0) {
                    windowInsets3 = WideNavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                    i4 &= -234881025;
                } else {
                    windowInsets3 = windowInsets;
                }
                if ((i3 & 512) != 0) {
                    arrangement = WideNavigationRailDefaults.INSTANCE.getArrangement();
                    i4 &= -1879048193;
                } else {
                    arrangement = vertical;
                }
                if (i9 != 0) {
                    modalExpandedProperties = WideNavigationRailDefaults.INSTANCE.getModalExpandedProperties();
                } else {
                    modalExpandedProperties = modalWideNavigationRailProperties;
                }
                z5 = z2;
                shape7 = modalExpandedShape;
                wideNavigationRailColors3 = wideNavigationRailColorsColors;
            } else {
                if (i16 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 2) != 0) {
                    wideNavigationRailStateRememberWideNavigationRailState = WideNavigationRailStateKt.rememberWideNavigationRailState(null, composerStartRestartGroup, 0, 1);
                    i4 &= -113;
                } else {
                    wideNavigationRailStateRememberWideNavigationRailState = wideNavigationRailState;
                }
                if (i17 != 0) {
                    z2 = false;
                }
                if ((i3 & 8) != 0) {
                    modalCollapsedShape = WideNavigationRailDefaults.INSTANCE.getModalCollapsedShape(composerStartRestartGroup, 6);
                    i4 &= -7169;
                } else {
                    modalCollapsedShape = shape3;
                }
                if ((i3 & 16) != 0) {
                    modalExpandedShape = WideNavigationRailDefaults.INSTANCE.getModalExpandedShape(composerStartRestartGroup, 6);
                    i4 &= -57345;
                } else {
                    modalExpandedShape = shape4;
                }
                if ((i3 & 32) != 0) {
                    wideNavigationRailColorsColors = WideNavigationRailDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    i4 &= -458753;
                } else {
                    wideNavigationRailColorsColors = wideNavigationRailColors;
                }
                if (i5 == 0) {
                }
                if (i7 != 0) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                } else {
                    fM9042constructorimpl = f2;
                }
                if ((i3 & 256) != 0) {
                    windowInsets3 = WideNavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                    i4 &= -234881025;
                } else {
                    windowInsets3 = windowInsets;
                }
                if ((i3 & 512) != 0) {
                    arrangement = WideNavigationRailDefaults.INSTANCE.getArrangement();
                    i4 &= -1879048193;
                } else {
                    arrangement = vertical;
                }
                if (i9 != 0) {
                    modalExpandedProperties = WideNavigationRailDefaults.INSTANCE.getModalExpandedProperties();
                } else {
                    modalExpandedProperties = modalWideNavigationRailProperties;
                }
                z5 = z2;
                shape7 = modalExpandedShape;
                wideNavigationRailColors3 = wideNavigationRailColorsColors;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-38559147, i4, i13, "androidx.compose.material3.ModalWideNavigationRail (WideNavigationRail.kt:477)");
            }
            ((ModalWideNavigationRailOverride) composerStartRestartGroup.consume(LocalModalWideNavigationRailOverride)).ModalWideNavigationRail(new ModalWideNavigationRailOverrideScope(modifier4, wideNavigationRailStateRememberWideNavigationRailState, z5, modalCollapsedShape, shape7, wideNavigationRailColors3, bm3Var5, fM9042constructorimpl, windowInsets3, arrangement, modalExpandedProperties, bm3Var2, null), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            wideNavigationRailState2 = wideNavigationRailStateRememberWideNavigationRailState;
            z4 = z5;
            shape5 = modalCollapsedShape;
            shape6 = shape7;
            wideNavigationRailColors2 = wideNavigationRailColors3;
            bm3Var4 = bm3Var5;
            f3 = fM9042constructorimpl;
            windowInsets2 = windowInsets3;
            vertical2 = arrangement;
            modalWideNavigationRailProperties2 = modalExpandedProperties;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            windowInsets2 = windowInsets;
            bm3Var4 = bm3Var3;
            modifier3 = modifier2;
            f3 = f2;
            z4 = z2;
            shape5 = shape3;
            shape6 = shape4;
            wideNavigationRailState2 = wideNavigationRailState;
            wideNavigationRailColors2 = wideNavigationRailColors;
            vertical2 = vertical;
            modalWideNavigationRailProperties2 = modalWideNavigationRailProperties;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yh9
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return WideNavigationRailKt.ModalWideNavigationRail_k3FuEkE$lambda$14(modifier3, wideNavigationRailState2, z4, shape5, shape6, wideNavigationRailColors2, bm3Var4, f3, windowInsets2, vertical2, modalWideNavigationRailProperties2, bm3Var2, i, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ModalWideNavigationRailContent-pU6N4AM, reason: not valid java name */
    public static final void m4325ModalWideNavigationRailContentpU6N4AM(final boolean z, final boolean z2, final Animatable<Float, AnimationVector1D> animatable, final RailPredictiveBackState railPredictiveBackState, final bm3<? super Float, ? super e02<? super j59>, ? extends Object> bm3Var, final Modifier modifier, final ModalWideNavigationRailState modalWideNavigationRailState, final WideNavigationRailColors wideNavigationRailColors, final Shape shape, final float f, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final WindowInsets windowInsets, final boolean z3, final Arrangement.Vertical vertical, final bm3<? super Composer, ? super Integer, j59> bm3Var3, Composer composer, final int i, final int i2) {
        int i3;
        WideNavigationRailColors wideNavigationRailColors2;
        int i4;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1593438005);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(z2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= (i & 512) == 0 ? composerStartRestartGroup.changed(animatable) : composerStartRestartGroup.changedInstance(animatable) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changed(railPredictiveBackState) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= composerStartRestartGroup.changed(modifier) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(modalWideNavigationRailState) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            wideNavigationRailColors2 = wideNavigationRailColors;
            i3 |= composerStartRestartGroup.changed(wideNavigationRailColors2) ? 8388608 : 4194304;
        } else {
            wideNavigationRailColors2 = wideNavigationRailColors;
        }
        if ((i & 100663296) == 0) {
            i3 |= composerStartRestartGroup.changed(shape) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((i & 805306368) == 0) {
            i3 |= composerStartRestartGroup.changed(f) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (composerStartRestartGroup.changedInstance(bm3Var2) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= composerStartRestartGroup.changed(windowInsets) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= composerStartRestartGroup.changed(z3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= composerStartRestartGroup.changed(vertical) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 16384 : 8192;
        }
        int i5 = i4;
        if (composerStartRestartGroup.shouldExecute(((i3 & 306783379) == 306783378 && (i5 & 9363) == 9362) ? false : true, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1593438005, i3, i5, "androidx.compose.material3.ModalWideNavigationRailContent (WideNavigationRail.kt:988)");
            }
            final boolean z4 = composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection()) == LayoutDirection.Rtl;
            Strings.Companion companion = Strings.Companion;
            String strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_wide_navigation_rail_pane_title), composerStartRestartGroup, 0);
            long jM4318getModalContainerColor0d7_KjU = wideNavigationRailColors2.m4318getModalContainerColor0d7_KjU();
            long jM4319getModalContentColor0d7_KjU = wideNavigationRailColors2.m4319getModalContentColor0d7_KjU();
            Modifier modifierFillMaxHeight$default = SizeKt.fillMaxHeight$default(SizeKt.m2106widthInVpY3zN4$default(modifier, 0.0f, f, 1, null), 0.0f, 1, null);
            boolean zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new un(strM4461getString2EP1pXo, 4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifierFillMaxHeight$default, false, (nl3) objRememberedValue, 1, null);
            boolean zChangedInstance = ((i3 & 896) == 256 || ((i3 & 512) != 0 && composerStartRestartGroup.changedInstance(animatable))) | composerStartRestartGroup.changedInstance(modalWideNavigationRailState) | ((i3 & 7168) == 2048) | composerStartRestartGroup.changed(z4);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new nl3() { // from class: bi9
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return WideNavigationRailKt.ModalWideNavigationRailContent_pU6N4AM$lambda$20$lambda$19(animatable, modalWideNavigationRailState, railPredictiveBackState, z4, (GraphicsLayerScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            Modifier modifierGraphicsLayer = GraphicsLayerModifierKt.graphicsLayer(modifierSemantics$default, (nl3) objRememberedValue2);
            AnchoredDraggableState<WideNavigationRailValue> anchoredDraggableState$material3 = modalWideNavigationRailState.getAnchoredDraggableState$material3();
            Orientation orientation = Orientation.Horizontal;
            boolean zChanged2 = ((i3 & 112) == 32) | composerStartRestartGroup.changed(z4) | composerStartRestartGroup.changedInstance(modalWideNavigationRailState);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                objRememberedValue3 = new bm3() { // from class: th9
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        return WideNavigationRailKt.ModalWideNavigationRailContent_pU6N4AM$lambda$23$lambda$22(z2, z4, modalWideNavigationRailState, (IntSize) obj, (Constraints) obj2);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            Modifier modifierDraggableAnchors = AnchoredDraggableKt.draggableAnchors(modifierGraphicsLayer, anchoredDraggableState$material3, orientation, (bm3) objRememberedValue3);
            DraggableState draggableState$material3 = modalWideNavigationRailState.getAnchoredDraggableState$material3().getDraggableState$material3();
            boolean zIsAnimationRunning = modalWideNavigationRailState.getAnchoredDraggableState$material3().isAnimationRunning();
            boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(bm3Var);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance2 || objRememberedValue4 == Composer.Companion.getEmpty()) {
                objRememberedValue4 = new WideNavigationRailKt$ModalWideNavigationRailContent$4$1(bm3Var, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            composer2 = composerStartRestartGroup;
            SurfaceKt.m3942SurfaceT9BRK9s(DraggableKt.draggable$default(modifierDraggableAnchors, draggableState$material3, orientation, z3, null, zIsAnimationRunning, null, (dm3) objRememberedValue4, false, 168, null), shape, jM4318getModalContainerColor0d7_KjU, jM4319getModalContentColor0d7_KjU, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1043835354, true, new WideNavigationRailKt$ModalWideNavigationRailContent$5(animatable, railPredictiveBackState, z4, z, wideNavigationRailColors2, shape, bm3Var2, windowInsets, vertical, bm3Var3), composer2, 54), composer2, ((i3 >> 21) & 112) | 12582912, 112);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: uh9
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return WideNavigationRailKt.ModalWideNavigationRailContent_pU6N4AM$lambda$25(z, z2, animatable, railPredictiveBackState, bm3Var, modifier, modalWideNavigationRailState, wideNavigationRailColors, shape, f, bm3Var2, windowInsets, z3, vertical, bm3Var3, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRailContent_pU6N4AM$lambda$18$lambda$17(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setPaneTitle(semanticsPropertyReceiver, str);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRailContent_pU6N4AM$lambda$20$lambda$19(Animatable animatable, ModalWideNavigationRailState modalWideNavigationRailState, RailPredictiveBackState railPredictiveBackState, boolean z, GraphicsLayerScope graphicsLayerScope) {
        float fFloatValue = ((Number) animatable.getValue()).floatValue();
        if (fFloatValue <= 0.0f) {
            return j59.a;
        }
        float currentOffset = modalWideNavigationRailState.getCurrentOffset();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (graphicsLayerScope.mo6426getSizeNHjbRc() >> 32));
        if (!Float.isNaN(currentOffset) && !Float.isNaN(fIntBitsToFloat) && fIntBitsToFloat != 0.0f) {
            graphicsLayerScope.setScaleX(calculatePredictiveBackScaleX(graphicsLayerScope, fFloatValue, railPredictiveBackState.getSwipeEdgeMatchesRail()));
            graphicsLayerScope.setScaleY(calculatePredictiveBackScaleY(graphicsLayerScope, fFloatValue));
            graphicsLayerScope.mo6433setTransformOrigin__ExYCQ(TransformOriginKt.TransformOrigin(z ? 1.0f : 0.0f, 0.5f));
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b36 ModalWideNavigationRailContent_pU6N4AM$lambda$23$lambda$22(boolean z, boolean z2, ModalWideNavigationRailState modalWideNavigationRailState, IntSize intSize, Constraints constraints) {
        final float fM9217unboximpl = (int) (intSize.m9217unboximpl() >> 32);
        if (!z) {
            fM9217unboximpl = 0.0f;
        } else if (!z2) {
            fM9217unboximpl = -fM9217unboximpl;
        }
        return new b36(AnchoredDraggableKt.DraggableAnchors(new nl3() { // from class: xh9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WideNavigationRailKt.ModalWideNavigationRailContent_pU6N4AM$lambda$23$lambda$22$lambda$21(fM9217unboximpl, 0.0f, (DraggableAnchorsConfig) obj);
            }
        }), modalWideNavigationRailState.getTargetValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRailContent_pU6N4AM$lambda$23$lambda$22$lambda$21(float f, float f2, DraggableAnchorsConfig draggableAnchorsConfig) {
        draggableAnchorsConfig.at(WideNavigationRailValue.Collapsed, f);
        draggableAnchorsConfig.at(WideNavigationRailValue.Expanded, f2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRailContent_pU6N4AM$lambda$25(boolean z, boolean z2, Animatable animatable, RailPredictiveBackState railPredictiveBackState, bm3 bm3Var, Modifier modifier, ModalWideNavigationRailState modalWideNavigationRailState, WideNavigationRailColors wideNavigationRailColors, Shape shape, float f, bm3 bm3Var2, WindowInsets windowInsets, boolean z3, Arrangement.Vertical vertical, bm3 bm3Var3, int i, int i2, Composer composer, int i3) {
        m4325ModalWideNavigationRailContentpU6N4AM(z, z2, animatable, railPredictiveBackState, bm3Var, modifier, modalWideNavigationRailState, wideNavigationRailColors, shape, f, bm3Var2, windowInsets, z3, vertical, bm3Var3, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRail_k3FuEkE$lambda$14(Modifier modifier, WideNavigationRailState wideNavigationRailState, boolean z, Shape shape, Shape shape2, WideNavigationRailColors wideNavigationRailColors, bm3 bm3Var, float f, WindowInsets windowInsets, Arrangement.Vertical vertical, ModalWideNavigationRailProperties modalWideNavigationRailProperties, bm3 bm3Var2, int i, int i2, int i3, Composer composer, int i4) {
        m4324ModalWideNavigationRailk3FuEkE(modifier, wideNavigationRailState, z, shape, shape2, wideNavigationRailColors, bm3Var, f, windowInsets, vertical, modalWideNavigationRailProperties, bm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Scrim-3J-VO9M, reason: not valid java name */
    public static final void m4326Scrim3JVO9M(final long j, final nl3<? super e02<? super j59>, ? extends Object> nl3Var, final boolean z, Composer composer, final int i) {
        int i2;
        Modifier.Companion companion;
        Modifier modifierSemantics;
        Composer composerStartRestartGroup = composer.startRestartGroup(144695261);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(nl3Var) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(144695261, i2, -1, "androidx.compose.material3.Scrim (WideNavigationRail.kt:1102)");
            }
            if (j != 16) {
                composerStartRestartGroup.startReplaceGroup(-1530482291);
                int i3 = i2;
                int i4 = 1;
                final State<Float> stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(z ? 1.0f : 0.0f, MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                Composer.Companion companion2 = Composer.Companion;
                if (objRememberedValue == companion2.getEmpty()) {
                    objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                MutableState mutableState = (MutableState) objRememberedValue;
                Strings.Companion companion3 = Strings.Companion;
                Object objM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_wide_navigation_rail_close_rail), composerStartRestartGroup, 0);
                if (z) {
                    composerStartRestartGroup.startReplaceGroup(-1530047423);
                    companion = Modifier.Companion;
                    Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion2.getEmpty()) {
                        objRememberedValue2 = new WideNavigationRailKt$Scrim$dismissModalRail$1$1(mutableState);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierPointerInput = SuspendingPointerInputFilterKt.pointerInput(companion, nl3Var, (PointerInputEventHandler) objRememberedValue2);
                    boolean zChanged = composerStartRestartGroup.changed(objM4461getString2EP1pXo);
                    Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged || objRememberedValue3 == companion2.getEmpty()) {
                        objRememberedValue3 = new ia2(i4, objM4461getString2EP1pXo, mutableState);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    modifierSemantics = SemanticsModifierKt.semantics(modifierPointerInput, true, (nl3) objRememberedValue3);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1529667363);
                    composerStartRestartGroup.endReplaceGroup();
                    companion = Modifier.Companion;
                    modifierSemantics = companion;
                }
                Modifier modifierThen = SizeKt.fillMaxSize$default(companion, 0.0f, 1, null).then(modifierSemantics);
                if ((i3 & 14) != 4) {
                    i4 = 0;
                }
                int i5 = i4 | (composerStartRestartGroup.changed(stateAnimateFloatAsState) ? 1 : 0);
                Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (i5 != 0 || objRememberedValue4 == companion2.getEmpty()) {
                    objRememberedValue4 = new nl3() { // from class: vh9
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return WideNavigationRailKt.Scrim_3J_VO9M$lambda$35$lambda$34(j, stateAnimateFloatAsState, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                CanvasKt.Canvas(modifierThen, (nl3) objRememberedValue4, composerStartRestartGroup, 0);
                Boolean boolValueOf = Boolean.valueOf(Scrim_3J_VO9M$lambda$28(mutableState));
                boolean zChangedInstance = composerStartRestartGroup.changedInstance(nl3Var);
                Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue5 == companion2.getEmpty()) {
                    objRememberedValue5 = new WideNavigationRailKt$Scrim$2$1(nl3Var, mutableState, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                EffectsKt.LaunchedEffect(boolValueOf, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue5, composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1529413659);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wh9
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return WideNavigationRailKt.Scrim_3J_VO9M$lambda$37(j, nl3Var, z, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    private static final float Scrim_3J_VO9M$lambda$26(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean Scrim_3J_VO9M$lambda$28(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Scrim_3J_VO9M$lambda$29(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Scrim_3J_VO9M$lambda$33$lambda$32(String str, MutableState mutableState, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
        SemanticsPropertiesKt.onClick$default(semanticsPropertyReceiver, null, new gf(mutableState, 4), 1, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean Scrim_3J_VO9M$lambda$33$lambda$32$lambda$31(MutableState mutableState) {
        Scrim_3J_VO9M$lambda$29(mutableState, true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Scrim_3J_VO9M$lambda$35$lambda$34(long j, State state, DrawScope drawScope) {
        DrawScope.m6800drawRectnJ9OG0$default(drawScope, j, 0L, 0L, kx6.d(Scrim_3J_VO9M$lambda$26(state), 0.0f, 1.0f), null, null, 0, 118, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Scrim_3J_VO9M$lambda$37(long j, nl3 nl3Var, boolean z, int i, Composer composer, int i2) {
        m4326Scrim3JVO9M(j, nl3Var, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0147 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x0149  */
    /* JADX WARN: Code duplicated, block: B:121:0x014c  */
    /* JADX WARN: Code duplicated, block: B:124:0x0152  */
    /* JADX WARN: Code duplicated, block: B:125:0x015a  */
    /* JADX WARN: Code duplicated, block: B:128:0x0161  */
    /* JADX WARN: Code duplicated, block: B:131:0x016e  */
    /* JADX WARN: Code duplicated, block: B:133:0x0179  */
    /* JADX WARN: Code duplicated, block: B:136:0x017e  */
    /* JADX WARN: Code duplicated, block: B:139:0x018c  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:143:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:146:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:148:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:151:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:153:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0047  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:65:0x00af  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:88:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:89:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:94:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:97:0x0104  */
    /* JADX WARN: Code duplicated, block: B:99:0x0111  */
    public static final void WideNavigationRail(Modifier modifier, WideNavigationRailState wideNavigationRailState, Shape shape, WideNavigationRailColors wideNavigationRailColors, bm3<? super Composer, ? super Integer, j59> bm3Var, WindowInsets windowInsets, Arrangement.Vertical vertical, final bm3<? super Composer, ? super Integer, j59> bm3Var2, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        Shape shape2;
        WideNavigationRailColors wideNavigationRailColorsColors;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        WindowInsets windowInsets2;
        Arrangement.Vertical vertical2;
        bm3<? super Composer, ? super Integer, j59> bm3Var4;
        int i4;
        boolean z;
        final Modifier modifier3;
        final Shape shape3;
        final WideNavigationRailColors wideNavigationRailColors2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var5;
        final WindowInsets windowInsets3;
        final Arrangement.Vertical vertical3;
        final WideNavigationRailState wideNavigationRailState2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        WideNavigationRailState wideNavigationRailStateRememberWideNavigationRailState;
        WideNavigationRailState wideNavigationRailState3;
        Arrangement.Vertical arrangement;
        Shape shape4;
        WideNavigationRailColors wideNavigationRailColors3;
        bm3<? super Composer, ? super Integer, j59> bm3Var6;
        WindowInsets windowInsets4;
        int i5;
        Composer composerStartRestartGroup = composer.startRestartGroup(164193188);
        int i6 = i2 & 1;
        if (i6 != 0) {
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
            if ((i2 & 2) != 0) {
                i5 = 16;
            } else {
                if ((i & 64) == 0 ? composerStartRestartGroup.changed(wideNavigationRailState) : composerStartRestartGroup.changedInstance(wideNavigationRailState)) {
                    i5 = 32;
                } else {
                    i5 = 16;
                }
            }
            i3 |= i5;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                shape2 = shape;
                int i7 = composerStartRestartGroup.changed(shape2) ? 256 : 128;
                i3 |= i7;
            } else {
                shape2 = shape;
            }
            i3 |= i7;
        } else {
            shape2 = shape;
        }
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                wideNavigationRailColorsColors = wideNavigationRailColors;
                int i8 = composerStartRestartGroup.changed(wideNavigationRailColorsColors) ? 2048 : 1024;
                i3 |= i8;
            } else {
                wideNavigationRailColorsColors = wideNavigationRailColors;
            }
            i3 |= i8;
        } else {
            wideNavigationRailColorsColors = wideNavigationRailColors;
        }
        int i9 = i2 & 16;
        if (i9 == 0) {
            if ((i & 24576) == 0) {
                bm3Var3 = bm3Var;
                i3 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 16384 : 8192;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    windowInsets2 = windowInsets;
                    int i10 = composerStartRestartGroup.changed(windowInsets2) ? 131072 : 65536;
                    i3 |= i10;
                } else {
                    windowInsets2 = windowInsets;
                }
                i3 |= i10;
            } else {
                windowInsets2 = windowInsets;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    vertical2 = vertical;
                    int i11 = composerStartRestartGroup.changed(vertical2) ? 1048576 : 524288;
                    i3 |= i11;
                } else {
                    vertical2 = vertical;
                }
                i3 |= i11;
            } else {
                vertical2 = vertical;
            }
            if ((i2 & 128) != 0) {
                if ((i & 12582912) == 0) {
                    bm3Var4 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i4 = 8388608;
                    } else {
                        i4 = 4194304;
                    }
                    i3 |= i4;
                }
                if ((4793491 & i3) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i6 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i2 & 2) != 0) {
                            wideNavigationRailStateRememberWideNavigationRailState = WideNavigationRailStateKt.rememberWideNavigationRailState(null, composerStartRestartGroup, 0, 1);
                            i3 &= -113;
                        } else {
                            wideNavigationRailStateRememberWideNavigationRailState = wideNavigationRailState;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            shape2 = WideNavigationRailDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        }
                        if ((i2 & 8) != 0) {
                            i3 &= -7169;
                            wideNavigationRailColorsColors = WideNavigationRailDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i9 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 32) != 0) {
                            windowInsets2 = WideNavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                            i3 &= -458753;
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                            arrangement = WideNavigationRailDefaults.INSTANCE.getArrangement();
                            shape4 = shape2;
                            wideNavigationRailColors3 = wideNavigationRailColorsColors;
                            bm3Var6 = bm3Var3;
                            windowInsets4 = windowInsets2;
                        } else {
                            wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(164193188, i3, -1, "androidx.compose.material3.WideNavigationRail (WideNavigationRail.kt:169)");
                        }
                        Modifier modifier5 = modifier4;
                        ((WideNavigationRailOverride) composerStartRestartGroup.consume(LocalWideNavigationRailOverride)).WideNavigationRail(new WideNavigationRailOverrideScope(modifier5, wideNavigationRailState3, shape4, wideNavigationRailColors3, bm3Var6, windowInsets4, arrangement, bm3Var4), composerStartRestartGroup, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier5;
                        wideNavigationRailState2 = wideNavigationRailState3;
                        shape3 = shape4;
                        wideNavigationRailColors2 = wideNavigationRailColors3;
                        bm3Var5 = bm3Var6;
                        windowInsets3 = windowInsets4;
                        vertical3 = arrangement;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 2) != 0) {
                            i3 &= -113;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                        }
                        if ((i2 & 8) != 0) {
                            i3 &= -7169;
                        }
                        if ((i2 & 32) != 0) {
                            i3 &= -458753;
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                        }
                        wideNavigationRailState3 = wideNavigationRailState;
                        modifier4 = modifier2;
                    }
                    shape4 = shape2;
                    wideNavigationRailColors3 = wideNavigationRailColorsColors;
                    bm3Var6 = bm3Var3;
                    windowInsets4 = windowInsets2;
                    arrangement = vertical2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(164193188, i3, -1, "androidx.compose.material3.WideNavigationRail (WideNavigationRail.kt:169)");
                    }
                    Modifier modifier6 = modifier4;
                    ((WideNavigationRailOverride) composerStartRestartGroup.consume(LocalWideNavigationRailOverride)).WideNavigationRail(new WideNavigationRailOverrideScope(modifier6, wideNavigationRailState3, shape4, wideNavigationRailColors3, bm3Var6, windowInsets4, arrangement, bm3Var4), composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier6;
                    wideNavigationRailState2 = wideNavigationRailState3;
                    shape3 = shape4;
                    wideNavigationRailColors2 = wideNavigationRailColors3;
                    bm3Var5 = bm3Var6;
                    windowInsets3 = windowInsets4;
                    vertical3 = arrangement;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    shape3 = shape2;
                    wideNavigationRailColors2 = wideNavigationRailColorsColors;
                    bm3Var5 = bm3Var3;
                    windowInsets3 = windowInsets2;
                    vertical3 = vertical2;
                    wideNavigationRailState2 = wideNavigationRailState;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ai9
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return WideNavigationRailKt.WideNavigationRail$lambda$1(modifier3, wideNavigationRailState2, shape3, wideNavigationRailColors2, bm3Var5, windowInsets3, vertical3, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            bm3Var4 = bm3Var2;
            if ((4793491 & i3) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i6 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 2) != 0) {
                        wideNavigationRailStateRememberWideNavigationRailState = WideNavigationRailStateKt.rememberWideNavigationRailState(null, composerStartRestartGroup, 0, 1);
                        i3 &= -113;
                    } else {
                        wideNavigationRailStateRememberWideNavigationRailState = wideNavigationRailState;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        shape2 = WideNavigationRailDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                        wideNavigationRailColorsColors = WideNavigationRailDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i9 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 32) != 0) {
                        windowInsets2 = WideNavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        i3 &= -458753;
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                        arrangement = WideNavigationRailDefaults.INSTANCE.getArrangement();
                        shape4 = shape2;
                        wideNavigationRailColors3 = wideNavigationRailColorsColors;
                        bm3Var6 = bm3Var3;
                        windowInsets4 = windowInsets2;
                    } else {
                        wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                        shape4 = shape2;
                        wideNavigationRailColors3 = wideNavigationRailColorsColors;
                        bm3Var6 = bm3Var3;
                        windowInsets4 = windowInsets2;
                        arrangement = vertical2;
                    }
                } else {
                    if (i6 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 2) != 0) {
                        wideNavigationRailStateRememberWideNavigationRailState = WideNavigationRailStateKt.rememberWideNavigationRailState(null, composerStartRestartGroup, 0, 1);
                        i3 &= -113;
                    } else {
                        wideNavigationRailStateRememberWideNavigationRailState = wideNavigationRailState;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        shape2 = WideNavigationRailDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                        wideNavigationRailColorsColors = WideNavigationRailDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i9 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 32) != 0) {
                        windowInsets2 = WideNavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        i3 &= -458753;
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                        arrangement = WideNavigationRailDefaults.INSTANCE.getArrangement();
                        shape4 = shape2;
                        wideNavigationRailColors3 = wideNavigationRailColorsColors;
                        bm3Var6 = bm3Var3;
                        windowInsets4 = windowInsets2;
                    } else {
                        wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                        shape4 = shape2;
                        wideNavigationRailColors3 = wideNavigationRailColorsColors;
                        bm3Var6 = bm3Var3;
                        windowInsets4 = windowInsets2;
                        arrangement = vertical2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(164193188, i3, -1, "androidx.compose.material3.WideNavigationRail (WideNavigationRail.kt:169)");
                }
                Modifier modifier7 = modifier4;
                ((WideNavigationRailOverride) composerStartRestartGroup.consume(LocalWideNavigationRailOverride)).WideNavigationRail(new WideNavigationRailOverrideScope(modifier7, wideNavigationRailState3, shape4, wideNavigationRailColors3, bm3Var6, windowInsets4, arrangement, bm3Var4), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier7;
                wideNavigationRailState2 = wideNavigationRailState3;
                shape3 = shape4;
                wideNavigationRailColors2 = wideNavigationRailColors3;
                bm3Var5 = bm3Var6;
                windowInsets3 = windowInsets4;
                vertical3 = arrangement;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                shape3 = shape2;
                wideNavigationRailColors2 = wideNavigationRailColorsColors;
                bm3Var5 = bm3Var3;
                windowInsets3 = windowInsets2;
                vertical3 = vertical2;
                wideNavigationRailState2 = wideNavigationRailState;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ai9
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return WideNavigationRailKt.WideNavigationRail$lambda$1(modifier3, wideNavigationRailState2, shape3, wideNavigationRailColors2, bm3Var5, windowInsets3, vertical3, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        bm3Var3 = bm3Var;
        if ((196608 & i) == 0) {
            if ((i2 & 32) == 0) {
                windowInsets2 = windowInsets;
                if (composerStartRestartGroup.changed(windowInsets2)) {
                }
                i3 |= i10;
            } else {
                windowInsets2 = windowInsets;
            }
            i3 |= i10;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                vertical2 = vertical;
                if (composerStartRestartGroup.changed(vertical2)) {
                }
                i3 |= i11;
            } else {
                vertical2 = vertical;
            }
            i3 |= i11;
        } else {
            vertical2 = vertical;
        }
        if ((i2 & 128) != 0) {
            if ((i & 12582912) == 0) {
                bm3Var4 = bm3Var2;
                if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                    i4 = 8388608;
                } else {
                    i4 = 4194304;
                }
                i3 |= i4;
            }
            if ((4793491 & i3) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i6 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 2) != 0) {
                        wideNavigationRailStateRememberWideNavigationRailState = WideNavigationRailStateKt.rememberWideNavigationRailState(null, composerStartRestartGroup, 0, 1);
                        i3 &= -113;
                    } else {
                        wideNavigationRailStateRememberWideNavigationRailState = wideNavigationRailState;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        shape2 = WideNavigationRailDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                        wideNavigationRailColorsColors = WideNavigationRailDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i9 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 32) != 0) {
                        windowInsets2 = WideNavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        i3 &= -458753;
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                        arrangement = WideNavigationRailDefaults.INSTANCE.getArrangement();
                        shape4 = shape2;
                        wideNavigationRailColors3 = wideNavigationRailColorsColors;
                        bm3Var6 = bm3Var3;
                        windowInsets4 = windowInsets2;
                    } else {
                        wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                        shape4 = shape2;
                        wideNavigationRailColors3 = wideNavigationRailColorsColors;
                        bm3Var6 = bm3Var3;
                        windowInsets4 = windowInsets2;
                        arrangement = vertical2;
                    }
                } else {
                    if (i6 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 2) != 0) {
                        wideNavigationRailStateRememberWideNavigationRailState = WideNavigationRailStateKt.rememberWideNavigationRailState(null, composerStartRestartGroup, 0, 1);
                        i3 &= -113;
                    } else {
                        wideNavigationRailStateRememberWideNavigationRailState = wideNavigationRailState;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        shape2 = WideNavigationRailDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                        wideNavigationRailColorsColors = WideNavigationRailDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i9 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 32) != 0) {
                        windowInsets2 = WideNavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                        i3 &= -458753;
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                        arrangement = WideNavigationRailDefaults.INSTANCE.getArrangement();
                        shape4 = shape2;
                        wideNavigationRailColors3 = wideNavigationRailColorsColors;
                        bm3Var6 = bm3Var3;
                        windowInsets4 = windowInsets2;
                    } else {
                        wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                        shape4 = shape2;
                        wideNavigationRailColors3 = wideNavigationRailColorsColors;
                        bm3Var6 = bm3Var3;
                        windowInsets4 = windowInsets2;
                        arrangement = vertical2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(164193188, i3, -1, "androidx.compose.material3.WideNavigationRail (WideNavigationRail.kt:169)");
                }
                Modifier modifier8 = modifier4;
                ((WideNavigationRailOverride) composerStartRestartGroup.consume(LocalWideNavigationRailOverride)).WideNavigationRail(new WideNavigationRailOverrideScope(modifier8, wideNavigationRailState3, shape4, wideNavigationRailColors3, bm3Var6, windowInsets4, arrangement, bm3Var4), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier8;
                wideNavigationRailState2 = wideNavigationRailState3;
                shape3 = shape4;
                wideNavigationRailColors2 = wideNavigationRailColors3;
                bm3Var5 = bm3Var6;
                windowInsets3 = windowInsets4;
                vertical3 = arrangement;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                shape3 = shape2;
                wideNavigationRailColors2 = wideNavigationRailColorsColors;
                bm3Var5 = bm3Var3;
                windowInsets3 = windowInsets2;
                vertical3 = vertical2;
                wideNavigationRailState2 = wideNavigationRailState;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ai9
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return WideNavigationRailKt.WideNavigationRail$lambda$1(modifier3, wideNavigationRailState2, shape3, wideNavigationRailColors2, bm3Var5, windowInsets3, vertical3, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 12582912;
        bm3Var4 = bm3Var2;
        if ((4793491 & i3) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i6 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 2) != 0) {
                    wideNavigationRailStateRememberWideNavigationRailState = WideNavigationRailStateKt.rememberWideNavigationRailState(null, composerStartRestartGroup, 0, 1);
                    i3 &= -113;
                } else {
                    wideNavigationRailStateRememberWideNavigationRailState = wideNavigationRailState;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    shape2 = WideNavigationRailDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                }
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                    wideNavigationRailColorsColors = WideNavigationRailDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                if (i9 != 0) {
                    bm3Var3 = null;
                }
                if ((i2 & 32) != 0) {
                    windowInsets2 = WideNavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                    i3 &= -458753;
                }
                if ((i2 & 64) != 0) {
                    i3 &= -3670017;
                    wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                    arrangement = WideNavigationRailDefaults.INSTANCE.getArrangement();
                    shape4 = shape2;
                    wideNavigationRailColors3 = wideNavigationRailColorsColors;
                    bm3Var6 = bm3Var3;
                    windowInsets4 = windowInsets2;
                } else {
                    wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                    shape4 = shape2;
                    wideNavigationRailColors3 = wideNavigationRailColorsColors;
                    bm3Var6 = bm3Var3;
                    windowInsets4 = windowInsets2;
                    arrangement = vertical2;
                }
            } else {
                if (i6 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 2) != 0) {
                    wideNavigationRailStateRememberWideNavigationRailState = WideNavigationRailStateKt.rememberWideNavigationRailState(null, composerStartRestartGroup, 0, 1);
                    i3 &= -113;
                } else {
                    wideNavigationRailStateRememberWideNavigationRailState = wideNavigationRailState;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    shape2 = WideNavigationRailDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                }
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                    wideNavigationRailColorsColors = WideNavigationRailDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                if (i9 != 0) {
                    bm3Var3 = null;
                }
                if ((i2 & 32) != 0) {
                    windowInsets2 = WideNavigationRailDefaults.INSTANCE.getWindowInsets(composerStartRestartGroup, 6);
                    i3 &= -458753;
                }
                if ((i2 & 64) != 0) {
                    i3 &= -3670017;
                    wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                    arrangement = WideNavigationRailDefaults.INSTANCE.getArrangement();
                    shape4 = shape2;
                    wideNavigationRailColors3 = wideNavigationRailColorsColors;
                    bm3Var6 = bm3Var3;
                    windowInsets4 = windowInsets2;
                } else {
                    wideNavigationRailState3 = wideNavigationRailStateRememberWideNavigationRailState;
                    shape4 = shape2;
                    wideNavigationRailColors3 = wideNavigationRailColorsColors;
                    bm3Var6 = bm3Var3;
                    windowInsets4 = windowInsets2;
                    arrangement = vertical2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(164193188, i3, -1, "androidx.compose.material3.WideNavigationRail (WideNavigationRail.kt:169)");
            }
            Modifier modifier9 = modifier4;
            ((WideNavigationRailOverride) composerStartRestartGroup.consume(LocalWideNavigationRailOverride)).WideNavigationRail(new WideNavigationRailOverrideScope(modifier9, wideNavigationRailState3, shape4, wideNavigationRailColors3, bm3Var6, windowInsets4, arrangement, bm3Var4), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier9;
            wideNavigationRailState2 = wideNavigationRailState3;
            shape3 = shape4;
            wideNavigationRailColors2 = wideNavigationRailColors3;
            bm3Var5 = bm3Var6;
            windowInsets3 = windowInsets4;
            vertical3 = arrangement;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            shape3 = shape2;
            wideNavigationRailColors2 = wideNavigationRailColorsColors;
            bm3Var5 = bm3Var3;
            windowInsets3 = windowInsets2;
            vertical3 = vertical2;
            wideNavigationRailState2 = wideNavigationRailState;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ai9
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return WideNavigationRailKt.WideNavigationRail$lambda$1(modifier3, wideNavigationRailState2, shape3, wideNavigationRailColors2, bm3Var5, windowInsets3, vertical3, bm3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 WideNavigationRail$lambda$1(Modifier modifier, WideNavigationRailState wideNavigationRailState, Shape shape, WideNavigationRailColors wideNavigationRailColors, bm3 bm3Var, WindowInsets windowInsets, Arrangement.Vertical vertical, bm3 bm3Var2, int i, int i2, Composer composer, int i3) {
        WideNavigationRail(modifier, wideNavigationRailState, shape, wideNavigationRailColors, bm3Var, windowInsets, vertical, bm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0107  */
    /* JADX WARN: Code duplicated, block: B:103:0x010e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0112  */
    /* JADX WARN: Code duplicated, block: B:107:0x011c  */
    /* JADX WARN: Code duplicated, block: B:108:0x011f  */
    /* JADX WARN: Code duplicated, block: B:112:0x0131  */
    /* JADX WARN: Code duplicated, block: B:113:0x0134  */
    /* JADX WARN: Code duplicated, block: B:116:0x013d  */
    /* JADX WARN: Code duplicated, block: B:118:0x014b  */
    /* JADX WARN: Code duplicated, block: B:128:0x0164 A[PHI: r0 r7 r9 r10 r15
      0x0164: PHI (r0v21 int) = (r0v11 int), (r0v25 int), (r0v26 int) binds: [B:142:0x0196, B:126:0x0160, B:127:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r7v30 androidx.compose.ui.Modifier) = (r7v6 androidx.compose.ui.Modifier), (r7v3 androidx.compose.ui.Modifier), (r7v3 androidx.compose.ui.Modifier) binds: [B:142:0x0196, B:126:0x0160, B:127:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r9v16 boolean) = (r9v6 boolean), (r9v3 boolean), (r9v3 boolean) binds: [B:142:0x0196, B:126:0x0160, B:127:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r10v14 int) = (r10v10 int), (r10v7 int), (r10v7 int) binds: [B:142:0x0196, B:126:0x0160, B:127:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r15v8 androidx.compose.material3.NavigationItemColors) = 
      (r15v4 androidx.compose.material3.NavigationItemColors)
      (r15v3 androidx.compose.material3.NavigationItemColors)
      (r15v3 androidx.compose.material3.NavigationItemColors)
     binds: [B:142:0x0196, B:126:0x0160, B:127:0x0162] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:130:0x016f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:131:0x0171  */
    /* JADX WARN: Code duplicated, block: B:133:0x0176  */
    /* JADX WARN: Code duplicated, block: B:136:0x017c  */
    /* JADX WARN: Code duplicated, block: B:137:0x0186  */
    /* JADX WARN: Code duplicated, block: B:140:0x018c  */
    /* JADX WARN: Code duplicated, block: B:143:0x0198  */
    /* JADX WARN: Code duplicated, block: B:146:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:148:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:150:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:152:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:155:0x024c  */
    /* JADX WARN: Code duplicated, block: B:157:0x0259  */
    /* JADX WARN: Code duplicated, block: B:160:0x026a  */
    /* JADX WARN: Code duplicated, block: B:162:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0064  */
    /* JADX WARN: Code duplicated, block: B:38:0x0069  */
    /* JADX WARN: Code duplicated, block: B:40:0x006d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x0078  */
    /* JADX WARN: Code duplicated, block: B:47:0x007f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x0086  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:53:0x008f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0098  */
    /* JADX WARN: Code duplicated, block: B:59:0x009c  */
    /* JADX WARN: Code duplicated, block: B:61:0x009f  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:83:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:90:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:92:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:94:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:95:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:98:0x00ff  */
    /* JADX INFO: renamed from: WideNavigationRailItem-pli-t6k, reason: not valid java name */
    public static final void m4327WideNavigationRailItemplit6k(final boolean z, final ll3<j59> ll3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final boolean z2, Modifier modifier, boolean z3, int i, NavigationItemColors navigationItemColors, MutableInteractionSource mutableInteractionSource, Composer composer, final int i2, final int i3) {
        boolean z4;
        int i4;
        ll3<j59> ll3Var2;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        bm3<? super Composer, ? super Integer, j59> bm3Var4;
        int i5;
        int i6;
        int i7;
        Modifier modifier2;
        int i8;
        int i9;
        boolean z5;
        int i10;
        int iM4323iconPositionFors8pcRp0;
        NavigationItemColors navigationItemColorsColors;
        int i11;
        int i12;
        int i13;
        boolean z6;
        Composer composer2;
        final Modifier modifier3;
        final boolean z7;
        final int i14;
        final NavigationItemColors navigationItemColors2;
        final MutableInteractionSource mutableInteractionSource2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i15;
        int i16;
        MutableInteractionSource mutableInteractionSource3;
        MutableInteractionSource mutableInteractionSource4;
        Object objRememberedValue;
        int i17;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1894733304);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
            z4 = z;
        } else {
            z4 = z;
            if ((i2 & 6) == 0) {
                i4 = (composerStartRestartGroup.changed(z4) ? 4 : 2) | i2;
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
        if ((i3 & 4) == 0) {
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                bm3Var3 = bm3Var;
                i4 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 256 : 128;
            }
            if ((i3 & 8) != 0) {
                if ((i2 & 3072) == 0) {
                    bm3Var4 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i4 |= i5;
                }
                if ((i3 & 16) != 0) {
                    i4 |= 24576;
                } else if ((i2 & 24576) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 32;
                if (i7 != 0) {
                    if ((196608 & i2) == 0) {
                        modifier2 = modifier;
                        if (composerStartRestartGroup.changed(modifier2)) {
                            i8 = 131072;
                        } else {
                            i8 = 65536;
                        }
                        i4 |= i8;
                    }
                    i9 = i3 & 64;
                    if (i9 != 0) {
                        if ((1572864 & i2) == 0) {
                            z5 = z3;
                            if (composerStartRestartGroup.changed(z5)) {
                                i10 = 1048576;
                            } else {
                                i10 = 524288;
                            }
                            i4 |= i10;
                        }
                        if ((12582912 & i2) == 0) {
                            if ((i3 & 128) == 0) {
                                iM4323iconPositionFors8pcRp0 = i;
                                int i18 = composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0) ? 8388608 : 4194304;
                                i4 |= i18;
                            } else {
                                iM4323iconPositionFors8pcRp0 = i;
                            }
                            i4 |= i18;
                        } else {
                            iM4323iconPositionFors8pcRp0 = i;
                        }
                        if ((100663296 & i2) == 0) {
                            if ((i3 & 256) == 0) {
                                navigationItemColorsColors = navigationItemColors;
                                if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                                    i17 = 67108864;
                                }
                                i4 |= i17;
                            } else {
                                navigationItemColorsColors = navigationItemColors;
                            }
                            i17 = GroupFlagsKt.HasAuxSlotFlag;
                            i4 |= i17;
                        } else {
                            navigationItemColorsColors = navigationItemColors;
                        }
                        i11 = i3 & 512;
                        if (i11 != 0) {
                            if ((i2 & 805306368) == 0) {
                                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                    i12 = 536870912;
                                } else {
                                    i12 = 268435456;
                                }
                                i4 |= i12;
                            }
                            i13 = i4;
                            if ((i4 & 306783379) != 306783378) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                    if (i7 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i9 != 0) {
                                        z5 = true;
                                    }
                                    if ((i3 & 128) != 0) {
                                        i15 = i13 & (-29360129);
                                        iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                                    } else {
                                        i15 = i13;
                                    }
                                    if ((i3 & 256) != 0) {
                                        i15 &= -234881025;
                                        navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    }
                                    i16 = i15;
                                    if (i11 != 0) {
                                        mutableInteractionSource3 = null;
                                    }
                                    Modifier modifier4 = modifier2;
                                    boolean z8 = z5;
                                    int i19 = iM4323iconPositionFors8pcRp0;
                                    NavigationItemColors navigationItemColors3 = navigationItemColorsColors;
                                    composerStartRestartGroup.endDefaults();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                                    }
                                    if (mutableInteractionSource3 == null) {
                                        composerStartRestartGroup.startReplaceGroup(-1539072909);
                                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                        }
                                        composerStartRestartGroup.endReplaceGroup();
                                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                                    } else {
                                        composerStartRestartGroup.startReplaceGroup(227446500);
                                        composerStartRestartGroup.endReplaceGroup();
                                        mutableInteractionSource4 = mutableInteractionSource3;
                                    }
                                    Shape value = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                                    NavigationRailVerticalItemTokens navigationRailVerticalItemTokens = NavigationRailVerticalItemTokens.INSTANCE;
                                    float fM4948getActiveIndicatorWidthD9Ej5fM = navigationRailVerticalItemTokens.m4948getActiveIndicatorWidthD9Ej5fM();
                                    TextStyle value2 = TypographyKt.getValue(navigationRailVerticalItemTokens.getLabelTextFont(), composerStartRestartGroup, 6);
                                    NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens = NavigationRailHorizontalItemTokens.INSTANCE;
                                    int i20 = i16 << 3;
                                    composer2 = composerStartRestartGroup;
                                    NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value, fM4948getActiveIndicatorWidthD9Ej5fM, value2, TypographyKt.getValue(navigationRailHorizontalItemTokens.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors3, modifier4, z8, bm3Var4, i19, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i20) | (i20 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    mutableInteractionSource2 = mutableInteractionSource3;
                                    navigationItemColors2 = navigationItemColors3;
                                    modifier3 = modifier4;
                                    z7 = z8;
                                    i14 = i19;
                                } else {
                                    composerStartRestartGroup.skipToGroupEnd();
                                    i16 = (i3 & 128) != 0 ? i13 & (-29360129) : i13;
                                    if ((i3 & 256) != 0) {
                                        i16 &= -234881025;
                                    }
                                }
                                mutableInteractionSource3 = mutableInteractionSource;
                                Modifier modifier5 = modifier2;
                                boolean z9 = z5;
                                int i110 = iM4323iconPositionFors8pcRp0;
                                NavigationItemColors navigationItemColors4 = navigationItemColorsColors;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                                }
                                if (mutableInteractionSource3 == null) {
                                    composerStartRestartGroup.startReplaceGroup(-1539072909);
                                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                    }
                                    composerStartRestartGroup.endReplaceGroup();
                                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(227446500);
                                    composerStartRestartGroup.endReplaceGroup();
                                    mutableInteractionSource4 = mutableInteractionSource3;
                                }
                                Shape value3 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                                NavigationRailVerticalItemTokens navigationRailVerticalItemTokens2 = NavigationRailVerticalItemTokens.INSTANCE;
                                float fM4948getActiveIndicatorWidthD9Ej5fM2 = navigationRailVerticalItemTokens2.m4948getActiveIndicatorWidthD9Ej5fM();
                                TextStyle value4 = TypographyKt.getValue(navigationRailVerticalItemTokens2.getLabelTextFont(), composerStartRestartGroup, 6);
                                NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens2 = NavigationRailHorizontalItemTokens.INSTANCE;
                                int i21 = i16 << 3;
                                composer2 = composerStartRestartGroup;
                                NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value3, fM4948getActiveIndicatorWidthD9Ej5fM2, value4, TypographyKt.getValue(navigationRailHorizontalItemTokens2.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens2.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens2.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens2.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors4, modifier5, z9, bm3Var4, i110, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i21) | (i21 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                mutableInteractionSource2 = mutableInteractionSource3;
                                navigationItemColors2 = navigationItemColors4;
                                modifier3 = modifier5;
                                z7 = z9;
                                i14 = i110;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                modifier3 = modifier2;
                                z7 = z5;
                                i14 = iM4323iconPositionFors8pcRp0;
                                navigationItemColors2 = navigationItemColorsColors;
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i4 |= 805306368;
                        i13 = i4;
                        if ((i4 & 306783379) != 306783378) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0) {
                                if (i7 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i9 != 0) {
                                    z5 = true;
                                }
                                if ((i3 & 128) != 0) {
                                    i15 = i13 & (-29360129);
                                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                                } else {
                                    i15 = i13;
                                }
                                if ((i3 & 256) != 0) {
                                    i15 &= -234881025;
                                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                }
                                i16 = i15;
                                if (i11 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                            } else {
                                if (i7 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i9 != 0) {
                                    z5 = true;
                                }
                                if ((i3 & 128) != 0) {
                                    i15 = i13 & (-29360129);
                                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                                } else {
                                    i15 = i13;
                                }
                                if ((i3 & 256) != 0) {
                                    i15 &= -234881025;
                                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                }
                                i16 = i15;
                                if (i11 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                            }
                            Modifier modifier6 = modifier2;
                            boolean z10 = z5;
                            int i111 = iM4323iconPositionFors8pcRp0;
                            NavigationItemColors navigationItemColors5 = navigationItemColorsColors;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1539072909);
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(227446500);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            Shape value5 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            NavigationRailVerticalItemTokens navigationRailVerticalItemTokens3 = NavigationRailVerticalItemTokens.INSTANCE;
                            float fM4948getActiveIndicatorWidthD9Ej5fM3 = navigationRailVerticalItemTokens3.m4948getActiveIndicatorWidthD9Ej5fM();
                            TextStyle value6 = TypographyKt.getValue(navigationRailVerticalItemTokens3.getLabelTextFont(), composerStartRestartGroup, 6);
                            NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens3 = NavigationRailHorizontalItemTokens.INSTANCE;
                            int i22 = i16 << 3;
                            composer2 = composerStartRestartGroup;
                            NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value5, fM4948getActiveIndicatorWidthD9Ej5fM3, value6, TypographyKt.getValue(navigationRailHorizontalItemTokens3.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens3.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens3.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens3.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors5, modifier6, z10, bm3Var4, i111, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i22) | (i22 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            mutableInteractionSource2 = mutableInteractionSource3;
                            navigationItemColors2 = navigationItemColors5;
                            modifier3 = modifier6;
                            z7 = z10;
                            i14 = i111;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier3 = modifier2;
                            z7 = z5;
                            i14 = iM4323iconPositionFors8pcRp0;
                            navigationItemColors2 = navigationItemColorsColors;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 1572864;
                    z5 = z3;
                    if ((12582912 & i2) == 0) {
                        if ((i3 & 128) == 0) {
                            iM4323iconPositionFors8pcRp0 = i;
                            if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                            }
                            i4 |= i18;
                        } else {
                            iM4323iconPositionFors8pcRp0 = i;
                        }
                        i4 |= i18;
                    } else {
                        iM4323iconPositionFors8pcRp0 = i;
                    }
                    if ((100663296 & i2) == 0) {
                        if ((i3 & 256) == 0) {
                            navigationItemColorsColors = navigationItemColors;
                            if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                                i17 = 67108864;
                            }
                            i4 |= i17;
                        } else {
                            navigationItemColorsColors = navigationItemColors;
                        }
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                        i4 |= i17;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i11 = i3 & 512;
                    if (i11 != 0) {
                        if ((i2 & 805306368) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i12 = 536870912;
                            } else {
                                i12 = 268435456;
                            }
                            i4 |= i12;
                        }
                        i13 = i4;
                        if ((i4 & 306783379) != 306783378) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0) {
                                if (i7 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i9 != 0) {
                                    z5 = true;
                                }
                                if ((i3 & 128) != 0) {
                                    i15 = i13 & (-29360129);
                                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                                } else {
                                    i15 = i13;
                                }
                                if ((i3 & 256) != 0) {
                                    i15 &= -234881025;
                                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                }
                                i16 = i15;
                                if (i11 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                            } else {
                                if (i7 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i9 != 0) {
                                    z5 = true;
                                }
                                if ((i3 & 128) != 0) {
                                    i15 = i13 & (-29360129);
                                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                                } else {
                                    i15 = i13;
                                }
                                if ((i3 & 256) != 0) {
                                    i15 &= -234881025;
                                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                }
                                i16 = i15;
                                if (i11 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                            }
                            Modifier modifier7 = modifier2;
                            boolean z11 = z5;
                            int i112 = iM4323iconPositionFors8pcRp0;
                            NavigationItemColors navigationItemColors6 = navigationItemColorsColors;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1539072909);
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(227446500);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            Shape value7 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            NavigationRailVerticalItemTokens navigationRailVerticalItemTokens4 = NavigationRailVerticalItemTokens.INSTANCE;
                            float fM4948getActiveIndicatorWidthD9Ej5fM4 = navigationRailVerticalItemTokens4.m4948getActiveIndicatorWidthD9Ej5fM();
                            TextStyle value8 = TypographyKt.getValue(navigationRailVerticalItemTokens4.getLabelTextFont(), composerStartRestartGroup, 6);
                            NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens4 = NavigationRailHorizontalItemTokens.INSTANCE;
                            int i23 = i16 << 3;
                            composer2 = composerStartRestartGroup;
                            NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value7, fM4948getActiveIndicatorWidthD9Ej5fM4, value8, TypographyKt.getValue(navigationRailHorizontalItemTokens4.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens4.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens4.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens4.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors6, modifier7, z11, bm3Var4, i112, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i23) | (i23 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            mutableInteractionSource2 = mutableInteractionSource3;
                            navigationItemColors2 = navigationItemColors6;
                            modifier3 = modifier7;
                            z7 = z11;
                            i14 = i112;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier3 = modifier2;
                            z7 = z5;
                            i14 = iM4323iconPositionFors8pcRp0;
                            navigationItemColors2 = navigationItemColorsColors;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 805306368;
                    i13 = i4;
                    if ((i4 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        Modifier modifier8 = modifier2;
                        boolean z12 = z5;
                        int i113 = iM4323iconPositionFors8pcRp0;
                        NavigationItemColors navigationItemColors7 = navigationItemColorsColors;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1539072909);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(227446500);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        Shape value9 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens5 = NavigationRailVerticalItemTokens.INSTANCE;
                        float fM4948getActiveIndicatorWidthD9Ej5fM5 = navigationRailVerticalItemTokens5.m4948getActiveIndicatorWidthD9Ej5fM();
                        TextStyle value10 = TypographyKt.getValue(navigationRailVerticalItemTokens5.getLabelTextFont(), composerStartRestartGroup, 6);
                        NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens5 = NavigationRailHorizontalItemTokens.INSTANCE;
                        int i24 = i16 << 3;
                        composer2 = composerStartRestartGroup;
                        NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value9, fM4948getActiveIndicatorWidthD9Ej5fM5, value10, TypographyKt.getValue(navigationRailHorizontalItemTokens5.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens5.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens5.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens5.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors7, modifier8, z12, bm3Var4, i113, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i24) | (i24 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors7;
                        modifier3 = modifier8;
                        z7 = z12;
                        i14 = i113;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z7 = z5;
                        i14 = iM4323iconPositionFors8pcRp0;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                modifier2 = modifier;
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((1572864 & i2) == 0) {
                        z5 = z3;
                        if (composerStartRestartGroup.changed(z5)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((12582912 & i2) == 0) {
                        if ((i3 & 128) == 0) {
                            iM4323iconPositionFors8pcRp0 = i;
                            if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                            }
                            i4 |= i18;
                        } else {
                            iM4323iconPositionFors8pcRp0 = i;
                        }
                        i4 |= i18;
                    } else {
                        iM4323iconPositionFors8pcRp0 = i;
                    }
                    if ((100663296 & i2) == 0) {
                        if ((i3 & 256) == 0) {
                            navigationItemColorsColors = navigationItemColors;
                            if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                                i17 = 67108864;
                            }
                            i4 |= i17;
                        } else {
                            navigationItemColorsColors = navigationItemColors;
                        }
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                        i4 |= i17;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i11 = i3 & 512;
                    if (i11 != 0) {
                        if ((i2 & 805306368) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i12 = 536870912;
                            } else {
                                i12 = 268435456;
                            }
                            i4 |= i12;
                        }
                        i13 = i4;
                        if ((i4 & 306783379) != 306783378) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0) {
                                if (i7 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i9 != 0) {
                                    z5 = true;
                                }
                                if ((i3 & 128) != 0) {
                                    i15 = i13 & (-29360129);
                                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                                } else {
                                    i15 = i13;
                                }
                                if ((i3 & 256) != 0) {
                                    i15 &= -234881025;
                                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                }
                                i16 = i15;
                                if (i11 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                            } else {
                                if (i7 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i9 != 0) {
                                    z5 = true;
                                }
                                if ((i3 & 128) != 0) {
                                    i15 = i13 & (-29360129);
                                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                                } else {
                                    i15 = i13;
                                }
                                if ((i3 & 256) != 0) {
                                    i15 &= -234881025;
                                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                }
                                i16 = i15;
                                if (i11 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                            }
                            Modifier modifier9 = modifier2;
                            boolean z13 = z5;
                            int i114 = iM4323iconPositionFors8pcRp0;
                            NavigationItemColors navigationItemColors8 = navigationItemColorsColors;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1539072909);
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(227446500);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            Shape value11 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            NavigationRailVerticalItemTokens navigationRailVerticalItemTokens6 = NavigationRailVerticalItemTokens.INSTANCE;
                            float fM4948getActiveIndicatorWidthD9Ej5fM6 = navigationRailVerticalItemTokens6.m4948getActiveIndicatorWidthD9Ej5fM();
                            TextStyle value12 = TypographyKt.getValue(navigationRailVerticalItemTokens6.getLabelTextFont(), composerStartRestartGroup, 6);
                            NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens6 = NavigationRailHorizontalItemTokens.INSTANCE;
                            int i25 = i16 << 3;
                            composer2 = composerStartRestartGroup;
                            NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value11, fM4948getActiveIndicatorWidthD9Ej5fM6, value12, TypographyKt.getValue(navigationRailHorizontalItemTokens6.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens6.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens6.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens6.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors8, modifier9, z13, bm3Var4, i114, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i25) | (i25 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            mutableInteractionSource2 = mutableInteractionSource3;
                            navigationItemColors2 = navigationItemColors8;
                            modifier3 = modifier9;
                            z7 = z13;
                            i14 = i114;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier3 = modifier2;
                            z7 = z5;
                            i14 = iM4323iconPositionFors8pcRp0;
                            navigationItemColors2 = navigationItemColorsColors;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 805306368;
                    i13 = i4;
                    if ((i4 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        Modifier modifier10 = modifier2;
                        boolean z14 = z5;
                        int i115 = iM4323iconPositionFors8pcRp0;
                        NavigationItemColors navigationItemColors9 = navigationItemColorsColors;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1539072909);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(227446500);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        Shape value13 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens7 = NavigationRailVerticalItemTokens.INSTANCE;
                        float fM4948getActiveIndicatorWidthD9Ej5fM7 = navigationRailVerticalItemTokens7.m4948getActiveIndicatorWidthD9Ej5fM();
                        TextStyle value14 = TypographyKt.getValue(navigationRailVerticalItemTokens7.getLabelTextFont(), composerStartRestartGroup, 6);
                        NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens7 = NavigationRailHorizontalItemTokens.INSTANCE;
                        int i26 = i16 << 3;
                        composer2 = composerStartRestartGroup;
                        NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value13, fM4948getActiveIndicatorWidthD9Ej5fM7, value14, TypographyKt.getValue(navigationRailHorizontalItemTokens7.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens7.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens7.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens7.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors9, modifier10, z14, bm3Var4, i115, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i26) | (i26 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors9;
                        modifier3 = modifier10;
                        z7 = z14;
                        i14 = i115;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z7 = z5;
                        i14 = iM4323iconPositionFors8pcRp0;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                z5 = z3;
                if ((12582912 & i2) == 0) {
                    if ((i3 & 128) == 0) {
                        iM4323iconPositionFors8pcRp0 = i;
                        if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                        }
                        i4 |= i18;
                    } else {
                        iM4323iconPositionFors8pcRp0 = i;
                    }
                    i4 |= i18;
                } else {
                    iM4323iconPositionFors8pcRp0 = i;
                }
                if ((100663296 & i2) == 0) {
                    if ((i3 & 256) == 0) {
                        navigationItemColorsColors = navigationItemColors;
                        if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                            i17 = 67108864;
                        }
                        i4 |= i17;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                    i4 |= i17;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i11 = i3 & 512;
                if (i11 != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i12 = 536870912;
                        } else {
                            i12 = 268435456;
                        }
                        i4 |= i12;
                    }
                    i13 = i4;
                    if ((i4 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        Modifier modifier11 = modifier2;
                        boolean z15 = z5;
                        int i116 = iM4323iconPositionFors8pcRp0;
                        NavigationItemColors navigationItemColors10 = navigationItemColorsColors;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1539072909);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(227446500);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        Shape value15 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens8 = NavigationRailVerticalItemTokens.INSTANCE;
                        float fM4948getActiveIndicatorWidthD9Ej5fM8 = navigationRailVerticalItemTokens8.m4948getActiveIndicatorWidthD9Ej5fM();
                        TextStyle value16 = TypographyKt.getValue(navigationRailVerticalItemTokens8.getLabelTextFont(), composerStartRestartGroup, 6);
                        NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens8 = NavigationRailHorizontalItemTokens.INSTANCE;
                        int i27 = i16 << 3;
                        composer2 = composerStartRestartGroup;
                        NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value15, fM4948getActiveIndicatorWidthD9Ej5fM8, value16, TypographyKt.getValue(navigationRailHorizontalItemTokens8.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens8.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens8.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens8.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors10, modifier11, z15, bm3Var4, i116, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i27) | (i27 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors10;
                        modifier3 = modifier11;
                        z7 = z15;
                        i14 = i116;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z7 = z5;
                        i14 = iM4323iconPositionFors8pcRp0;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                i13 = i4;
                if ((i4 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    Modifier modifier12 = modifier2;
                    boolean z16 = z5;
                    int i117 = iM4323iconPositionFors8pcRp0;
                    NavigationItemColors navigationItemColors11 = navigationItemColorsColors;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1539072909);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(227446500);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    Shape value17 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    NavigationRailVerticalItemTokens navigationRailVerticalItemTokens9 = NavigationRailVerticalItemTokens.INSTANCE;
                    float fM4948getActiveIndicatorWidthD9Ej5fM9 = navigationRailVerticalItemTokens9.m4948getActiveIndicatorWidthD9Ej5fM();
                    TextStyle value18 = TypographyKt.getValue(navigationRailVerticalItemTokens9.getLabelTextFont(), composerStartRestartGroup, 6);
                    NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens9 = NavigationRailHorizontalItemTokens.INSTANCE;
                    int i28 = i16 << 3;
                    composer2 = composerStartRestartGroup;
                    NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value17, fM4948getActiveIndicatorWidthD9Ej5fM9, value18, TypographyKt.getValue(navigationRailHorizontalItemTokens9.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens9.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens9.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens9.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors11, modifier12, z16, bm3Var4, i117, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i28) | (i28 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors11;
                    modifier3 = modifier12;
                    z7 = z16;
                    i14 = i117;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z5;
                    i14 = iM4323iconPositionFors8pcRp0;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            bm3Var4 = bm3Var2;
            if ((i3 & 16) != 0) {
                i4 |= 24576;
            } else if ((i2 & 24576) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((1572864 & i2) == 0) {
                        z5 = z3;
                        if (composerStartRestartGroup.changed(z5)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((12582912 & i2) == 0) {
                        if ((i3 & 128) == 0) {
                            iM4323iconPositionFors8pcRp0 = i;
                            if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                            }
                            i4 |= i18;
                        } else {
                            iM4323iconPositionFors8pcRp0 = i;
                        }
                        i4 |= i18;
                    } else {
                        iM4323iconPositionFors8pcRp0 = i;
                    }
                    if ((100663296 & i2) == 0) {
                        if ((i3 & 256) == 0) {
                            navigationItemColorsColors = navigationItemColors;
                            if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                                i17 = 67108864;
                            }
                            i4 |= i17;
                        } else {
                            navigationItemColorsColors = navigationItemColors;
                        }
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                        i4 |= i17;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i11 = i3 & 512;
                    if (i11 != 0) {
                        if ((i2 & 805306368) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i12 = 536870912;
                            } else {
                                i12 = 268435456;
                            }
                            i4 |= i12;
                        }
                        i13 = i4;
                        if ((i4 & 306783379) != 306783378) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0) {
                                if (i7 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i9 != 0) {
                                    z5 = true;
                                }
                                if ((i3 & 128) != 0) {
                                    i15 = i13 & (-29360129);
                                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                                } else {
                                    i15 = i13;
                                }
                                if ((i3 & 256) != 0) {
                                    i15 &= -234881025;
                                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                }
                                i16 = i15;
                                if (i11 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                            } else {
                                if (i7 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i9 != 0) {
                                    z5 = true;
                                }
                                if ((i3 & 128) != 0) {
                                    i15 = i13 & (-29360129);
                                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                                } else {
                                    i15 = i13;
                                }
                                if ((i3 & 256) != 0) {
                                    i15 &= -234881025;
                                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                }
                                i16 = i15;
                                if (i11 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                            }
                            Modifier modifier13 = modifier2;
                            boolean z17 = z5;
                            int i118 = iM4323iconPositionFors8pcRp0;
                            NavigationItemColors navigationItemColors12 = navigationItemColorsColors;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1539072909);
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(227446500);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            Shape value19 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            NavigationRailVerticalItemTokens navigationRailVerticalItemTokens10 = NavigationRailVerticalItemTokens.INSTANCE;
                            float fM4948getActiveIndicatorWidthD9Ej5fM10 = navigationRailVerticalItemTokens10.m4948getActiveIndicatorWidthD9Ej5fM();
                            TextStyle value110 = TypographyKt.getValue(navigationRailVerticalItemTokens10.getLabelTextFont(), composerStartRestartGroup, 6);
                            NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens10 = NavigationRailHorizontalItemTokens.INSTANCE;
                            int i29 = i16 << 3;
                            composer2 = composerStartRestartGroup;
                            NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value19, fM4948getActiveIndicatorWidthD9Ej5fM10, value110, TypographyKt.getValue(navigationRailHorizontalItemTokens10.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens10.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens10.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens10.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors12, modifier13, z17, bm3Var4, i118, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i29) | (i29 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            mutableInteractionSource2 = mutableInteractionSource3;
                            navigationItemColors2 = navigationItemColors12;
                            modifier3 = modifier13;
                            z7 = z17;
                            i14 = i118;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier3 = modifier2;
                            z7 = z5;
                            i14 = iM4323iconPositionFors8pcRp0;
                            navigationItemColors2 = navigationItemColorsColors;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 805306368;
                    i13 = i4;
                    if ((i4 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        Modifier modifier14 = modifier2;
                        boolean z18 = z5;
                        int i119 = iM4323iconPositionFors8pcRp0;
                        NavigationItemColors navigationItemColors13 = navigationItemColorsColors;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1539072909);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(227446500);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        Shape value111 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens11 = NavigationRailVerticalItemTokens.INSTANCE;
                        float fM4948getActiveIndicatorWidthD9Ej5fM11 = navigationRailVerticalItemTokens11.m4948getActiveIndicatorWidthD9Ej5fM();
                        TextStyle value112 = TypographyKt.getValue(navigationRailVerticalItemTokens11.getLabelTextFont(), composerStartRestartGroup, 6);
                        NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens11 = NavigationRailHorizontalItemTokens.INSTANCE;
                        int i210 = i16 << 3;
                        composer2 = composerStartRestartGroup;
                        NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value111, fM4948getActiveIndicatorWidthD9Ej5fM11, value112, TypographyKt.getValue(navigationRailHorizontalItemTokens11.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens11.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens11.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens11.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors13, modifier14, z18, bm3Var4, i119, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i210) | (i210 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors13;
                        modifier3 = modifier14;
                        z7 = z18;
                        i14 = i119;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z7 = z5;
                        i14 = iM4323iconPositionFors8pcRp0;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                z5 = z3;
                if ((12582912 & i2) == 0) {
                    if ((i3 & 128) == 0) {
                        iM4323iconPositionFors8pcRp0 = i;
                        if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                        }
                        i4 |= i18;
                    } else {
                        iM4323iconPositionFors8pcRp0 = i;
                    }
                    i4 |= i18;
                } else {
                    iM4323iconPositionFors8pcRp0 = i;
                }
                if ((100663296 & i2) == 0) {
                    if ((i3 & 256) == 0) {
                        navigationItemColorsColors = navigationItemColors;
                        if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                            i17 = 67108864;
                        }
                        i4 |= i17;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                    i4 |= i17;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i11 = i3 & 512;
                if (i11 != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i12 = 536870912;
                        } else {
                            i12 = 268435456;
                        }
                        i4 |= i12;
                    }
                    i13 = i4;
                    if ((i4 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        Modifier modifier15 = modifier2;
                        boolean z19 = z5;
                        int i1110 = iM4323iconPositionFors8pcRp0;
                        NavigationItemColors navigationItemColors14 = navigationItemColorsColors;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1539072909);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(227446500);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        Shape value113 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens12 = NavigationRailVerticalItemTokens.INSTANCE;
                        float fM4948getActiveIndicatorWidthD9Ej5fM12 = navigationRailVerticalItemTokens12.m4948getActiveIndicatorWidthD9Ej5fM();
                        TextStyle value114 = TypographyKt.getValue(navigationRailVerticalItemTokens12.getLabelTextFont(), composerStartRestartGroup, 6);
                        NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens12 = NavigationRailHorizontalItemTokens.INSTANCE;
                        int i211 = i16 << 3;
                        composer2 = composerStartRestartGroup;
                        NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value113, fM4948getActiveIndicatorWidthD9Ej5fM12, value114, TypographyKt.getValue(navigationRailHorizontalItemTokens12.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens12.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens12.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens12.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors14, modifier15, z19, bm3Var4, i1110, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i211) | (i211 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors14;
                        modifier3 = modifier15;
                        z7 = z19;
                        i14 = i1110;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z7 = z5;
                        i14 = iM4323iconPositionFors8pcRp0;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                i13 = i4;
                if ((i4 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    Modifier modifier16 = modifier2;
                    boolean z110 = z5;
                    int i1111 = iM4323iconPositionFors8pcRp0;
                    NavigationItemColors navigationItemColors15 = navigationItemColorsColors;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1539072909);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(227446500);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    Shape value115 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    NavigationRailVerticalItemTokens navigationRailVerticalItemTokens13 = NavigationRailVerticalItemTokens.INSTANCE;
                    float fM4948getActiveIndicatorWidthD9Ej5fM13 = navigationRailVerticalItemTokens13.m4948getActiveIndicatorWidthD9Ej5fM();
                    TextStyle value116 = TypographyKt.getValue(navigationRailVerticalItemTokens13.getLabelTextFont(), composerStartRestartGroup, 6);
                    NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens13 = NavigationRailHorizontalItemTokens.INSTANCE;
                    int i212 = i16 << 3;
                    composer2 = composerStartRestartGroup;
                    NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value115, fM4948getActiveIndicatorWidthD9Ej5fM13, value116, TypographyKt.getValue(navigationRailHorizontalItemTokens13.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens13.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens13.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens13.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors15, modifier16, z110, bm3Var4, i1111, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i212) | (i212 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors15;
                    modifier3 = modifier16;
                    z7 = z110;
                    i14 = i1111;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z5;
                    i14 = iM4323iconPositionFors8pcRp0;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            modifier2 = modifier;
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((1572864 & i2) == 0) {
                    z5 = z3;
                    if (composerStartRestartGroup.changed(z5)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((12582912 & i2) == 0) {
                    if ((i3 & 128) == 0) {
                        iM4323iconPositionFors8pcRp0 = i;
                        if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                        }
                        i4 |= i18;
                    } else {
                        iM4323iconPositionFors8pcRp0 = i;
                    }
                    i4 |= i18;
                } else {
                    iM4323iconPositionFors8pcRp0 = i;
                }
                if ((100663296 & i2) == 0) {
                    if ((i3 & 256) == 0) {
                        navigationItemColorsColors = navigationItemColors;
                        if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                            i17 = 67108864;
                        }
                        i4 |= i17;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                    i4 |= i17;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i11 = i3 & 512;
                if (i11 != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i12 = 536870912;
                        } else {
                            i12 = 268435456;
                        }
                        i4 |= i12;
                    }
                    i13 = i4;
                    if ((i4 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        Modifier modifier17 = modifier2;
                        boolean z111 = z5;
                        int i1112 = iM4323iconPositionFors8pcRp0;
                        NavigationItemColors navigationItemColors16 = navigationItemColorsColors;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1539072909);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(227446500);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        Shape value117 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens14 = NavigationRailVerticalItemTokens.INSTANCE;
                        float fM4948getActiveIndicatorWidthD9Ej5fM14 = navigationRailVerticalItemTokens14.m4948getActiveIndicatorWidthD9Ej5fM();
                        TextStyle value118 = TypographyKt.getValue(navigationRailVerticalItemTokens14.getLabelTextFont(), composerStartRestartGroup, 6);
                        NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens14 = NavigationRailHorizontalItemTokens.INSTANCE;
                        int i213 = i16 << 3;
                        composer2 = composerStartRestartGroup;
                        NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value117, fM4948getActiveIndicatorWidthD9Ej5fM14, value118, TypographyKt.getValue(navigationRailHorizontalItemTokens14.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens14.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens14.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens14.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors16, modifier17, z111, bm3Var4, i1112, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i213) | (i213 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors16;
                        modifier3 = modifier17;
                        z7 = z111;
                        i14 = i1112;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z7 = z5;
                        i14 = iM4323iconPositionFors8pcRp0;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                i13 = i4;
                if ((i4 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    Modifier modifier18 = modifier2;
                    boolean z112 = z5;
                    int i1113 = iM4323iconPositionFors8pcRp0;
                    NavigationItemColors navigationItemColors17 = navigationItemColorsColors;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1539072909);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(227446500);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    Shape value119 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    NavigationRailVerticalItemTokens navigationRailVerticalItemTokens15 = NavigationRailVerticalItemTokens.INSTANCE;
                    float fM4948getActiveIndicatorWidthD9Ej5fM15 = navigationRailVerticalItemTokens15.m4948getActiveIndicatorWidthD9Ej5fM();
                    TextStyle value1110 = TypographyKt.getValue(navigationRailVerticalItemTokens15.getLabelTextFont(), composerStartRestartGroup, 6);
                    NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens15 = NavigationRailHorizontalItemTokens.INSTANCE;
                    int i214 = i16 << 3;
                    composer2 = composerStartRestartGroup;
                    NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value119, fM4948getActiveIndicatorWidthD9Ej5fM15, value1110, TypographyKt.getValue(navigationRailHorizontalItemTokens15.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens15.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens15.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens15.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors17, modifier18, z112, bm3Var4, i1113, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i214) | (i214 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors17;
                    modifier3 = modifier18;
                    z7 = z112;
                    i14 = i1113;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z5;
                    i14 = iM4323iconPositionFors8pcRp0;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            z5 = z3;
            if ((12582912 & i2) == 0) {
                if ((i3 & 128) == 0) {
                    iM4323iconPositionFors8pcRp0 = i;
                    if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                    }
                    i4 |= i18;
                } else {
                    iM4323iconPositionFors8pcRp0 = i;
                }
                i4 |= i18;
            } else {
                iM4323iconPositionFors8pcRp0 = i;
            }
            if ((100663296 & i2) == 0) {
                if ((i3 & 256) == 0) {
                    navigationItemColorsColors = navigationItemColors;
                    if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                        i17 = 67108864;
                    }
                    i4 |= i17;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i17 = GroupFlagsKt.HasAuxSlotFlag;
                i4 |= i17;
            } else {
                navigationItemColorsColors = navigationItemColors;
            }
            i11 = i3 & 512;
            if (i11 != 0) {
                if ((i2 & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i12 = 536870912;
                    } else {
                        i12 = 268435456;
                    }
                    i4 |= i12;
                }
                i13 = i4;
                if ((i4 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    Modifier modifier19 = modifier2;
                    boolean z113 = z5;
                    int i1114 = iM4323iconPositionFors8pcRp0;
                    NavigationItemColors navigationItemColors18 = navigationItemColorsColors;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1539072909);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(227446500);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    Shape value1111 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    NavigationRailVerticalItemTokens navigationRailVerticalItemTokens16 = NavigationRailVerticalItemTokens.INSTANCE;
                    float fM4948getActiveIndicatorWidthD9Ej5fM16 = navigationRailVerticalItemTokens16.m4948getActiveIndicatorWidthD9Ej5fM();
                    TextStyle value1112 = TypographyKt.getValue(navigationRailVerticalItemTokens16.getLabelTextFont(), composerStartRestartGroup, 6);
                    NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens16 = NavigationRailHorizontalItemTokens.INSTANCE;
                    int i215 = i16 << 3;
                    composer2 = composerStartRestartGroup;
                    NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value1111, fM4948getActiveIndicatorWidthD9Ej5fM16, value1112, TypographyKt.getValue(navigationRailHorizontalItemTokens16.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens16.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens16.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens16.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors18, modifier19, z113, bm3Var4, i1114, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i215) | (i215 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors18;
                    modifier3 = modifier19;
                    z7 = z113;
                    i14 = i1114;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z5;
                    i14 = iM4323iconPositionFors8pcRp0;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            i13 = i4;
            if ((i4 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i7 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i9 != 0) {
                        z5 = true;
                    }
                    if ((i3 & 128) != 0) {
                        i15 = i13 & (-29360129);
                        iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                    } else {
                        i15 = i13;
                    }
                    if ((i3 & 256) != 0) {
                        i15 &= -234881025;
                        navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i16 = i15;
                    if (i11 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i7 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i9 != 0) {
                        z5 = true;
                    }
                    if ((i3 & 128) != 0) {
                        i15 = i13 & (-29360129);
                        iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                    } else {
                        i15 = i13;
                    }
                    if ((i3 & 256) != 0) {
                        i15 &= -234881025;
                        navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i16 = i15;
                    if (i11 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                Modifier modifier110 = modifier2;
                boolean z114 = z5;
                int i1115 = iM4323iconPositionFors8pcRp0;
                NavigationItemColors navigationItemColors19 = navigationItemColorsColors;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1539072909);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(227446500);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                Shape value1113 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                NavigationRailVerticalItemTokens navigationRailVerticalItemTokens17 = NavigationRailVerticalItemTokens.INSTANCE;
                float fM4948getActiveIndicatorWidthD9Ej5fM17 = navigationRailVerticalItemTokens17.m4948getActiveIndicatorWidthD9Ej5fM();
                TextStyle value1114 = TypographyKt.getValue(navigationRailVerticalItemTokens17.getLabelTextFont(), composerStartRestartGroup, 6);
                NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens17 = NavigationRailHorizontalItemTokens.INSTANCE;
                int i216 = i16 << 3;
                composer2 = composerStartRestartGroup;
                NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value1113, fM4948getActiveIndicatorWidthD9Ej5fM17, value1114, TypographyKt.getValue(navigationRailHorizontalItemTokens17.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens17.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens17.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens17.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors19, modifier110, z114, bm3Var4, i1115, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i216) | (i216 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource2 = mutableInteractionSource3;
                navigationItemColors2 = navigationItemColors19;
                modifier3 = modifier110;
                z7 = z114;
                i14 = i1115;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z7 = z5;
                i14 = iM4323iconPositionFors8pcRp0;
                navigationItemColors2 = navigationItemColorsColors;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        bm3Var3 = bm3Var;
        if ((i3 & 8) != 0) {
            if ((i2 & 3072) == 0) {
                bm3Var4 = bm3Var2;
                if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i4 |= i5;
            }
            if ((i3 & 16) != 0) {
                i4 |= 24576;
            } else if ((i2 & 24576) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((1572864 & i2) == 0) {
                        z5 = z3;
                        if (composerStartRestartGroup.changed(z5)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((12582912 & i2) == 0) {
                        if ((i3 & 128) == 0) {
                            iM4323iconPositionFors8pcRp0 = i;
                            if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                            }
                            i4 |= i18;
                        } else {
                            iM4323iconPositionFors8pcRp0 = i;
                        }
                        i4 |= i18;
                    } else {
                        iM4323iconPositionFors8pcRp0 = i;
                    }
                    if ((100663296 & i2) == 0) {
                        if ((i3 & 256) == 0) {
                            navigationItemColorsColors = navigationItemColors;
                            if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                                i17 = 67108864;
                            }
                            i4 |= i17;
                        } else {
                            navigationItemColorsColors = navigationItemColors;
                        }
                        i17 = GroupFlagsKt.HasAuxSlotFlag;
                        i4 |= i17;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i11 = i3 & 512;
                    if (i11 != 0) {
                        if ((i2 & 805306368) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i12 = 536870912;
                            } else {
                                i12 = 268435456;
                            }
                            i4 |= i12;
                        }
                        i13 = i4;
                        if ((i4 & 306783379) != 306783378) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0) {
                                if (i7 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i9 != 0) {
                                    z5 = true;
                                }
                                if ((i3 & 128) != 0) {
                                    i15 = i13 & (-29360129);
                                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                                } else {
                                    i15 = i13;
                                }
                                if ((i3 & 256) != 0) {
                                    i15 &= -234881025;
                                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                }
                                i16 = i15;
                                if (i11 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                            } else {
                                if (i7 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i9 != 0) {
                                    z5 = true;
                                }
                                if ((i3 & 128) != 0) {
                                    i15 = i13 & (-29360129);
                                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                                } else {
                                    i15 = i13;
                                }
                                if ((i3 & 256) != 0) {
                                    i15 &= -234881025;
                                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                }
                                i16 = i15;
                                if (i11 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                            }
                            Modifier modifier111 = modifier2;
                            boolean z115 = z5;
                            int i1116 = iM4323iconPositionFors8pcRp0;
                            NavigationItemColors navigationItemColors110 = navigationItemColorsColors;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                            }
                            if (mutableInteractionSource3 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1539072909);
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(227446500);
                                composerStartRestartGroup.endReplaceGroup();
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            Shape value1115 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                            NavigationRailVerticalItemTokens navigationRailVerticalItemTokens18 = NavigationRailVerticalItemTokens.INSTANCE;
                            float fM4948getActiveIndicatorWidthD9Ej5fM18 = navigationRailVerticalItemTokens18.m4948getActiveIndicatorWidthD9Ej5fM();
                            TextStyle value1116 = TypographyKt.getValue(navigationRailVerticalItemTokens18.getLabelTextFont(), composerStartRestartGroup, 6);
                            NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens18 = NavigationRailHorizontalItemTokens.INSTANCE;
                            int i217 = i16 << 3;
                            composer2 = composerStartRestartGroup;
                            NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value1115, fM4948getActiveIndicatorWidthD9Ej5fM18, value1116, TypographyKt.getValue(navigationRailHorizontalItemTokens18.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens18.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens18.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens18.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors110, modifier111, z115, bm3Var4, i1116, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i217) | (i217 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            mutableInteractionSource2 = mutableInteractionSource3;
                            navigationItemColors2 = navigationItemColors110;
                            modifier3 = modifier111;
                            z7 = z115;
                            i14 = i1116;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier3 = modifier2;
                            z7 = z5;
                            i14 = iM4323iconPositionFors8pcRp0;
                            navigationItemColors2 = navigationItemColorsColors;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 805306368;
                    i13 = i4;
                    if ((i4 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        Modifier modifier112 = modifier2;
                        boolean z116 = z5;
                        int i1117 = iM4323iconPositionFors8pcRp0;
                        NavigationItemColors navigationItemColors111 = navigationItemColorsColors;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1539072909);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(227446500);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        Shape value1117 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens19 = NavigationRailVerticalItemTokens.INSTANCE;
                        float fM4948getActiveIndicatorWidthD9Ej5fM19 = navigationRailVerticalItemTokens19.m4948getActiveIndicatorWidthD9Ej5fM();
                        TextStyle value1118 = TypographyKt.getValue(navigationRailVerticalItemTokens19.getLabelTextFont(), composerStartRestartGroup, 6);
                        NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens19 = NavigationRailHorizontalItemTokens.INSTANCE;
                        int i218 = i16 << 3;
                        composer2 = composerStartRestartGroup;
                        NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value1117, fM4948getActiveIndicatorWidthD9Ej5fM19, value1118, TypographyKt.getValue(navigationRailHorizontalItemTokens19.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens19.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens19.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens19.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors111, modifier112, z116, bm3Var4, i1117, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i218) | (i218 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors111;
                        modifier3 = modifier112;
                        z7 = z116;
                        i14 = i1117;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z7 = z5;
                        i14 = iM4323iconPositionFors8pcRp0;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                z5 = z3;
                if ((12582912 & i2) == 0) {
                    if ((i3 & 128) == 0) {
                        iM4323iconPositionFors8pcRp0 = i;
                        if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                        }
                        i4 |= i18;
                    } else {
                        iM4323iconPositionFors8pcRp0 = i;
                    }
                    i4 |= i18;
                } else {
                    iM4323iconPositionFors8pcRp0 = i;
                }
                if ((100663296 & i2) == 0) {
                    if ((i3 & 256) == 0) {
                        navigationItemColorsColors = navigationItemColors;
                        if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                            i17 = 67108864;
                        }
                        i4 |= i17;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                    i4 |= i17;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i11 = i3 & 512;
                if (i11 != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i12 = 536870912;
                        } else {
                            i12 = 268435456;
                        }
                        i4 |= i12;
                    }
                    i13 = i4;
                    if ((i4 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        Modifier modifier113 = modifier2;
                        boolean z117 = z5;
                        int i1118 = iM4323iconPositionFors8pcRp0;
                        NavigationItemColors navigationItemColors112 = navigationItemColorsColors;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1539072909);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(227446500);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        Shape value1119 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens110 = NavigationRailVerticalItemTokens.INSTANCE;
                        float fM4948getActiveIndicatorWidthD9Ej5fM110 = navigationRailVerticalItemTokens110.m4948getActiveIndicatorWidthD9Ej5fM();
                        TextStyle value11110 = TypographyKt.getValue(navigationRailVerticalItemTokens110.getLabelTextFont(), composerStartRestartGroup, 6);
                        NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens110 = NavigationRailHorizontalItemTokens.INSTANCE;
                        int i219 = i16 << 3;
                        composer2 = composerStartRestartGroup;
                        NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value1119, fM4948getActiveIndicatorWidthD9Ej5fM110, value11110, TypographyKt.getValue(navigationRailHorizontalItemTokens110.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens110.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens110.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens110.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors112, modifier113, z117, bm3Var4, i1118, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i219) | (i219 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors112;
                        modifier3 = modifier113;
                        z7 = z117;
                        i14 = i1118;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z7 = z5;
                        i14 = iM4323iconPositionFors8pcRp0;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                i13 = i4;
                if ((i4 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    Modifier modifier114 = modifier2;
                    boolean z118 = z5;
                    int i1119 = iM4323iconPositionFors8pcRp0;
                    NavigationItemColors navigationItemColors113 = navigationItemColorsColors;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1539072909);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(227446500);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    Shape value11111 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    NavigationRailVerticalItemTokens navigationRailVerticalItemTokens111 = NavigationRailVerticalItemTokens.INSTANCE;
                    float fM4948getActiveIndicatorWidthD9Ej5fM111 = navigationRailVerticalItemTokens111.m4948getActiveIndicatorWidthD9Ej5fM();
                    TextStyle value11112 = TypographyKt.getValue(navigationRailVerticalItemTokens111.getLabelTextFont(), composerStartRestartGroup, 6);
                    NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens111 = NavigationRailHorizontalItemTokens.INSTANCE;
                    int i2110 = i16 << 3;
                    composer2 = composerStartRestartGroup;
                    NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value11111, fM4948getActiveIndicatorWidthD9Ej5fM111, value11112, TypographyKt.getValue(navigationRailHorizontalItemTokens111.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens111.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens111.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens111.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors113, modifier114, z118, bm3Var4, i1119, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i2110) | (i2110 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors113;
                    modifier3 = modifier114;
                    z7 = z118;
                    i14 = i1119;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z5;
                    i14 = iM4323iconPositionFors8pcRp0;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            modifier2 = modifier;
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((1572864 & i2) == 0) {
                    z5 = z3;
                    if (composerStartRestartGroup.changed(z5)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((12582912 & i2) == 0) {
                    if ((i3 & 128) == 0) {
                        iM4323iconPositionFors8pcRp0 = i;
                        if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                        }
                        i4 |= i18;
                    } else {
                        iM4323iconPositionFors8pcRp0 = i;
                    }
                    i4 |= i18;
                } else {
                    iM4323iconPositionFors8pcRp0 = i;
                }
                if ((100663296 & i2) == 0) {
                    if ((i3 & 256) == 0) {
                        navigationItemColorsColors = navigationItemColors;
                        if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                            i17 = 67108864;
                        }
                        i4 |= i17;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                    i4 |= i17;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i11 = i3 & 512;
                if (i11 != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i12 = 536870912;
                        } else {
                            i12 = 268435456;
                        }
                        i4 |= i12;
                    }
                    i13 = i4;
                    if ((i4 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        Modifier modifier115 = modifier2;
                        boolean z119 = z5;
                        int i11110 = iM4323iconPositionFors8pcRp0;
                        NavigationItemColors navigationItemColors114 = navigationItemColorsColors;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1539072909);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(227446500);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        Shape value11113 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens112 = NavigationRailVerticalItemTokens.INSTANCE;
                        float fM4948getActiveIndicatorWidthD9Ej5fM112 = navigationRailVerticalItemTokens112.m4948getActiveIndicatorWidthD9Ej5fM();
                        TextStyle value11114 = TypographyKt.getValue(navigationRailVerticalItemTokens112.getLabelTextFont(), composerStartRestartGroup, 6);
                        NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens112 = NavigationRailHorizontalItemTokens.INSTANCE;
                        int i2111 = i16 << 3;
                        composer2 = composerStartRestartGroup;
                        NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value11113, fM4948getActiveIndicatorWidthD9Ej5fM112, value11114, TypographyKt.getValue(navigationRailHorizontalItemTokens112.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens112.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens112.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens112.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors114, modifier115, z119, bm3Var4, i11110, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i2111) | (i2111 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors114;
                        modifier3 = modifier115;
                        z7 = z119;
                        i14 = i11110;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z7 = z5;
                        i14 = iM4323iconPositionFors8pcRp0;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                i13 = i4;
                if ((i4 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    Modifier modifier116 = modifier2;
                    boolean z1110 = z5;
                    int i11111 = iM4323iconPositionFors8pcRp0;
                    NavigationItemColors navigationItemColors115 = navigationItemColorsColors;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1539072909);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(227446500);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    Shape value11115 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    NavigationRailVerticalItemTokens navigationRailVerticalItemTokens113 = NavigationRailVerticalItemTokens.INSTANCE;
                    float fM4948getActiveIndicatorWidthD9Ej5fM113 = navigationRailVerticalItemTokens113.m4948getActiveIndicatorWidthD9Ej5fM();
                    TextStyle value11116 = TypographyKt.getValue(navigationRailVerticalItemTokens113.getLabelTextFont(), composerStartRestartGroup, 6);
                    NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens113 = NavigationRailHorizontalItemTokens.INSTANCE;
                    int i2112 = i16 << 3;
                    composer2 = composerStartRestartGroup;
                    NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value11115, fM4948getActiveIndicatorWidthD9Ej5fM113, value11116, TypographyKt.getValue(navigationRailHorizontalItemTokens113.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens113.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens113.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens113.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors115, modifier116, z1110, bm3Var4, i11111, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i2112) | (i2112 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors115;
                    modifier3 = modifier116;
                    z7 = z1110;
                    i14 = i11111;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z5;
                    i14 = iM4323iconPositionFors8pcRp0;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            z5 = z3;
            if ((12582912 & i2) == 0) {
                if ((i3 & 128) == 0) {
                    iM4323iconPositionFors8pcRp0 = i;
                    if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                    }
                    i4 |= i18;
                } else {
                    iM4323iconPositionFors8pcRp0 = i;
                }
                i4 |= i18;
            } else {
                iM4323iconPositionFors8pcRp0 = i;
            }
            if ((100663296 & i2) == 0) {
                if ((i3 & 256) == 0) {
                    navigationItemColorsColors = navigationItemColors;
                    if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                        i17 = 67108864;
                    }
                    i4 |= i17;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i17 = GroupFlagsKt.HasAuxSlotFlag;
                i4 |= i17;
            } else {
                navigationItemColorsColors = navigationItemColors;
            }
            i11 = i3 & 512;
            if (i11 != 0) {
                if ((i2 & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i12 = 536870912;
                    } else {
                        i12 = 268435456;
                    }
                    i4 |= i12;
                }
                i13 = i4;
                if ((i4 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    Modifier modifier117 = modifier2;
                    boolean z1111 = z5;
                    int i11112 = iM4323iconPositionFors8pcRp0;
                    NavigationItemColors navigationItemColors116 = navigationItemColorsColors;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1539072909);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(227446500);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    Shape value11117 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    NavigationRailVerticalItemTokens navigationRailVerticalItemTokens114 = NavigationRailVerticalItemTokens.INSTANCE;
                    float fM4948getActiveIndicatorWidthD9Ej5fM114 = navigationRailVerticalItemTokens114.m4948getActiveIndicatorWidthD9Ej5fM();
                    TextStyle value11118 = TypographyKt.getValue(navigationRailVerticalItemTokens114.getLabelTextFont(), composerStartRestartGroup, 6);
                    NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens114 = NavigationRailHorizontalItemTokens.INSTANCE;
                    int i2113 = i16 << 3;
                    composer2 = composerStartRestartGroup;
                    NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value11117, fM4948getActiveIndicatorWidthD9Ej5fM114, value11118, TypographyKt.getValue(navigationRailHorizontalItemTokens114.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens114.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens114.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens114.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors116, modifier117, z1111, bm3Var4, i11112, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i2113) | (i2113 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors116;
                    modifier3 = modifier117;
                    z7 = z1111;
                    i14 = i11112;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z5;
                    i14 = iM4323iconPositionFors8pcRp0;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            i13 = i4;
            if ((i4 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i7 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i9 != 0) {
                        z5 = true;
                    }
                    if ((i3 & 128) != 0) {
                        i15 = i13 & (-29360129);
                        iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                    } else {
                        i15 = i13;
                    }
                    if ((i3 & 256) != 0) {
                        i15 &= -234881025;
                        navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i16 = i15;
                    if (i11 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i7 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i9 != 0) {
                        z5 = true;
                    }
                    if ((i3 & 128) != 0) {
                        i15 = i13 & (-29360129);
                        iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                    } else {
                        i15 = i13;
                    }
                    if ((i3 & 256) != 0) {
                        i15 &= -234881025;
                        navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i16 = i15;
                    if (i11 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                Modifier modifier118 = modifier2;
                boolean z1112 = z5;
                int i11113 = iM4323iconPositionFors8pcRp0;
                NavigationItemColors navigationItemColors117 = navigationItemColorsColors;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1539072909);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(227446500);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                Shape value11119 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                NavigationRailVerticalItemTokens navigationRailVerticalItemTokens115 = NavigationRailVerticalItemTokens.INSTANCE;
                float fM4948getActiveIndicatorWidthD9Ej5fM115 = navigationRailVerticalItemTokens115.m4948getActiveIndicatorWidthD9Ej5fM();
                TextStyle value111110 = TypographyKt.getValue(navigationRailVerticalItemTokens115.getLabelTextFont(), composerStartRestartGroup, 6);
                NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens115 = NavigationRailHorizontalItemTokens.INSTANCE;
                int i2114 = i16 << 3;
                composer2 = composerStartRestartGroup;
                NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value11119, fM4948getActiveIndicatorWidthD9Ej5fM115, value111110, TypographyKt.getValue(navigationRailHorizontalItemTokens115.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens115.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens115.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens115.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors117, modifier118, z1112, bm3Var4, i11113, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i2114) | (i2114 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource2 = mutableInteractionSource3;
                navigationItemColors2 = navigationItemColors117;
                modifier3 = modifier118;
                z7 = z1112;
                i14 = i11113;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z7 = z5;
                i14 = iM4323iconPositionFors8pcRp0;
                navigationItemColors2 = navigationItemColorsColors;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        bm3Var4 = bm3Var2;
        if ((i3 & 16) != 0) {
            i4 |= 24576;
        } else if ((i2 & 24576) == 0) {
            if (composerStartRestartGroup.changed(z2)) {
                i6 = 16384;
            } else {
                i6 = 8192;
            }
            i4 |= i6;
        }
        i7 = i3 & 32;
        if (i7 != 0) {
            if ((196608 & i2) == 0) {
                modifier2 = modifier;
                if (composerStartRestartGroup.changed(modifier2)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((1572864 & i2) == 0) {
                    z5 = z3;
                    if (composerStartRestartGroup.changed(z5)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((12582912 & i2) == 0) {
                    if ((i3 & 128) == 0) {
                        iM4323iconPositionFors8pcRp0 = i;
                        if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                        }
                        i4 |= i18;
                    } else {
                        iM4323iconPositionFors8pcRp0 = i;
                    }
                    i4 |= i18;
                } else {
                    iM4323iconPositionFors8pcRp0 = i;
                }
                if ((100663296 & i2) == 0) {
                    if ((i3 & 256) == 0) {
                        navigationItemColorsColors = navigationItemColors;
                        if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                            i17 = 67108864;
                        }
                        i4 |= i17;
                    } else {
                        navigationItemColorsColors = navigationItemColors;
                    }
                    i17 = GroupFlagsKt.HasAuxSlotFlag;
                    i4 |= i17;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i11 = i3 & 512;
                if (i11 != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i12 = 536870912;
                        } else {
                            i12 = 268435456;
                        }
                        i4 |= i12;
                    }
                    i13 = i4;
                    if ((i4 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i7 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i9 != 0) {
                                z5 = true;
                            }
                            if ((i3 & 128) != 0) {
                                i15 = i13 & (-29360129);
                                iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                            } else {
                                i15 = i13;
                            }
                            if ((i3 & 256) != 0) {
                                i15 &= -234881025;
                                navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i16 = i15;
                            if (i11 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        Modifier modifier119 = modifier2;
                        boolean z1113 = z5;
                        int i11114 = iM4323iconPositionFors8pcRp0;
                        NavigationItemColors navigationItemColors118 = navigationItemColorsColors;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                        }
                        if (mutableInteractionSource3 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1539072909);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(227446500);
                            composerStartRestartGroup.endReplaceGroup();
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        Shape value111111 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                        NavigationRailVerticalItemTokens navigationRailVerticalItemTokens116 = NavigationRailVerticalItemTokens.INSTANCE;
                        float fM4948getActiveIndicatorWidthD9Ej5fM116 = navigationRailVerticalItemTokens116.m4948getActiveIndicatorWidthD9Ej5fM();
                        TextStyle value111112 = TypographyKt.getValue(navigationRailVerticalItemTokens116.getLabelTextFont(), composerStartRestartGroup, 6);
                        NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens116 = NavigationRailHorizontalItemTokens.INSTANCE;
                        int i2115 = i16 << 3;
                        composer2 = composerStartRestartGroup;
                        NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value111111, fM4948getActiveIndicatorWidthD9Ej5fM116, value111112, TypographyKt.getValue(navigationRailHorizontalItemTokens116.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens116.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens116.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens116.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors118, modifier119, z1113, bm3Var4, i11114, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i2115) | (i2115 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource2 = mutableInteractionSource3;
                        navigationItemColors2 = navigationItemColors118;
                        modifier3 = modifier119;
                        z7 = z1113;
                        i14 = i11114;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z7 = z5;
                        i14 = iM4323iconPositionFors8pcRp0;
                        navigationItemColors2 = navigationItemColorsColors;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                i13 = i4;
                if ((i4 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    Modifier modifier1110 = modifier2;
                    boolean z1114 = z5;
                    int i11115 = iM4323iconPositionFors8pcRp0;
                    NavigationItemColors navigationItemColors119 = navigationItemColorsColors;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1539072909);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(227446500);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    Shape value111113 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    NavigationRailVerticalItemTokens navigationRailVerticalItemTokens117 = NavigationRailVerticalItemTokens.INSTANCE;
                    float fM4948getActiveIndicatorWidthD9Ej5fM117 = navigationRailVerticalItemTokens117.m4948getActiveIndicatorWidthD9Ej5fM();
                    TextStyle value111114 = TypographyKt.getValue(navigationRailVerticalItemTokens117.getLabelTextFont(), composerStartRestartGroup, 6);
                    NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens117 = NavigationRailHorizontalItemTokens.INSTANCE;
                    int i2116 = i16 << 3;
                    composer2 = composerStartRestartGroup;
                    NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value111113, fM4948getActiveIndicatorWidthD9Ej5fM117, value111114, TypographyKt.getValue(navigationRailHorizontalItemTokens117.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens117.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens117.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens117.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors119, modifier1110, z1114, bm3Var4, i11115, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i2116) | (i2116 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors119;
                    modifier3 = modifier1110;
                    z7 = z1114;
                    i14 = i11115;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z5;
                    i14 = iM4323iconPositionFors8pcRp0;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            z5 = z3;
            if ((12582912 & i2) == 0) {
                if ((i3 & 128) == 0) {
                    iM4323iconPositionFors8pcRp0 = i;
                    if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                    }
                    i4 |= i18;
                } else {
                    iM4323iconPositionFors8pcRp0 = i;
                }
                i4 |= i18;
            } else {
                iM4323iconPositionFors8pcRp0 = i;
            }
            if ((100663296 & i2) == 0) {
                if ((i3 & 256) == 0) {
                    navigationItemColorsColors = navigationItemColors;
                    if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                        i17 = 67108864;
                    }
                    i4 |= i17;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i17 = GroupFlagsKt.HasAuxSlotFlag;
                i4 |= i17;
            } else {
                navigationItemColorsColors = navigationItemColors;
            }
            i11 = i3 & 512;
            if (i11 != 0) {
                if ((i2 & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i12 = 536870912;
                    } else {
                        i12 = 268435456;
                    }
                    i4 |= i12;
                }
                i13 = i4;
                if ((i4 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    Modifier modifier1111 = modifier2;
                    boolean z1115 = z5;
                    int i11116 = iM4323iconPositionFors8pcRp0;
                    NavigationItemColors navigationItemColors1110 = navigationItemColorsColors;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1539072909);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(227446500);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    Shape value111115 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    NavigationRailVerticalItemTokens navigationRailVerticalItemTokens118 = NavigationRailVerticalItemTokens.INSTANCE;
                    float fM4948getActiveIndicatorWidthD9Ej5fM118 = navigationRailVerticalItemTokens118.m4948getActiveIndicatorWidthD9Ej5fM();
                    TextStyle value111116 = TypographyKt.getValue(navigationRailVerticalItemTokens118.getLabelTextFont(), composerStartRestartGroup, 6);
                    NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens118 = NavigationRailHorizontalItemTokens.INSTANCE;
                    int i2117 = i16 << 3;
                    composer2 = composerStartRestartGroup;
                    NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value111115, fM4948getActiveIndicatorWidthD9Ej5fM118, value111116, TypographyKt.getValue(navigationRailHorizontalItemTokens118.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens118.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens118.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens118.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors1110, modifier1111, z1115, bm3Var4, i11116, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i2117) | (i2117 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors1110;
                    modifier3 = modifier1111;
                    z7 = z1115;
                    i14 = i11116;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z5;
                    i14 = iM4323iconPositionFors8pcRp0;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            i13 = i4;
            if ((i4 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i7 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i9 != 0) {
                        z5 = true;
                    }
                    if ((i3 & 128) != 0) {
                        i15 = i13 & (-29360129);
                        iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                    } else {
                        i15 = i13;
                    }
                    if ((i3 & 256) != 0) {
                        i15 &= -234881025;
                        navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i16 = i15;
                    if (i11 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i7 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i9 != 0) {
                        z5 = true;
                    }
                    if ((i3 & 128) != 0) {
                        i15 = i13 & (-29360129);
                        iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                    } else {
                        i15 = i13;
                    }
                    if ((i3 & 256) != 0) {
                        i15 &= -234881025;
                        navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i16 = i15;
                    if (i11 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                Modifier modifier1112 = modifier2;
                boolean z1116 = z5;
                int i11117 = iM4323iconPositionFors8pcRp0;
                NavigationItemColors navigationItemColors1111 = navigationItemColorsColors;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1539072909);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(227446500);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                Shape value111117 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                NavigationRailVerticalItemTokens navigationRailVerticalItemTokens119 = NavigationRailVerticalItemTokens.INSTANCE;
                float fM4948getActiveIndicatorWidthD9Ej5fM119 = navigationRailVerticalItemTokens119.m4948getActiveIndicatorWidthD9Ej5fM();
                TextStyle value111118 = TypographyKt.getValue(navigationRailVerticalItemTokens119.getLabelTextFont(), composerStartRestartGroup, 6);
                NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens119 = NavigationRailHorizontalItemTokens.INSTANCE;
                int i2118 = i16 << 3;
                composer2 = composerStartRestartGroup;
                NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value111117, fM4948getActiveIndicatorWidthD9Ej5fM119, value111118, TypographyKt.getValue(navigationRailHorizontalItemTokens119.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens119.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens119.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens119.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors1111, modifier1112, z1116, bm3Var4, i11117, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i2118) | (i2118 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource2 = mutableInteractionSource3;
                navigationItemColors2 = navigationItemColors1111;
                modifier3 = modifier1112;
                z7 = z1116;
                i14 = i11117;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z7 = z5;
                i14 = iM4323iconPositionFors8pcRp0;
                navigationItemColors2 = navigationItemColorsColors;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        modifier2 = modifier;
        i9 = i3 & 64;
        if (i9 != 0) {
            if ((1572864 & i2) == 0) {
                z5 = z3;
                if (composerStartRestartGroup.changed(z5)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i4 |= i10;
            }
            if ((12582912 & i2) == 0) {
                if ((i3 & 128) == 0) {
                    iM4323iconPositionFors8pcRp0 = i;
                    if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                    }
                    i4 |= i18;
                } else {
                    iM4323iconPositionFors8pcRp0 = i;
                }
                i4 |= i18;
            } else {
                iM4323iconPositionFors8pcRp0 = i;
            }
            if ((100663296 & i2) == 0) {
                if ((i3 & 256) == 0) {
                    navigationItemColorsColors = navigationItemColors;
                    if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                        i17 = 67108864;
                    }
                    i4 |= i17;
                } else {
                    navigationItemColorsColors = navigationItemColors;
                }
                i17 = GroupFlagsKt.HasAuxSlotFlag;
                i4 |= i17;
            } else {
                navigationItemColorsColors = navigationItemColors;
            }
            i11 = i3 & 512;
            if (i11 != 0) {
                if ((i2 & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i12 = 536870912;
                    } else {
                        i12 = 268435456;
                    }
                    i4 |= i12;
                }
                i13 = i4;
                if ((i4 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i7 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i9 != 0) {
                            z5 = true;
                        }
                        if ((i3 & 128) != 0) {
                            i15 = i13 & (-29360129);
                            iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                        } else {
                            i15 = i13;
                        }
                        if ((i3 & 256) != 0) {
                            i15 &= -234881025;
                            navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i16 = i15;
                        if (i11 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    Modifier modifier1113 = modifier2;
                    boolean z1117 = z5;
                    int i11118 = iM4323iconPositionFors8pcRp0;
                    NavigationItemColors navigationItemColors1112 = navigationItemColorsColors;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                    }
                    if (mutableInteractionSource3 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1539072909);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(227446500);
                        composerStartRestartGroup.endReplaceGroup();
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    Shape value111119 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                    NavigationRailVerticalItemTokens navigationRailVerticalItemTokens1110 = NavigationRailVerticalItemTokens.INSTANCE;
                    float fM4948getActiveIndicatorWidthD9Ej5fM1110 = navigationRailVerticalItemTokens1110.m4948getActiveIndicatorWidthD9Ej5fM();
                    TextStyle value1111110 = TypographyKt.getValue(navigationRailVerticalItemTokens1110.getLabelTextFont(), composerStartRestartGroup, 6);
                    NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens1110 = NavigationRailHorizontalItemTokens.INSTANCE;
                    int i2119 = i16 << 3;
                    composer2 = composerStartRestartGroup;
                    NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value111119, fM4948getActiveIndicatorWidthD9Ej5fM1110, value1111110, TypographyKt.getValue(navigationRailHorizontalItemTokens1110.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens1110.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens1110.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens1110.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors1112, modifier1113, z1117, bm3Var4, i11118, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i2119) | (i2119 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource2 = mutableInteractionSource3;
                    navigationItemColors2 = navigationItemColors1112;
                    modifier3 = modifier1113;
                    z7 = z1117;
                    i14 = i11118;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z7 = z5;
                    i14 = iM4323iconPositionFors8pcRp0;
                    navigationItemColors2 = navigationItemColorsColors;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            i13 = i4;
            if ((i4 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i7 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i9 != 0) {
                        z5 = true;
                    }
                    if ((i3 & 128) != 0) {
                        i15 = i13 & (-29360129);
                        iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                    } else {
                        i15 = i13;
                    }
                    if ((i3 & 256) != 0) {
                        i15 &= -234881025;
                        navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i16 = i15;
                    if (i11 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i7 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i9 != 0) {
                        z5 = true;
                    }
                    if ((i3 & 128) != 0) {
                        i15 = i13 & (-29360129);
                        iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                    } else {
                        i15 = i13;
                    }
                    if ((i3 & 256) != 0) {
                        i15 &= -234881025;
                        navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i16 = i15;
                    if (i11 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                Modifier modifier1114 = modifier2;
                boolean z1118 = z5;
                int i11119 = iM4323iconPositionFors8pcRp0;
                NavigationItemColors navigationItemColors1113 = navigationItemColorsColors;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1539072909);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(227446500);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                Shape value1111111 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                NavigationRailVerticalItemTokens navigationRailVerticalItemTokens1111 = NavigationRailVerticalItemTokens.INSTANCE;
                float fM4948getActiveIndicatorWidthD9Ej5fM1111 = navigationRailVerticalItemTokens1111.m4948getActiveIndicatorWidthD9Ej5fM();
                TextStyle value1111112 = TypographyKt.getValue(navigationRailVerticalItemTokens1111.getLabelTextFont(), composerStartRestartGroup, 6);
                NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens1111 = NavigationRailHorizontalItemTokens.INSTANCE;
                int i21110 = i16 << 3;
                composer2 = composerStartRestartGroup;
                NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value1111111, fM4948getActiveIndicatorWidthD9Ej5fM1111, value1111112, TypographyKt.getValue(navigationRailHorizontalItemTokens1111.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens1111.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens1111.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens1111.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors1113, modifier1114, z1118, bm3Var4, i11119, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i21110) | (i21110 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource2 = mutableInteractionSource3;
                navigationItemColors2 = navigationItemColors1113;
                modifier3 = modifier1114;
                z7 = z1118;
                i14 = i11119;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z7 = z5;
                i14 = iM4323iconPositionFors8pcRp0;
                navigationItemColors2 = navigationItemColorsColors;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 1572864;
        z5 = z3;
        if ((12582912 & i2) == 0) {
            if ((i3 & 128) == 0) {
                iM4323iconPositionFors8pcRp0 = i;
                if (composerStartRestartGroup.changed(iM4323iconPositionFors8pcRp0)) {
                }
                i4 |= i18;
            } else {
                iM4323iconPositionFors8pcRp0 = i;
            }
            i4 |= i18;
        } else {
            iM4323iconPositionFors8pcRp0 = i;
        }
        if ((100663296 & i2) == 0) {
            if ((i3 & 256) == 0) {
                navigationItemColorsColors = navigationItemColors;
                if (composerStartRestartGroup.changed(navigationItemColorsColors)) {
                    i17 = 67108864;
                }
                i4 |= i17;
            } else {
                navigationItemColorsColors = navigationItemColors;
            }
            i17 = GroupFlagsKt.HasAuxSlotFlag;
            i4 |= i17;
        } else {
            navigationItemColorsColors = navigationItemColors;
        }
        i11 = i3 & 512;
        if (i11 != 0) {
            if ((i2 & 805306368) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i12 = 536870912;
                } else {
                    i12 = 268435456;
                }
                i4 |= i12;
            }
            i13 = i4;
            if ((i4 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i7 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i9 != 0) {
                        z5 = true;
                    }
                    if ((i3 & 128) != 0) {
                        i15 = i13 & (-29360129);
                        iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                    } else {
                        i15 = i13;
                    }
                    if ((i3 & 256) != 0) {
                        i15 &= -234881025;
                        navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i16 = i15;
                    if (i11 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i7 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i9 != 0) {
                        z5 = true;
                    }
                    if ((i3 & 128) != 0) {
                        i15 = i13 & (-29360129);
                        iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                    } else {
                        i15 = i13;
                    }
                    if ((i3 & 256) != 0) {
                        i15 &= -234881025;
                        navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i16 = i15;
                    if (i11 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                Modifier modifier1115 = modifier2;
                boolean z1119 = z5;
                int i111110 = iM4323iconPositionFors8pcRp0;
                NavigationItemColors navigationItemColors1114 = navigationItemColorsColors;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
                }
                if (mutableInteractionSource3 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1539072909);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(227446500);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                Shape value1111113 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
                NavigationRailVerticalItemTokens navigationRailVerticalItemTokens1112 = NavigationRailVerticalItemTokens.INSTANCE;
                float fM4948getActiveIndicatorWidthD9Ej5fM1112 = navigationRailVerticalItemTokens1112.m4948getActiveIndicatorWidthD9Ej5fM();
                TextStyle value1111114 = TypographyKt.getValue(navigationRailVerticalItemTokens1112.getLabelTextFont(), composerStartRestartGroup, 6);
                NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens1112 = NavigationRailHorizontalItemTokens.INSTANCE;
                int i21111 = i16 << 3;
                composer2 = composerStartRestartGroup;
                NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value1111113, fM4948getActiveIndicatorWidthD9Ej5fM1112, value1111114, TypographyKt.getValue(navigationRailHorizontalItemTokens1112.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens1112.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens1112.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens1112.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors1114, modifier1115, z1119, bm3Var4, i111110, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i21111) | (i21111 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource2 = mutableInteractionSource3;
                navigationItemColors2 = navigationItemColors1114;
                modifier3 = modifier1115;
                z7 = z1119;
                i14 = i111110;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z7 = z5;
                i14 = iM4323iconPositionFors8pcRp0;
                navigationItemColors2 = navigationItemColorsColors;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 805306368;
        i13 = i4;
        if ((i4 & 306783379) != 306783378) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z6, i13 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i7 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i9 != 0) {
                    z5 = true;
                }
                if ((i3 & 128) != 0) {
                    i15 = i13 & (-29360129);
                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                } else {
                    i15 = i13;
                }
                if ((i3 & 256) != 0) {
                    i15 &= -234881025;
                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                i16 = i15;
                if (i11 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
            } else {
                if (i7 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i9 != 0) {
                    z5 = true;
                }
                if ((i3 & 128) != 0) {
                    i15 = i13 & (-29360129);
                    iM4323iconPositionFors8pcRp0 = WideNavigationRailItemDefaults.INSTANCE.m4323iconPositionFors8pcRp0(z2);
                } else {
                    i15 = i13;
                }
                if ((i3 & 256) != 0) {
                    i15 &= -234881025;
                    navigationItemColorsColors = WideNavigationRailItemDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                i16 = i15;
                if (i11 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
            }
            Modifier modifier1116 = modifier2;
            boolean z11110 = z5;
            int i111111 = iM4323iconPositionFors8pcRp0;
            NavigationItemColors navigationItemColors1115 = navigationItemColorsColors;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1894733304, i16, -1, "androidx.compose.material3.WideNavigationRailItem (WideNavigationRail.kt:688)");
            }
            if (mutableInteractionSource3 == null) {
                composerStartRestartGroup.startReplaceGroup(-1539072909);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue;
            } else {
                composerStartRestartGroup.startReplaceGroup(227446500);
                composerStartRestartGroup.endReplaceGroup();
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            Shape value1111115 = ShapesKt.getValue(NavigationRailBaselineItemTokens.INSTANCE.getActiveIndicatorShape(), composerStartRestartGroup, 6);
            NavigationRailVerticalItemTokens navigationRailVerticalItemTokens1113 = NavigationRailVerticalItemTokens.INSTANCE;
            float fM4948getActiveIndicatorWidthD9Ej5fM1113 = navigationRailVerticalItemTokens1113.m4948getActiveIndicatorWidthD9Ej5fM();
            TextStyle value1111116 = TypographyKt.getValue(navigationRailVerticalItemTokens1113.getLabelTextFont(), composerStartRestartGroup, 6);
            NavigationRailHorizontalItemTokens navigationRailHorizontalItemTokens1113 = NavigationRailHorizontalItemTokens.INSTANCE;
            int i21112 = i16 << 3;
            composer2 = composerStartRestartGroup;
            NavigationItemKt.m3684AnimatedNavigationItemDQd_Gtc(z4, ll3Var2, bm3Var3, value1111115, fM4948getActiveIndicatorWidthD9Ej5fM1113, value1111116, TypographyKt.getValue(navigationRailHorizontalItemTokens1113.getLabelTextFont(), composerStartRestartGroup, 6), ItemTopIconIndicatorHorizontalPadding, ItemTopIconIndicatorVerticalPadding, navigationRailVerticalItemTokens1113.m4949getIconLabelSpaceD9Ej5fM(), navigationRailHorizontalItemTokens1113.m4943getFullWidthLeadingSpaceD9Ej5fM(), ItemStartIconIndicatorVerticalPadding, WNRItemNoLabelIndicatorPadding, navigationRailHorizontalItemTokens1113.m4945getIconLabelSpaceD9Ej5fM(), ItemHorizontalPadding, navigationItemColors1115, modifier1116, z11110, bm3Var4, i111111, mutableInteractionSource4, composer2, (i16 & 14) | 918577152 | (i16 & 112) | (i16 & 896), ((i16 >> 9) & 458752) | 28086 | (3670016 & i21112) | (i21112 & 29360128) | ((i16 << 15) & 234881024) | ((i16 << 6) & 1879048192), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            mutableInteractionSource2 = mutableInteractionSource3;
            navigationItemColors2 = navigationItemColors1115;
            modifier3 = modifier1116;
            z7 = z11110;
            i14 = i111111;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            z7 = z5;
            i14 = iM4323iconPositionFors8pcRp0;
            navigationItemColors2 = navigationItemColorsColors;
            mutableInteractionSource2 = mutableInteractionSource;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sh9
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return WideNavigationRailKt.WideNavigationRailItem_pli_t6k$lambda$16(z, ll3Var, bm3Var, bm3Var2, z2, modifier3, z7, i14, navigationItemColors2, mutableInteractionSource2, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 WideNavigationRailItem_pli_t6k$lambda$16(boolean z, ll3 ll3Var, bm3 bm3Var, bm3 bm3Var2, boolean z2, Modifier modifier, boolean z3, int i, NavigationItemColors navigationItemColors, MutableInteractionSource mutableInteractionSource, int i2, int i3, Composer composer, int i4) {
        m4327WideNavigationRailItemplit6k(z, ll3Var, bm3Var, bm3Var2, z2, modifier, z3, i, navigationItemColors, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void WideNavigationRailLayout(final Modifier modifier, final boolean z, final boolean z2, final WideNavigationRailColors wideNavigationRailColors, final Shape shape, final bm3<? super Composer, ? super Integer, j59> bm3Var, final WindowInsets windowInsets, final Arrangement.Vertical vertical, final bm3<? super Composer, ? super Integer, j59> bm3Var2, Composer composer, final int i) {
        int i2;
        WideNavigationRailColors wideNavigationRailColors2;
        float fM9056unboximpl;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1004308036);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(z2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            wideNavigationRailColors2 = wideNavigationRailColors;
            i2 |= composerStartRestartGroup.changed(wideNavigationRailColors2) ? 2048 : 1024;
        } else {
            wideNavigationRailColors2 = wideNavigationRailColors;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changed(shape) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(windowInsets) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i2 |= composerStartRestartGroup.changed(vertical) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if (composerStartRestartGroup.shouldExecute((38347923 & i2) != 38347922, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1004308036, i2, -1, "androidx.compose.material3.WideNavigationRailLayout (WideNavigationRail.kt:218)");
            }
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MutableIntState mutableIntState = (MutableIntState) objRememberedValue;
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = SnapshotIntStateKt.mutableIntStateOf(0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            MutableIntState mutableIntState2 = (MutableIntState) objRememberedValue2;
            if (Dp.m9047equalsimpl0(((Dp) composerStartRestartGroup.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), Dp.Companion.m9062getUnspecifiedD9Ej5fM())) {
                composerStartRestartGroup.startReplaceGroup(-597966102);
                composerStartRestartGroup.endReplaceGroup();
                fM9056unboximpl = Dp.m9042constructorimpl(0.0f);
            } else {
                composerStartRestartGroup.startReplaceGroup(-597931134);
                fM9056unboximpl = ((Dp) composerStartRestartGroup.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl();
                composerStartRestartGroup.endReplaceGroup();
            }
            float f = fM9056unboximpl;
            FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultSpatial, composerStartRestartGroup, 6);
            FiniteAnimationSpec finiteAnimationSpecValue2 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6);
            State<Dp> stateM1188animateDpAsStateAjpBEmI = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(!z2 ? CollapsedRailWidth : ExpandedRailMinWidth, !z ? finiteAnimationSpecValue : finiteAnimationSpecValue2, null, null, composerStartRestartGroup, 0, 12);
            State<Dp> stateM1188animateDpAsStateAjpBEmI2 = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(!z2 ? CollapsedRailWidth : ExpandedRailMaxWidth, !z ? finiteAnimationSpecValue : finiteAnimationSpecValue2, null, null, composerStartRestartGroup, 0, 12);
            State<Dp> stateM1188animateDpAsStateAjpBEmI3 = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(!z2 ? NavigationRailCollapsedTokens.INSTANCE.m4934getItemVerticalSpaceD9Ej5fM() : Dp.m9042constructorimpl(0.0f), finiteAnimationSpecValue, null, null, composerStartRestartGroup, 0, 12);
            int i3 = i2;
            SurfaceKt.m3942SurfaceT9BRK9s(modifier, shape, !z ? wideNavigationRailColors2.m4316getContainerColor0d7_KjU() : wideNavigationRailColors2.m4318getModalContainerColor0d7_KjU(), !z ? wideNavigationRailColors2.m4317getContentColor0d7_KjU() : wideNavigationRailColors2.m4319getModalContentColor0d7_KjU(), 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1489314345, true, new AnonymousClass1(windowInsets, bm3Var, z2, stateM1188animateDpAsStateAjpBEmI, f, AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(!z2 ? TopIconItemMinHeight : f, finiteAnimationSpecValue, null, null, composerStartRestartGroup, 0, 12), stateM1188animateDpAsStateAjpBEmI2, mutableIntState2, mutableIntState, vertical, stateM1188animateDpAsStateAjpBEmI3, bm3Var2), composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | 12582912 | ((i3 >> 9) & 112), 112);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zh9
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return WideNavigationRailKt.WideNavigationRailLayout$lambda$12(modifier, z, z2, wideNavigationRailColors, shape, bm3Var, windowInsets, vertical, bm3Var2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float WideNavigationRailLayout$lambda$10(State<Dp> state) {
        return state.getValue().m9056unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float WideNavigationRailLayout$lambda$11(State<Dp> state) {
        return state.getValue().m9056unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 WideNavigationRailLayout$lambda$12(Modifier modifier, boolean z, boolean z2, WideNavigationRailColors wideNavigationRailColors, Shape shape, bm3 bm3Var, WindowInsets windowInsets, Arrangement.Vertical vertical, bm3 bm3Var2, int i, Composer composer, int i2) {
        WideNavigationRailLayout(modifier, z, z2, wideNavigationRailColors, shape, bm3Var, windowInsets, vertical, bm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int WideNavigationRailLayout$lambda$3(MutableIntState mutableIntState) {
        return mutableIntState.getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void WideNavigationRailLayout$lambda$4(MutableIntState mutableIntState, int i) {
        mutableIntState.setIntValue(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int WideNavigationRailLayout$lambda$6(MutableIntState mutableIntState) {
        return mutableIntState.getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void WideNavigationRailLayout$lambda$7(MutableIntState mutableIntState, int i) {
        mutableIntState.setIntValue(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float WideNavigationRailLayout$lambda$8(State<Dp> state) {
        return state.getValue().m9056unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float WideNavigationRailLayout$lambda$9(State<Dp> state) {
        return state.getValue().m9056unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calculatePredictiveBackScaleX(GraphicsLayerScope graphicsLayerScope, float f, boolean z) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (graphicsLayerScope.mo6426getSizeNHjbRc() >> 32));
        if (Float.isNaN(fIntBitsToFloat) || fIntBitsToFloat == 0.0f) {
            return 1.0f;
        }
        return ((MathHelpersKt.lerp(0.0f, Math.min(graphicsLayerScope.mo1434toPx0680j_4(PredictiveBackMaxScaleXDistance), fIntBitsToFloat), f) * (z ? 1.0f : -1.0f)) / fIntBitsToFloat) + 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calculatePredictiveBackScaleY(GraphicsLayerScope graphicsLayerScope, float f) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (graphicsLayerScope.mo6426getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        if (Float.isNaN(fIntBitsToFloat) || fIntBitsToFloat == 0.0f) {
            return 1.0f;
        }
        return 1.0f - (MathHelpersKt.lerp(0.0f, Math.min(graphicsLayerScope.mo1434toPx0680j_4(PredictiveBackMaxScaleYDistance), fIntBitsToFloat), f) / fIntBitsToFloat);
    }

    public static final ProvidableCompositionLocal<ModalWideNavigationRailOverride> getLocalModalWideNavigationRailOverride() {
        return LocalModalWideNavigationRailOverride;
    }

    public static final ProvidableCompositionLocal<WideNavigationRailOverride> getLocalWideNavigationRailOverride() {
        return LocalWideNavigationRailOverride;
    }

    public static final float getWNRItemNoLabelIndicatorPadding() {
        return WNRItemNoLabelIndicatorPadding;
    }

    /* JADX INFO: renamed from: androidx.compose.material3.WideNavigationRailKt$WideNavigationRailLayout$1, reason: invalid class name */
    public static final class AnonymousClass1 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ MutableIntState $actualMaxExpandedWidth$delegate;
        final /* synthetic */ Arrangement.Vertical $arrangement;
        final /* synthetic */ bm3<Composer, Integer, j59> $content;
        final /* synthetic */ MutableIntState $currentWidth$delegate;
        final /* synthetic */ boolean $expanded;
        final /* synthetic */ bm3<Composer, Integer, j59> $header;
        final /* synthetic */ State<Dp> $itemMinHeight$delegate;
        final /* synthetic */ State<Dp> $itemVerticalSpacedBy$delegate;
        final /* synthetic */ State<Dp> $minWidth$delegate;
        final /* synthetic */ float $minimumA11ySize;
        final /* synthetic */ State<Dp> $widthFullRange$delegate;
        final /* synthetic */ WindowInsets $windowInsets;

        /* JADX INFO: renamed from: androidx.compose.material3.WideNavigationRailKt$WideNavigationRailLayout$1$2, reason: invalid class name */
        public static final class AnonymousClass2 implements MeasurePolicy {
            final /* synthetic */ MutableIntState $actualMaxExpandedWidth$delegate;
            final /* synthetic */ Arrangement.Vertical $arrangement;
            final /* synthetic */ MutableIntState $currentWidth$delegate;
            final /* synthetic */ boolean $expanded;
            final /* synthetic */ bm3<Composer, Integer, j59> $header;
            final /* synthetic */ State<Dp> $itemMinHeight$delegate;
            final /* synthetic */ State<Dp> $itemVerticalSpacedBy$delegate;
            final /* synthetic */ State<Dp> $minWidth$delegate;
            final /* synthetic */ float $minimumA11ySize;
            final /* synthetic */ State<Dp> $widthFullRange$delegate;

            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass2(bm3<? super Composer, ? super Integer, j59> bm3Var, boolean z, State<Dp> state, float f, State<Dp> state2, State<Dp> state3, MutableIntState mutableIntState, MutableIntState mutableIntState2, Arrangement.Vertical vertical, State<Dp> state4) {
                this.$header = bm3Var;
                this.$expanded = z;
                this.$minWidth$delegate = state;
                this.$minimumA11ySize = f;
                this.$itemMinHeight$delegate = state2;
                this.$widthFullRange$delegate = state3;
                this.$actualMaxExpandedWidth$delegate = mutableIntState;
                this.$currentWidth$delegate = mutableIntState2;
                this.$arrangement = vertical;
                this.$itemVerticalSpacedBy$delegate = state4;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final j59 measure_3p2s80s$lambda$0(Placeable.PlacementScope placementScope) {
                return j59.a;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Multi-variable type inference failed */
            public static final j59 measure_3p2s80s$lambda$6(int i, MeasureScope measureScope, r07 r07Var, List list, Arrangement.Vertical vertical, State state, Placeable.PlacementScope placementScope) {
                int iMo1428roundToPx0680j_4;
                int iMo1428roundToPx0680j_5 = i - measureScope.mo1428roundToPx0680j_4(WideNavigationRailKt.WNRVerticalPadding);
                T t = r07Var.b;
                if (t == 0 || ((Placeable) t).getHeight() <= 0) {
                    iMo1428roundToPx0680j_4 = 0;
                } else {
                    Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) r07Var.b, 0, 0, 0.0f, 4, null);
                    iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(WideNavigationRailKt.WNRHeaderPadding) + ((Placeable) r07Var.b).getHeight();
                }
                if (list != null) {
                    if (!aa4.e(vertical, Arrangement.INSTANCE.getCenter())) {
                        iMo1428roundToPx0680j_5 -= iMo1428roundToPx0680j_4;
                    }
                    int[] iArr = new int[list.size()];
                    List list2 = list;
                    int size = list2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        iArr[i2] = ((Placeable) list.get(i2)).getHeight();
                        if (i2 < list.size() - 1) {
                            iArr[i2] = measureScope.mo1428roundToPx0680j_4(WideNavigationRailKt.WideNavigationRailLayout$lambda$10(state)) + iArr[i2];
                        }
                    }
                    int[] iArr2 = new int[list.size()];
                    vertical.arrange(measureScope, iMo1428roundToPx0680j_5, iArr, iArr2);
                    if (vertical.equals(Arrangement.INSTANCE.getCenter())) {
                        iMo1428roundToPx0680j_4 = 0;
                    }
                    int size2 = list2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) list.get(i3), 0, iArr2[i3] + iMo1428roundToPx0680j_4, 0.0f, 4, null);
                    }
                }
                return j59.a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r9v8, types: [T, androidx.compose.ui.layout.Placeable] */
            @Override // androidx.compose.ui.layout.MeasurePolicy
            /* JADX INFO: renamed from: measure-3p2s80s */
            public MeasureResult mo1045measure3p2s80s(final MeasureScope measureScope, List<? extends Measurable> list, long j) {
                int iM8997getMinWidthimpl;
                int height;
                int iMo1428roundToPx0680j_4;
                List<? extends Measurable> listSubList = list;
                final int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
                int size = listSubList.size();
                int iM8997getMinWidthimpl2 = Constraints.m8997getMinWidthimpl(j);
                if (Constraints.m8997getMinWidthimpl(j) == 0) {
                    iM8997getMinWidthimpl2 = measureScope.mo1428roundToPx0680j_4(WideNavigationRailKt.ExpandedRailMinWidth);
                    int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
                    if (iM8997getMinWidthimpl2 > iM8995getMaxWidthimpl) {
                        iM8997getMinWidthimpl2 = iM8995getMaxWidthimpl;
                    }
                    iM8997getMinWidthimpl = measureScope.mo1428roundToPx0680j_4(WideNavigationRailKt.WideNavigationRailLayout$lambda$8(this.$minWidth$delegate));
                    int iM8995getMaxWidthimpl2 = Constraints.m8995getMaxWidthimpl(j);
                    if (iM8997getMinWidthimpl > iM8995getMaxWidthimpl2) {
                        iM8997getMinWidthimpl = iM8995getMaxWidthimpl2;
                    }
                } else {
                    iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
                }
                if (size < 1) {
                    return MeasureScope.layout$default(measureScope, iM8997getMinWidthimpl, iM8994getMaxHeightimpl, null, new p12(5), 4, null);
                }
                long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
                final r07 r07Var = new r07();
                if (this.$header != null) {
                    int size2 = listSubList.size();
                    int i = 0;
                    while (true) {
                        if (i >= size2) {
                            throw hm.d("Collection contains no element matching the predicate.");
                        }
                        Measurable measurable = listSubList.get(i);
                        if (aa4.e(LayoutIdKt.getLayoutId(measurable), WideNavigationRailKt.HeaderLayoutIdTag)) {
                            r07Var.b = measurable.mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
                            if (size > 1) {
                                listSubList = listSubList.subList(1, size);
                            }
                            size--;
                            height = ((Placeable) r07Var.b).getHeight();
                            break;
                        }
                        i++;
                    }
                } else {
                    height = 0;
                }
                final ArrayList arrayList = size > 0 ? new ArrayList() : null;
                int iM8995getMaxWidthimpl3 = this.$expanded ? Constraints.m8995getMaxWidthimpl(jM8985copyZbe2FdA$default) : iM8997getMinWidthimpl;
                if (arrayList != null) {
                    float f = this.$minimumA11ySize;
                    boolean z = this.$expanded;
                    State<Dp> state = this.$itemMinHeight$delegate;
                    int i2 = height;
                    ArrayList arrayList2 = new ArrayList(listSubList.size());
                    int size3 = listSubList.size();
                    int i3 = 0;
                    iMo1428roundToPx0680j_4 = 0;
                    int height2 = i2;
                    while (i3 < size3) {
                        List<? extends Measurable> list2 = listSubList;
                        int i4 = size3;
                        int i5 = i3;
                        boolean z2 = z;
                        float f2 = f;
                        State<Dp> state2 = state;
                        Placeable placeableMo7702measureBRTryo0 = listSubList.get(i3).mo7702measureBRTryo0(ConstraintsKt.m9010constrainN9IONVI(ConstraintsKt.m9015offsetNN6EwU$default(jM8985copyZbe2FdA$default, 0, -height2, 1, null), Constraints.Companion.m9004fitPrioritizingWidthZbe2FdA(measureScope.mo1428roundToPx0680j_4(f), iM8995getMaxWidthimpl3, measureScope.mo1428roundToPx0680j_4(WideNavigationRailKt.WideNavigationRailLayout$lambda$11(state)), Constraints.m8994getMaxHeightimpl(jM8985copyZbe2FdA$default))));
                        int measuredWidth = placeableMo7702measureBRTryo0.getMeasuredWidth();
                        if (z2 && iMo1428roundToPx0680j_4 < measuredWidth) {
                            iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(WideNavigationRailKt.ItemHorizontalPadding) + measuredWidth;
                        }
                        height2 = placeableMo7702measureBRTryo0.getHeight();
                        arrayList2.add(Boolean.valueOf(arrayList.add(placeableMo7702measureBRTryo0)));
                        i3 = i5 + 1;
                        listSubList = list2;
                        z = z2;
                        f = f2;
                        state = state2;
                        size3 = i4;
                    }
                } else {
                    iMo1428roundToPx0680j_4 = 0;
                }
                if (this.$expanded) {
                    Placeable placeable = (Placeable) r07Var.b;
                    int iMax = Math.max(iMo1428roundToPx0680j_4, placeable != null ? placeable.getWidth() : 0);
                    if (iMax > iM8997getMinWidthimpl && iMax > iM8997getMinWidthimpl2) {
                        int iMax2 = Math.max(iMax, iM8997getMinWidthimpl2);
                        int iM8995getMaxWidthimpl4 = Constraints.m8995getMaxWidthimpl(j);
                        if (iMax2 > iM8995getMaxWidthimpl4) {
                            iMax2 = iM8995getMaxWidthimpl4;
                        }
                        int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(WideNavigationRailKt.WideNavigationRailLayout$lambda$9(this.$widthFullRange$delegate));
                        iM8997getMinWidthimpl = iMo1428roundToPx0680j_5 > iMax2 ? iMax2 : iMo1428roundToPx0680j_5;
                        WideNavigationRailKt.WideNavigationRailLayout$lambda$7(this.$actualMaxExpandedWidth$delegate, iM8997getMinWidthimpl);
                    }
                } else if (WideNavigationRailKt.WideNavigationRailLayout$lambda$6(this.$actualMaxExpandedWidth$delegate) > 0) {
                    int iMo1428roundToPx0680j_6 = measureScope.mo1428roundToPx0680j_4(WideNavigationRailKt.WideNavigationRailLayout$lambda$9(this.$widthFullRange$delegate));
                    int iWideNavigationRailLayout$lambda$3 = WideNavigationRailKt.WideNavigationRailLayout$lambda$3(this.$currentWidth$delegate);
                    if (iWideNavigationRailLayout$lambda$3 < iM8997getMinWidthimpl) {
                        iWideNavigationRailLayout$lambda$3 = iM8997getMinWidthimpl;
                    }
                    iM8997getMinWidthimpl = kx6.f(iMo1428roundToPx0680j_6, iM8997getMinWidthimpl, iWideNavigationRailLayout$lambda$3);
                }
                int i6 = iM8997getMinWidthimpl;
                WideNavigationRailKt.WideNavigationRailLayout$lambda$4(this.$currentWidth$delegate, i6);
                final Arrangement.Vertical vertical = this.$arrangement;
                final State<Dp> state3 = this.$itemVerticalSpacedBy$delegate;
                return MeasureScope.layout$default(measureScope, i6, iM8994getMaxHeightimpl, null, new nl3() { // from class: ci9
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return WideNavigationRailKt.AnonymousClass1.AnonymousClass2.measure_3p2s80s$lambda$6(iM8994getMaxHeightimpl, measureScope, r07Var, arrayList, vertical, state3, (Placeable.PlacementScope) obj);
                    }
                }, 4, null);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(WindowInsets windowInsets, bm3<? super Composer, ? super Integer, j59> bm3Var, boolean z, State<Dp> state, float f, State<Dp> state2, State<Dp> state3, MutableIntState mutableIntState, MutableIntState mutableIntState2, Arrangement.Vertical vertical, State<Dp> state4, bm3<? super Composer, ? super Integer, j59> bm3Var2) {
            this.$windowInsets = windowInsets;
            this.$header = bm3Var;
            this.$expanded = z;
            this.$minWidth$delegate = state;
            this.$minimumA11ySize = f;
            this.$itemMinHeight$delegate = state2;
            this.$widthFullRange$delegate = state3;
            this.$actualMaxExpandedWidth$delegate = mutableIntState;
            this.$currentWidth$delegate = mutableIntState2;
            this.$arrangement = vertical;
            this.$itemVerticalSpacedBy$delegate = state4;
            this.$content = bm3Var2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$1$lambda$0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver, true);
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1489314345, i, -1, "androidx.compose.material3.WideNavigationRailLayout.<anonymous> (WideNavigationRail.kt:258)");
            }
            Modifier.Companion companion = Modifier.Companion;
            Modifier modifierSelectableGroup = SelectableGroupKt.selectableGroup(PaddingKt.m2037paddingqDBjuR0$default(SizeKt.m2106widthInVpY3zN4$default(WindowInsetsPaddingKt.windowInsetsPadding(SizeKt.fillMaxHeight$default(companion, 0.0f, 1, null), this.$windowInsets), 0.0f, WideNavigationRailKt.ExpandedRailMaxWidth, 1, null), 0.0f, WideNavigationRailKt.WNRVerticalPadding, 0.0f, 0.0f, 13, null));
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new p5();
                composer.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifierSelectableGroup, false, (nl3) objRememberedValue, 1, null);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$header, this.$expanded, this.$minWidth$delegate, this.$minimumA11ySize, this.$itemMinHeight$delegate, this.$widthFullRange$delegate, this.$actualMaxExpandedWidth$delegate, this.$currentWidth$delegate, this.$arrangement, this.$itemVerticalSpacedBy$delegate);
            bm3<Composer, Integer, j59> bm3Var = this.$header;
            bm3<Composer, Integer, j59> bm3Var2 = this.$content;
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierSemantics$default);
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion2.getConstructor();
            if (composer.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                composer.createNode(constructor);
            } else {
                composer.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
            Updater.m5363setimpl(composerM5355constructorimpl, anonymousClass2, companion2.getSetMeasurePolicy());
            Updater.m5363setimpl(composerM5355constructorimpl, currentCompositionLocalMap, companion2.getSetResolvedCompositionLocals());
            bm3<ComposeUiNode, Integer, j59> setCompositeKeyHash = companion2.getSetCompositeKeyHash();
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(setCompositeKeyHash, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
            if (bm3Var != null) {
                composer.startReplaceGroup(1714892004);
                Modifier modifierLayoutId = LayoutIdKt.layoutId(companion, WideNavigationRailKt.HeaderLayoutIdTag);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer, modifierLayoutId);
                ll3<ComposeUiNode> constructor2 = companion2.getConstructor();
                if (composer.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor2);
                } else {
                    composer.useNode();
                }
                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer);
                bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    dc.b(bm3VarB, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                }
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion2.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                bm3Var.invoke(composer, 0);
                composer.endNode();
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(1714982338);
                composer.endReplaceGroup();
            }
            bm3Var2.invoke(composer, 0);
            composer.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }
}
