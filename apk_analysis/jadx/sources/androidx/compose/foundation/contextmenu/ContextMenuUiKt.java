package androidx.compose.foundation.contextmenu;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextAutoSize;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.compose.ui.window.PopupProperties;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.gz1;
import defpackage.hm;
import defpackage.j59;
import defpackage.jg;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class ContextMenuUiKt {
    private static final ContextMenuColors DefaultContextMenuColors;
    private static final PopupProperties DefaultPopupProperties = new PopupProperties(true, false, false, false, false, 30, (jh2) null);
    private static final float DisabledAlpha = 0.38f;

    static {
        Color.Companion companion = Color.Companion;
        DefaultContextMenuColors = new ContextMenuColors(companion.m6269getWhite0d7_KjU(), companion.m6258getBlack0d7_KjU(), companion.m6258getBlack0d7_KjU(), Color.m6231copywmQWz5c$default(companion.m6258getBlack0d7_KjU(), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), Color.m6231copywmQWz5c$default(companion.m6258getBlack0d7_KjU(), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), null);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0040  */
    /* JADX WARN: Code duplicated, block: B:25:0x0046  */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:30:0x0054  */
    /* JADX WARN: Code duplicated, block: B:31:0x0056  */
    /* JADX WARN: Code duplicated, block: B:34:0x005f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x0061  */
    /* JADX WARN: Code duplicated, block: B:36:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006c  */
    /* JADX WARN: Code duplicated, block: B:42:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:46:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:49:0x0128  */
    /* JADX WARN: Code duplicated, block: B:50:0x012c  */
    /* JADX WARN: Code duplicated, block: B:53:0x0136  */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    public static final void ContextMenuColumn(ContextMenuColors contextMenuColors, Modifier modifier, final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2) {
        ContextMenuColors contextMenuColors2;
        int i3;
        Modifier modifier2;
        boolean z;
        Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        ll3<ComposeUiNode> constructor;
        int i4;
        Composer composerStartRestartGroup = composer.startRestartGroup(-527864079);
        if ((i & 6) == 0) {
            contextMenuColors2 = contextMenuColors;
            i3 = (composerStartRestartGroup.changed(contextMenuColors2) ? 4 : 2) | i;
        } else {
            contextMenuColors2 = contextMenuColors;
            i3 = i;
        }
        int i5 = i2 & 2;
        if (i5 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i4 = 256;
                } else {
                    i4 = 128;
                }
                i3 |= i4;
            }
            if ((i3 & 147) != 146) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i5 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-527864079, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuColumn (ContextMenuUi.kt:153)");
                }
                ContextMenuSpec contextMenuSpec = ContextMenuSpec.INSTANCE;
                Modifier modifierVerticalScroll$default = ScrollKt.verticalScroll$default(PaddingKt.m2035paddingVpY3zN4$default(IntrinsicKt.width(BackgroundKt.m1289backgroundbw27NRU$default(ShadowKt.m5830shadows4CzXII$default(modifier3, contextMenuSpec.m1415getMenuContainerElevationD9Ej5fM(), RoundedCornerShapeKt.m2350RoundedCornerShape0680j_4(contextMenuSpec.m1405getCornerRadiusD9Ej5fM()), false, 0L, 0L, 28, null), contextMenuColors2.m1397getBackgroundColor0d7_KjU(), null, 2, null), IntrinsicSize.Max), 0.0f, contextMenuSpec.m1416getVerticalPaddingD9Ej5fM(), 1, null), ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1), false, null, false, 14, null);
                int i6 = (i3 << 3) & 7168;
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
                int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierVerticalScroll$default);
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
                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
                dm3Var.invoke(ColumnScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i6 >> 6) & 112) | 6));
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final ContextMenuColors contextMenuColors3 = contextMenuColors2;
                final Modifier modifier4 = modifier3;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zy1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ContextMenuUiKt.ContextMenuColumn$lambda$0(contextMenuColors3, modifier4, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i4 = 256;
            } else {
                i4 = 128;
            }
            i3 |= i4;
        }
        if ((i3 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            if (i5 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-527864079, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuColumn (ContextMenuUi.kt:153)");
            }
            ContextMenuSpec contextMenuSpec2 = ContextMenuSpec.INSTANCE;
            Modifier modifierVerticalScroll$default2 = ScrollKt.verticalScroll$default(PaddingKt.m2035paddingVpY3zN4$default(IntrinsicKt.width(BackgroundKt.m1289backgroundbw27NRU$default(ShadowKt.m5830shadows4CzXII$default(modifier3, contextMenuSpec2.m1415getMenuContainerElevationD9Ej5fM(), RoundedCornerShapeKt.m2350RoundedCornerShape0680j_4(contextMenuSpec2.m1405getCornerRadiusD9Ej5fM()), false, 0L, 0L, 28, null), contextMenuColors2.m1397getBackgroundColor0d7_KjU(), null, 2, null), IntrinsicSize.Max), 0.0f, contextMenuSpec2.m1416getVerticalPaddingD9Ej5fM(), 1, null), ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1), false, null, false, 14, null);
            int i7 = (i3 << 3) & 7168;
            MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierVerticalScroll$default2);
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
            Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion2, composerM5355constructorimpl2, measurePolicyColumnMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, (bm3<? super T, ? super Modifier, j59>) hm.b(companion2, composerM5355constructorimpl2, Integer.valueOf(iHashCode2), composerM5355constructorimpl2));
            dm3Var.invoke(ColumnScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i7 >> 6) & 112) | 6));
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final ContextMenuColors contextMenuColors4 = contextMenuColors2;
            final Modifier modifier5 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zy1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ContextMenuUiKt.ContextMenuColumn$lambda$0(contextMenuColors4, modifier5, dm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenuColumn$lambda$0(ContextMenuColors contextMenuColors, Modifier modifier, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        ContextMenuColumn(contextMenuColors, modifier, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static final void ContextMenuColumnBuilder(Modifier modifier, ContextMenuColors contextMenuColors, final nl3<? super ContextMenuScope, j59> nl3Var, Composer composer, final int i, final int i2) {
        int i3;
        final Modifier modifier2;
        final ContextMenuColors contextMenuColors2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-625529233);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i5 = i2 & 2;
        if (i5 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(contextMenuColors) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(nl3Var) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 147) != 146, i3 & 1)) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            Modifier modifier3 = modifier;
            if (i5 != 0) {
                contextMenuColors = DefaultContextMenuColors;
            }
            final ContextMenuColors contextMenuColors3 = contextMenuColors;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-625529233, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuColumnBuilder (ContextMenuUi.kt:132)");
            }
            ContextMenuColumn(contextMenuColors3, modifier3, ComposableLambdaKt.rememberComposableLambda(-250345048, true, new dm3() { // from class: az1
                @Override // defpackage.dm3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return ContextMenuUiKt.ContextMenuColumnBuilder$lambda$0(nl3Var, contextMenuColors3, (ColumnScope) obj, (Composer) obj2, iIntValue);
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i3 >> 3) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i3 << 3) & 112), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            contextMenuColors2 = contextMenuColors3;
            modifier2 = modifier3;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier2 = modifier;
            contextMenuColors2 = contextMenuColors;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bz1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ContextMenuUiKt.ContextMenuColumnBuilder$lambda$1(modifier2, contextMenuColors2, nl3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenuColumnBuilder$lambda$0(nl3 nl3Var, ContextMenuColors contextMenuColors, ColumnScope columnScope, Composer composer, int i) {
        if (composer.shouldExecute((i & 17) != 16, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-250345048, i, -1, "androidx.compose.foundation.contextmenu.ContextMenuColumnBuilder.<anonymous> (ContextMenuUi.kt:134)");
            }
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new ContextMenuScope(ComposableSingletons$ContextMenuUiKt.INSTANCE.m1396getLambda$1571120048$foundation());
                composer.updateRememberedValue(objRememberedValue);
            }
            ContextMenuScope contextMenuScope = (ContextMenuScope) objRememberedValue;
            contextMenuScope.clear$foundation();
            nl3Var.invoke(contextMenuScope);
            contextMenuScope.Content$foundation(contextMenuColors, composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenuColumnBuilder$lambda$1(Modifier modifier, ContextMenuColors contextMenuColors, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        ContextMenuColumnBuilder(modifier, contextMenuColors, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:101:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:104:0x020f  */
    /* JADX WARN: Code duplicated, block: B:105:0x0214  */
    /* JADX WARN: Code duplicated, block: B:108:0x0249  */
    /* JADX WARN: Code duplicated, block: B:110:0x024f  */
    /* JADX WARN: Code duplicated, block: B:113:0x025c  */
    /* JADX WARN: Code duplicated, block: B:115:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x0083  */
    /* JADX WARN: Code duplicated, block: B:50:0x0089  */
    /* JADX WARN: Code duplicated, block: B:51:0x008b  */
    /* JADX WARN: Code duplicated, block: B:55:0x009a  */
    /* JADX WARN: Code duplicated, block: B:56:0x009c  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:61:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:83:0x0154  */
    /* JADX WARN: Code duplicated, block: B:86:0x0160  */
    /* JADX WARN: Code duplicated, block: B:87:0x0164  */
    /* JADX WARN: Code duplicated, block: B:90:0x017d  */
    /* JADX WARN: Code duplicated, block: B:91:0x0188  */
    /* JADX WARN: Code duplicated, block: B:93:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:96:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:97:0x01da  */
    public static final void ContextMenuItem(final String str, final boolean z, final ContextMenuColors contextMenuColors, Modifier modifier, dm3<? super Color, ? super Composer, ? super Integer, j59> dm3Var, final ll3<j59> ll3Var, Composer composer, final int i, final int i2) {
        String str2;
        int i3;
        Modifier modifier2;
        int i4;
        dm3<? super Color, ? super Composer, ? super Integer, j59> dm3Var2;
        int i5;
        int i6;
        boolean z2;
        Composer composer2;
        final Modifier modifier3;
        final dm3<? super Color, ? super Composer, ? super Integer, j59> dm3Var3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        ContextMenuSpec contextMenuSpec;
        boolean z3;
        boolean z4;
        boolean z5;
        Object objRememberedValue;
        ComposeUiNode.Companion companion;
        ll3<ComposeUiNode> constructor;
        ll3<ComposeUiNode> constructor2;
        long jM1398getDisabledIconColor0d7_KjU;
        long jM1399getDisabledTextColor0d7_KjU;
        int i7;
        Composer composerStartRestartGroup = composer.startRestartGroup(-2001167027);
        if ((i & 6) == 0) {
            str2 = str;
            i3 = (composerStartRestartGroup.changed(str2) ? 4 : 2) | i;
        } else {
            str2 = str;
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(contextMenuColors) ? 256 : 128;
        }
        int i8 = i2 & 8;
        if (i8 == 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 2048 : 1024;
            }
            i4 = i2 & 16;
            if (i4 != 0) {
                if ((i & 24576) == 0) {
                    dm3Var2 = dm3Var;
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i5 = 16384;
                    } else {
                        i5 = 8192;
                    }
                    i3 |= i5;
                }
                if ((196608 & i) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                i6 = i3;
                if ((74899 & i6) != 74898) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i6 & 1)) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        dm3Var2 = null;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-2001167027, i6, -1, "androidx.compose.foundation.contextmenu.ContextMenuItem (ContextMenuUi.kt:191)");
                    }
                    contextMenuSpec = ContextMenuSpec.INSTANCE;
                    Alignment.Vertical labelVerticalTextAlignment = contextMenuSpec.getLabelVerticalTextAlignment();
                    Arrangement.HorizontalOrVertical horizontalOrVerticalM1740spacedBy0680j_4 = Arrangement.INSTANCE.m1740spacedBy0680j_4(contextMenuSpec.m1409getHorizontalPaddingD9Ej5fM());
                    if ((i6 & 112) == 32) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((458752 & i6) == 131072) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    z5 = z3 | z4;
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z5 || objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new ll3() { // from class: dz1
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ContextMenuUiKt.ContextMenuItem$lambda$0$0(z, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifier5 = modifier4;
                    Modifier modifierM2035paddingVpY3zN4$default = PaddingKt.m2035paddingVpY3zN4$default(SizeKt.m2102sizeInqDBjuR0(SizeKt.fillMaxWidth$default(ClickableKt.m1324clickableoSLSa3U$default(modifier5, z, str2, null, null, (ll3) objRememberedValue, 12, null), 0.0f, 1, null), contextMenuSpec.m1404getContainerWidthMinD9Ej5fM(), contextMenuSpec.m1414getListItemHeightD9Ej5fM(), contextMenuSpec.m1403getContainerWidthMaxD9Ej5fM(), contextMenuSpec.m1414getListItemHeightD9Ej5fM()), contextMenuSpec.m1409getHorizontalPaddingD9Ej5fM(), 0.0f, 2, null);
                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalOrVerticalM1740spacedBy0680j_4, labelVerticalTextAlignment, composerStartRestartGroup, 54);
                    int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default);
                    companion = ComposeUiNode.Companion;
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
                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                    if (dm3Var2 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1597947094);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1597947093);
                        Modifier modifierM2095requiredSizeInqDBjuR0$default = SizeKt.m2095requiredSizeInqDBjuR0$default(Modifier.Companion, contextMenuSpec.m1410getIconSizeD9Ej5fM(), 0.0f, contextMenuSpec.m1410getIconSizeD9Ej5fM(), contextMenuSpec.m1410getIconSizeD9Ej5fM(), 2, null);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2095requiredSizeInqDBjuR0$default);
                        constructor2 = companion.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        jg.d(companion, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl2, Integer.valueOf(iHashCode2), composerM5355constructorimpl2));
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        if (z) {
                            jM1398getDisabledIconColor0d7_KjU = contextMenuColors.m1400getIconColor0d7_KjU();
                        } else {
                            jM1398getDisabledIconColor0d7_KjU = contextMenuColors.m1398getDisabledIconColor0d7_KjU();
                        }
                        dm3Var2.invoke(Color.m6222boximpl(jM1398getDisabledIconColor0d7_KjU), composerStartRestartGroup, 0);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (z) {
                        jM1399getDisabledTextColor0d7_KjU = contextMenuColors.m1401getTextColor0d7_KjU();
                    } else {
                        jM1399getDisabledTextColor0d7_KjU = contextMenuColors.m1399getDisabledTextColor0d7_KjU();
                    }
                    dm3<? super Color, ? super Composer, ? super Integer, j59> dm3Var4 = dm3Var2;
                    composer2 = composerStartRestartGroup;
                    BasicTextKt.m2459BasicTextRWo7tUw(str, rowScopeInstance.weight(Modifier.Companion, 1.0f, true), contextMenuSpec.m1417textStyle8_81llA(jM1399getDisabledTextColor0d7_KjU), (nl3<? super TextLayoutResult, j59>) null, 0, false, 1, 0, (ColorProducer) null, (TextAutoSize) null, composer2, (i6 & 14) | 1572864, 952);
                    composer2.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier5;
                    dm3Var3 = dm3Var4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    dm3Var3 = dm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ez1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ContextMenuUiKt.ContextMenuItem$lambda$2(str, z, contextMenuColors, modifier3, dm3Var3, ll3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            dm3Var2 = dm3Var;
            if ((196608 & i) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            i6 = i3;
            if ((74899 & i6) != 74898) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i6 & 1)) {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    dm3Var2 = null;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-2001167027, i6, -1, "androidx.compose.foundation.contextmenu.ContextMenuItem (ContextMenuUi.kt:191)");
                }
                contextMenuSpec = ContextMenuSpec.INSTANCE;
                Alignment.Vertical labelVerticalTextAlignment2 = contextMenuSpec.getLabelVerticalTextAlignment();
                Arrangement.HorizontalOrVertical horizontalOrVerticalM1740spacedBy0680j_5 = Arrangement.INSTANCE.m1740spacedBy0680j_4(contextMenuSpec.m1409getHorizontalPaddingD9Ej5fM());
                if ((i6 & 112) == 32) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((458752 & i6) == 131072) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                z5 = z3 | z4;
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue = new ll3() { // from class: dz1
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ContextMenuUiKt.ContextMenuItem$lambda$0$0(z, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: dz1
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ContextMenuUiKt.ContextMenuItem$lambda$0$0(z, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifier6 = modifier4;
                Modifier modifierM2035paddingVpY3zN4$default2 = PaddingKt.m2035paddingVpY3zN4$default(SizeKt.m2102sizeInqDBjuR0(SizeKt.fillMaxWidth$default(ClickableKt.m1324clickableoSLSa3U$default(modifier6, z, str2, null, null, (ll3) objRememberedValue, 12, null), 0.0f, 1, null), contextMenuSpec.m1404getContainerWidthMinD9Ej5fM(), contextMenuSpec.m1414getListItemHeightD9Ej5fM(), contextMenuSpec.m1403getContainerWidthMaxD9Ej5fM(), contextMenuSpec.m1414getListItemHeightD9Ej5fM()), contextMenuSpec.m1409getHorizontalPaddingD9Ej5fM(), 0.0f, 2, null);
                MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(horizontalOrVerticalM1740spacedBy0680j_5, labelVerticalTextAlignment2, composerStartRestartGroup, 54);
                int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default2);
                companion = ComposeUiNode.Companion;
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
                Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl3, Integer.valueOf(iHashCode3), composerM5355constructorimpl3));
                RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                if (dm3Var2 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1597947094);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1597947093);
                    Modifier modifierM2095requiredSizeInqDBjuR0$default2 = SizeKt.m2095requiredSizeInqDBjuR0$default(Modifier.Companion, contextMenuSpec.m1410getIconSizeD9Ej5fM(), 0.0f, contextMenuSpec.m1410getIconSizeD9Ej5fM(), contextMenuSpec.m1410getIconSizeD9Ej5fM(), 2, null);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2095requiredSizeInqDBjuR0$default2);
                    constructor2 = companion.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl4 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion, composerM5355constructorimpl4, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl4, currentCompositionLocalMap4);
                    Updater.m5363setimpl(composerM5355constructorimpl4, modifierMaterializeModifier4, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl4, Integer.valueOf(iHashCode4), composerM5355constructorimpl4));
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        jM1398getDisabledIconColor0d7_KjU = contextMenuColors.m1400getIconColor0d7_KjU();
                    } else {
                        jM1398getDisabledIconColor0d7_KjU = contextMenuColors.m1398getDisabledIconColor0d7_KjU();
                    }
                    dm3Var2.invoke(Color.m6222boximpl(jM1398getDisabledIconColor0d7_KjU), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (z) {
                    jM1399getDisabledTextColor0d7_KjU = contextMenuColors.m1401getTextColor0d7_KjU();
                } else {
                    jM1399getDisabledTextColor0d7_KjU = contextMenuColors.m1399getDisabledTextColor0d7_KjU();
                }
                dm3<? super Color, ? super Composer, ? super Integer, j59> dm3Var5 = dm3Var2;
                composer2 = composerStartRestartGroup;
                BasicTextKt.m2459BasicTextRWo7tUw(str, rowScopeInstance2.weight(Modifier.Companion, 1.0f, true), contextMenuSpec.m1417textStyle8_81llA(jM1399getDisabledTextColor0d7_KjU), (nl3<? super TextLayoutResult, j59>) null, 0, false, 1, 0, (ColorProducer) null, (TextAutoSize) null, composer2, (i6 & 14) | 1572864, 952);
                composer2.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier6;
                dm3Var3 = dm3Var5;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                dm3Var3 = dm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ez1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ContextMenuUiKt.ContextMenuItem$lambda$2(str, z, contextMenuColors, modifier3, dm3Var3, ll3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        modifier2 = modifier;
        i4 = i2 & 16;
        if (i4 != 0) {
            if ((i & 24576) == 0) {
                dm3Var2 = dm3Var;
                if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i3 |= i5;
            }
            if ((196608 & i) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            i6 = i3;
            if ((74899 & i6) != 74898) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i6 & 1)) {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    dm3Var2 = null;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-2001167027, i6, -1, "androidx.compose.foundation.contextmenu.ContextMenuItem (ContextMenuUi.kt:191)");
                }
                contextMenuSpec = ContextMenuSpec.INSTANCE;
                Alignment.Vertical labelVerticalTextAlignment3 = contextMenuSpec.getLabelVerticalTextAlignment();
                Arrangement.HorizontalOrVertical horizontalOrVerticalM1740spacedBy0680j_6 = Arrangement.INSTANCE.m1740spacedBy0680j_4(contextMenuSpec.m1409getHorizontalPaddingD9Ej5fM());
                if ((i6 & 112) == 32) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((458752 & i6) == 131072) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                z5 = z3 | z4;
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue = new ll3() { // from class: dz1
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ContextMenuUiKt.ContextMenuItem$lambda$0$0(z, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: dz1
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ContextMenuUiKt.ContextMenuItem$lambda$0$0(z, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifier7 = modifier4;
                Modifier modifierM2035paddingVpY3zN4$default3 = PaddingKt.m2035paddingVpY3zN4$default(SizeKt.m2102sizeInqDBjuR0(SizeKt.fillMaxWidth$default(ClickableKt.m1324clickableoSLSa3U$default(modifier7, z, str2, null, null, (ll3) objRememberedValue, 12, null), 0.0f, 1, null), contextMenuSpec.m1404getContainerWidthMinD9Ej5fM(), contextMenuSpec.m1414getListItemHeightD9Ej5fM(), contextMenuSpec.m1403getContainerWidthMaxD9Ej5fM(), contextMenuSpec.m1414getListItemHeightD9Ej5fM()), contextMenuSpec.m1409getHorizontalPaddingD9Ej5fM(), 0.0f, 2, null);
                MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(horizontalOrVerticalM1740spacedBy0680j_6, labelVerticalTextAlignment3, composerStartRestartGroup, 54);
                int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default3);
                companion = ComposeUiNode.Companion;
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
                Composer composerM5355constructorimpl5 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion, composerM5355constructorimpl5, measurePolicyRowMeasurePolicy3, composerM5355constructorimpl5, currentCompositionLocalMap5);
                Updater.m5363setimpl(composerM5355constructorimpl5, modifierMaterializeModifier5, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl5, Integer.valueOf(iHashCode5), composerM5355constructorimpl5));
                RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
                if (dm3Var2 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1597947094);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1597947093);
                    Modifier modifierM2095requiredSizeInqDBjuR0$default3 = SizeKt.m2095requiredSizeInqDBjuR0$default(Modifier.Companion, contextMenuSpec.m1410getIconSizeD9Ej5fM(), 0.0f, contextMenuSpec.m1410getIconSizeD9Ej5fM(), contextMenuSpec.m1410getIconSizeD9Ej5fM(), 2, null);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    int iHashCode6 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2095requiredSizeInqDBjuR0$default3);
                    constructor2 = companion.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl6 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion, composerM5355constructorimpl6, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl6, currentCompositionLocalMap6);
                    Updater.m5363setimpl(composerM5355constructorimpl6, modifierMaterializeModifier6, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl6, Integer.valueOf(iHashCode6), composerM5355constructorimpl6));
                    BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                    if (z) {
                        jM1398getDisabledIconColor0d7_KjU = contextMenuColors.m1400getIconColor0d7_KjU();
                    } else {
                        jM1398getDisabledIconColor0d7_KjU = contextMenuColors.m1398getDisabledIconColor0d7_KjU();
                    }
                    dm3Var2.invoke(Color.m6222boximpl(jM1398getDisabledIconColor0d7_KjU), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (z) {
                    jM1399getDisabledTextColor0d7_KjU = contextMenuColors.m1401getTextColor0d7_KjU();
                } else {
                    jM1399getDisabledTextColor0d7_KjU = contextMenuColors.m1399getDisabledTextColor0d7_KjU();
                }
                dm3<? super Color, ? super Composer, ? super Integer, j59> dm3Var6 = dm3Var2;
                composer2 = composerStartRestartGroup;
                BasicTextKt.m2459BasicTextRWo7tUw(str, rowScopeInstance3.weight(Modifier.Companion, 1.0f, true), contextMenuSpec.m1417textStyle8_81llA(jM1399getDisabledTextColor0d7_KjU), (nl3<? super TextLayoutResult, j59>) null, 0, false, 1, 0, (ColorProducer) null, (TextAutoSize) null, composer2, (i6 & 14) | 1572864, 952);
                composer2.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier7;
                dm3Var3 = dm3Var6;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                dm3Var3 = dm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ez1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ContextMenuUiKt.ContextMenuItem$lambda$2(str, z, contextMenuColors, modifier3, dm3Var3, ll3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        dm3Var2 = dm3Var;
        if ((196608 & i) == 0) {
            if (composerStartRestartGroup.changedInstance(ll3Var)) {
                i7 = 131072;
            } else {
                i7 = 65536;
            }
            i3 |= i7;
        }
        i6 = i3;
        if ((74899 & i6) != 74898) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z2, i6 & 1)) {
            if (i8 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i4 != 0) {
                dm3Var2 = null;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2001167027, i6, -1, "androidx.compose.foundation.contextmenu.ContextMenuItem (ContextMenuUi.kt:191)");
            }
            contextMenuSpec = ContextMenuSpec.INSTANCE;
            Alignment.Vertical labelVerticalTextAlignment4 = contextMenuSpec.getLabelVerticalTextAlignment();
            Arrangement.HorizontalOrVertical horizontalOrVerticalM1740spacedBy0680j_7 = Arrangement.INSTANCE.m1740spacedBy0680j_4(contextMenuSpec.m1409getHorizontalPaddingD9Ej5fM());
            if ((i6 & 112) == 32) {
                z3 = true;
            } else {
                z3 = false;
            }
            if ((458752 & i6) == 131072) {
                z4 = true;
            } else {
                z4 = false;
            }
            z5 = z3 | z4;
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z5) {
                objRememberedValue = new ll3() { // from class: dz1
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ContextMenuUiKt.ContextMenuItem$lambda$0$0(z, ll3Var);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new ll3() { // from class: dz1
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ContextMenuUiKt.ContextMenuItem$lambda$0$0(z, ll3Var);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifier8 = modifier4;
            Modifier modifierM2035paddingVpY3zN4$default4 = PaddingKt.m2035paddingVpY3zN4$default(SizeKt.m2102sizeInqDBjuR0(SizeKt.fillMaxWidth$default(ClickableKt.m1324clickableoSLSa3U$default(modifier8, z, str2, null, null, (ll3) objRememberedValue, 12, null), 0.0f, 1, null), contextMenuSpec.m1404getContainerWidthMinD9Ej5fM(), contextMenuSpec.m1414getListItemHeightD9Ej5fM(), contextMenuSpec.m1403getContainerWidthMaxD9Ej5fM(), contextMenuSpec.m1414getListItemHeightD9Ej5fM()), contextMenuSpec.m1409getHorizontalPaddingD9Ej5fM(), 0.0f, 2, null);
            MeasurePolicy measurePolicyRowMeasurePolicy4 = RowKt.rowMeasurePolicy(horizontalOrVerticalM1740spacedBy0680j_7, labelVerticalTextAlignment4, composerStartRestartGroup, 54);
            int iHashCode7 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default4);
            companion = ComposeUiNode.Companion;
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
            Composer composerM5355constructorimpl7 = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion, composerM5355constructorimpl7, measurePolicyRowMeasurePolicy4, composerM5355constructorimpl7, currentCompositionLocalMap7);
            Updater.m5363setimpl(composerM5355constructorimpl7, modifierMaterializeModifier7, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl7, Integer.valueOf(iHashCode7), composerM5355constructorimpl7));
            RowScopeInstance rowScopeInstance4 = RowScopeInstance.INSTANCE;
            if (dm3Var2 == null) {
                composerStartRestartGroup.startReplaceGroup(-1597947094);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1597947093);
                Modifier modifierM2095requiredSizeInqDBjuR0$default4 = SizeKt.m2095requiredSizeInqDBjuR0$default(Modifier.Companion, contextMenuSpec.m1410getIconSizeD9Ej5fM(), 0.0f, contextMenuSpec.m1410getIconSizeD9Ej5fM(), contextMenuSpec.m1410getIconSizeD9Ej5fM(), 2, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                int iHashCode8 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2095requiredSizeInqDBjuR0$default4);
                constructor2 = companion.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl8 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion, composerM5355constructorimpl8, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl8, currentCompositionLocalMap8);
                Updater.m5363setimpl(composerM5355constructorimpl8, modifierMaterializeModifier8, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl8, Integer.valueOf(iHashCode8), composerM5355constructorimpl8));
                BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                if (z) {
                    jM1398getDisabledIconColor0d7_KjU = contextMenuColors.m1400getIconColor0d7_KjU();
                } else {
                    jM1398getDisabledIconColor0d7_KjU = contextMenuColors.m1398getDisabledIconColor0d7_KjU();
                }
                dm3Var2.invoke(Color.m6222boximpl(jM1398getDisabledIconColor0d7_KjU), composerStartRestartGroup, 0);
                composerStartRestartGroup.endNode();
                composerStartRestartGroup.endReplaceGroup();
            }
            if (z) {
                jM1399getDisabledTextColor0d7_KjU = contextMenuColors.m1401getTextColor0d7_KjU();
            } else {
                jM1399getDisabledTextColor0d7_KjU = contextMenuColors.m1399getDisabledTextColor0d7_KjU();
            }
            dm3<? super Color, ? super Composer, ? super Integer, j59> dm3Var7 = dm3Var2;
            composer2 = composerStartRestartGroup;
            BasicTextKt.m2459BasicTextRWo7tUw(str, rowScopeInstance4.weight(Modifier.Companion, 1.0f, true), contextMenuSpec.m1417textStyle8_81llA(jM1399getDisabledTextColor0d7_KjU), (nl3<? super TextLayoutResult, j59>) null, 0, false, 1, 0, (ColorProducer) null, (TextAutoSize) null, composer2, (i6 & 14) | 1572864, 952);
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier8;
            dm3Var3 = dm3Var7;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            dm3Var3 = dm3Var2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ez1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ContextMenuUiKt.ContextMenuItem$lambda$2(str, z, contextMenuColors, modifier3, dm3Var3, ll3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenuItem$lambda$0$0(boolean z, ll3 ll3Var) {
        if (z) {
            ll3Var.invoke();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenuItem$lambda$2(String str, boolean z, ContextMenuColors contextMenuColors, Modifier modifier, dm3 dm3Var, ll3 ll3Var, int i, int i2, Composer composer, int i3) {
        ContextMenuItem(str, z, contextMenuColors, modifier, dm3Var, ll3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x004e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0054  */
    /* JADX WARN: Code duplicated, block: B:33:0x0057  */
    /* JADX WARN: Code duplicated, block: B:37:0x005e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x0067  */
    /* JADX WARN: Code duplicated, block: B:44:0x0071  */
    /* JADX WARN: Code duplicated, block: B:45:0x0073  */
    /* JADX WARN: Code duplicated, block: B:48:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0081  */
    /* JADX WARN: Code duplicated, block: B:53:0x0088  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:63:? A[RETURN, SYNTHETIC] */
    public static final void ContextMenuPopup(PopupPositionProvider popupPositionProvider, ll3<j59> ll3Var, Modifier modifier, final ContextMenuColors contextMenuColors, final nl3<? super ContextMenuScope, j59> nl3Var, Composer composer, int i, int i2) {
        int i3;
        Modifier modifier2;
        boolean z;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        final Modifier modifier3;
        int i4;
        int i5;
        Composer composerStartRestartGroup = composer.startRestartGroup(-305401220);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(popupPositionProvider) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(ll3Var) ? 32 : 16;
        }
        int i6 = i2 & 4;
        if (i6 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changed(contextMenuColors)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i4 = 16384;
                } else {
                    i4 = 8192;
                }
                i3 |= i4;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i6 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-305401220, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuPopup (ContextMenuUi.kt:117)");
                }
                AndroidPopup_androidKt.Popup(popupPositionProvider, ll3Var, DefaultPopupProperties, ComposableLambdaKt.rememberComposableLambda(-1271367778, true, new bm3() { // from class: fz1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ContextMenuUiKt.ContextMenuPopup$lambda$1(modifier3, contextMenuColors, nl3Var, (Composer) obj, iIntValue);
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | 3456 | (i3 & 112), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new gz1(popupPositionProvider, ll3Var, modifier2, contextMenuColors, nl3Var, i, i2, 0));
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        if ((i & 3072) == 0) {
            if (composerStartRestartGroup.changed(contextMenuColors)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i3 |= i5;
        }
        if ((i & 24576) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i4 = 16384;
            } else {
                i4 = 8192;
            }
            i3 |= i4;
        }
        if ((i3 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            if (i6 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-305401220, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuPopup (ContextMenuUi.kt:117)");
            }
            AndroidPopup_androidKt.Popup(popupPositionProvider, ll3Var, DefaultPopupProperties, ComposableLambdaKt.rememberComposableLambda(-1271367778, true, new bm3() { // from class: fz1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ContextMenuUiKt.ContextMenuPopup$lambda$1(modifier3, contextMenuColors, nl3Var, (Composer) obj, iIntValue);
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | 3456 | (i3 & 112), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new gz1(popupPositionProvider, ll3Var, modifier2, contextMenuColors, nl3Var, i, i2, 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenuPopup$lambda$0(PopupPositionProvider popupPositionProvider, ll3 ll3Var, Modifier modifier, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        ContextMenuPopup(popupPositionProvider, ll3Var, modifier, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenuPopup$lambda$1(Modifier modifier, ContextMenuColors contextMenuColors, nl3 nl3Var, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1271367778, i, -1, "androidx.compose.foundation.contextmenu.ContextMenuPopup.<anonymous> (ContextMenuUi.kt:123)");
            }
            ContextMenuColumnBuilder(modifier, contextMenuColors, nl3Var, composer, 0, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenuPopup$lambda$2(PopupPositionProvider popupPositionProvider, ll3 ll3Var, Modifier modifier, ContextMenuColors contextMenuColors, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        ContextMenuPopup(popupPositionProvider, ll3Var, modifier, contextMenuColors, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static final ContextMenuColors getDefaultContextMenuColors() {
        return DefaultContextMenuColors;
    }

    public static final void ContextMenuPopup(PopupPositionProvider popupPositionProvider, ll3<j59> ll3Var, Modifier modifier, nl3<? super ContextMenuScope, j59> nl3Var, Composer composer, final int i, final int i2) {
        int i3;
        ll3<j59> ll3Var2;
        final nl3<? super ContextMenuScope, j59> nl3Var2;
        final PopupPositionProvider popupPositionProvider2;
        final Modifier modifier2;
        Composer composerStartRestartGroup = composer.startRestartGroup(307841774);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(popupPositionProvider) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(ll3Var) ? 32 : 16;
        }
        int i4 = i2 & 4;
        if (i4 != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(nl3Var) ? 2048 : 1024;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 1171) != 1170, i3 & 1)) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            Modifier modifier3 = modifier;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(307841774, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuPopup (ContextMenuUi.kt:99)");
            }
            ll3Var2 = ll3Var;
            ContextMenuPopup(popupPositionProvider, ll3Var2, modifier3, ContextMenuUi_androidKt.computeContextMenuColors(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, (i3 & AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED) | ((i3 << 3) & 57344), 0);
            popupPositionProvider2 = popupPositionProvider;
            nl3Var2 = nl3Var;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
        } else {
            ll3Var2 = ll3Var;
            nl3Var2 = nl3Var;
            popupPositionProvider2 = popupPositionProvider;
            composerStartRestartGroup.skipToGroupEnd();
            modifier2 = modifier;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final ll3<j59> ll3Var3 = ll3Var2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cz1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ContextMenuUiKt.ContextMenuPopup$lambda$0(popupPositionProvider2, ll3Var3, modifier2, nl3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
