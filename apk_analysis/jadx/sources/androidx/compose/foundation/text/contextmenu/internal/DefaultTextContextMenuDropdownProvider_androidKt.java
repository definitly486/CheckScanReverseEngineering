package androidx.compose.foundation.text.contextmenu.internal;

import android.content.Context;
import android.os.Build;
import androidx.compose.foundation.contextmenu.ContextMenuPopupPositionProvider;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.oj2;
import defpackage.qj2;
import defpackage.sj2;
import defpackage.z12;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultTextContextMenuDropdownProvider_androidKt {
    private static final PopupProperties DefaultPopupProperties = new PopupProperties(true, false, false, false, false, 30, (jh2) null);

    private static final void DefaultTextContextMenuDropdown(final TextContextMenuSession textContextMenuSession, final TextContextMenuData textContextMenuData, Composer composer, final int i) {
        int i2;
        Context context;
        Composer composerStartRestartGroup = composer.startRestartGroup(1904307118);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(textContextMenuSession) : composerStartRestartGroup.changedInstance(textContextMenuSession) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(textContextMenuData) ? 32 : 16;
        }
        int i3 = 0;
        boolean z = true;
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1904307118, i2, -1, "androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdown (DefaultTextContextMenuDropdownProvider.android.kt:133)");
            }
            if (Build.VERSION.SDK_INT >= 28) {
                composerStartRestartGroup.startReplaceGroup(-1009482584);
                context = (Context) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalContext());
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1009433480);
                composerStartRestartGroup.endReplaceGroup();
                context = null;
            }
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(textContextMenuData);
            if ((i2 & 14) != 4 && ((i2 & 8) == 0 || !composerStartRestartGroup.changedInstance(textContextMenuSession))) {
                z = false;
            }
            boolean zChangedInstance2 = zChangedInstance | z | composerStartRestartGroup.changedInstance(context);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance2 || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new oj2(textContextMenuData, context, textContextMenuSession, i3);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            ContextMenuUiKt.ContextMenuColumnBuilder(null, null, (nl3) objRememberedValue, composerStartRestartGroup, 0, 3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pj2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DefaultTextContextMenuDropdownProvider_androidKt.DefaultTextContextMenuDropdown$lambda$1(textContextMenuSession, textContextMenuData, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DefaultTextContextMenuDropdown$lambda$0$0(TextContextMenuData textContextMenuData, Context context, TextContextMenuSession textContextMenuSession, ContextMenuScope contextMenuScope) {
        List<TextContextMenuComponent> components = textContextMenuData.getComponents();
        int size = components.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            final TextContextMenuComponent textContextMenuComponent = components.get(i2);
            if (textContextMenuComponent instanceof TextContextMenuItem) {
                final TextContextMenuItem textContextMenuItem = (TextContextMenuItem) textContextMenuComponent;
                ContextMenuScope.item$default(contextMenuScope, new bm3() { // from class: rj2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DefaultTextContextMenuDropdownProvider_androidKt.DefaultTextContextMenuDropdown$lambda$0$0$0$0(textContextMenuItem, (Composer) obj, iIntValue);
                    }
                }, null, false, textContextMenuItem.getLeadingIcon() == 0 ? null : ComposableLambdaKt.composableLambdaInstance(-1930700965, true, new dm3<Color, Composer, Integer, j59>() { // from class: androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2
                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(Color color, Composer composer, Integer num) {
                        m2638invokeek8zF_U(color.m6242unboximpl(), composer, num.intValue());
                        return j59.a;
                    }

                    /* JADX INFO: renamed from: invoke-ek8zF_U, reason: not valid java name */
                    public final void m2638invokeek8zF_U(long j, Composer composer, int i3) {
                        if ((i3 & 6) == 0) {
                            i3 |= composer.changed(j) ? 4 : 2;
                        }
                        if (!composer.shouldExecute((i3 & 19) != 18, i3 & 1)) {
                            composer.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1930700965, i3, -1, "androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdown.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:150)");
                        }
                        DefaultTextContextMenuDropdownProvider_androidKt.m2636IconBoxRPmYEkk(((TextContextMenuItem) textContextMenuComponent).getLeadingIcon(), j, composer, (i3 << 3) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }), new sj2(i, textContextMenuItem, textContextMenuSession), 6, null);
            } else {
                if (textContextMenuComponent instanceof TextContextMenuTextClassificationItem) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        TextContextMenuHelperApi28.INSTANCE.textClassificationItem(contextMenuScope, context, (TextContextMenuTextClassificationItem) textContextMenuComponent);
                    }
                } else if (textContextMenuComponent instanceof TextContextMenuSeparator) {
                    contextMenuScope.separator();
                }
            }
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String DefaultTextContextMenuDropdown$lambda$0$0$0$0(TextContextMenuComponent textContextMenuComponent, Composer composer, int i) {
        composer.startReplaceGroup(666084174);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(666084174, i, -1, "androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdown.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:145)");
        }
        String label = ((TextContextMenuItem) textContextMenuComponent).getLabel();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return label;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DefaultTextContextMenuDropdown$lambda$0$0$0$1(TextContextMenuComponent textContextMenuComponent, TextContextMenuSession textContextMenuSession) {
        ((TextContextMenuItem) textContextMenuComponent).getOnClick().invoke(textContextMenuSession);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DefaultTextContextMenuDropdown$lambda$1(TextContextMenuSession textContextMenuSession, TextContextMenuData textContextMenuData, int i, Composer composer, int i2) {
        DefaultTextContextMenuDropdown(textContextMenuSession, textContextMenuData, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: IconBox-RPmYEkk, reason: not valid java name */
    public static final void m2636IconBoxRPmYEkk(final int i, final long j, Composer composer, final int i2) {
        int i3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        bm3<? super Composer, ? super Integer, j59> bm3Var;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1240244237);
        if ((i2 & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(i) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(j) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 19) != 18, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1240244237, i3, -1, "androidx.compose.foundation.text.contextmenu.internal.IconBox (DefaultTextContextMenuDropdownProvider.android.kt:166)");
            }
            Context context = (Context) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalContext());
            boolean zChanged = ((i3 & 14) == 4) | composerStartRestartGroup.changed(context);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = Integer.valueOf(context.obtainStyledAttributes(new int[]{i}).getResourceId(0, -1));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            int iIntValue = ((Number) objRememberedValue).intValue();
            if (iIntValue == -1) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup == null) {
                    return;
                } else {
                    bm3Var = new bm3() { // from class: tj2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue2 = ((Integer) obj2).intValue();
                            return DefaultTextContextMenuDropdownProvider_androidKt.IconBox_RPmYEkk$lambda$1(i, j, i2, (Composer) obj, iIntValue2);
                        }
                    };
                }
            } else {
                Painter painterPainterResource = PainterResources_androidKt.painterResource(iIntValue, composerStartRestartGroup, 0);
                boolean z = (i3 & 112) == 32;
                Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z || objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = j == 16 ? null : ColorFilter.Companion.m6273tintxETnrds$default(ColorFilter.Companion, j, 0, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                BoxKt.Box(PainterModifierKt.paint$default(SizeKt.m2099size3ABfNKs(Modifier.Companion, ContextMenuSpec.INSTANCE.m1410getIconSizeD9Ej5fM()), painterPainterResource, false, null, ContentScale.Companion.getFit(), 0.0f, (ColorFilter) objRememberedValue2, 22, null), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            scopeUpdateScopeEndRestartGroup.updateScope(bm3Var);
        }
        composerStartRestartGroup.skipToGroupEnd();
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            bm3Var = new bm3() { // from class: uj2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue2 = ((Integer) obj2).intValue();
                    return DefaultTextContextMenuDropdownProvider_androidKt.IconBox_RPmYEkk$lambda$3(i, j, i2, (Composer) obj, iIntValue2);
                }
            };
            scopeUpdateScopeEndRestartGroup.updateScope(bm3Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IconBox_RPmYEkk$lambda$1(int i, long j, int i2, Composer composer, int i3) {
        m2636IconBoxRPmYEkk(i, j, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IconBox_RPmYEkk$lambda$3(int i, long j, int i2, Composer composer, int i3) {
        m2636IconBoxRPmYEkk(i, j, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void OpenContextMenu(final TextContextMenuSession textContextMenuSession, final TextContextMenuDataProvider textContextMenuDataProvider, final ll3<? extends LayoutCoordinates> ll3Var, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-2040393164);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(textContextMenuSession) : composerStartRestartGroup.changedInstance(textContextMenuSession) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composerStartRestartGroup.changed(textContextMenuDataProvider) : composerStartRestartGroup.changedInstance(textContextMenuDataProvider) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 256 : 128;
        }
        boolean z = false;
        int i4 = 1;
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2040393164, i2, -1, "androidx.compose.foundation.text.contextmenu.internal.OpenContextMenu (DefaultTextContextMenuDropdownProvider.android.kt:109)");
            }
            Object[] objArr = (i2 & 112) == 32 || ((i2 & 64) != 0 && composerStartRestartGroup.changed(textContextMenuDataProvider));
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objArr != false || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new MaintainWindowPositionPopupPositionProvider(new ContextMenuPopupPositionProvider(new ll3() { // from class: vj2
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu$lambda$0$0(textContextMenuDataProvider, ll3Var);
                    }
                }, (bm3) null, i3, (jh2) (0 == true ? 1 : 0)));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MaintainWindowPositionPopupPositionProvider maintainWindowPositionPopupPositionProvider = (MaintainWindowPositionPopupPositionProvider) objRememberedValue;
            if ((i2 & 14) == 4 || ((i2 & 8) != 0 && composerStartRestartGroup.changedInstance(textContextMenuSession))) {
                z = true;
            }
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new z12(textContextMenuSession, i4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            AndroidPopup_androidKt.Popup(maintainWindowPositionPopupPositionProvider, (ll3) objRememberedValue2, DefaultPopupProperties, ComposableLambdaKt.rememberComposableLambda(1315155414, true, new bm3() { // from class: mj2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu$lambda$2(textContextMenuDataProvider, textContextMenuSession, (Composer) obj, iIntValue);
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 3456, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nj2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu$lambda$3(textContextMenuSession, textContextMenuDataProvider, ll3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IntOffset OpenContextMenu$lambda$0$0(TextContextMenuDataProvider textContextMenuDataProvider, ll3 ll3Var) {
        return IntOffset.m9161boximpl(IntOffsetKt.m9187roundk4lQ0M(textContextMenuDataProvider.mo2650positiontuRUvjQ((LayoutCoordinates) ll3Var.invoke())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 OpenContextMenu$lambda$1$0(TextContextMenuSession textContextMenuSession) {
        textContextMenuSession.close();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 OpenContextMenu$lambda$2(TextContextMenuDataProvider textContextMenuDataProvider, TextContextMenuSession textContextMenuSession, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1315155414, i, -1, "androidx.compose.foundation.text.contextmenu.internal.OpenContextMenu.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:124)");
            }
            boolean zChanged = composer.changed(textContextMenuDataProvider);
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt.derivedStateOf(new DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$2$data$2$1(textContextMenuDataProvider));
                composer.updateRememberedValue(objRememberedValue);
            }
            DefaultTextContextMenuDropdown(textContextMenuSession, OpenContextMenu$lambda$2$1((State) objRememberedValue), composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    private static final TextContextMenuData OpenContextMenu$lambda$2$1(State<TextContextMenuData> state) {
        return state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 OpenContextMenu$lambda$3(TextContextMenuSession textContextMenuSession, TextContextMenuDataProvider textContextMenuDataProvider, ll3 ll3Var, int i, Composer composer, int i2) {
        OpenContextMenu(textContextMenuSession, textContextMenuDataProvider, ll3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    public static final void ProvideDefaultTextContextMenuDropdown(Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        bm3<? super Composer, ? super Integer, j59> bm3Var2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1392105195);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        int i3 = 0;
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1392105195, i2, -1, "androidx.compose.foundation.text.contextmenu.internal.ProvideDefaultTextContextMenuDropdown (DefaultTextContextMenuDropdownProvider.android.kt:85)");
            }
            modifier2 = modifier;
            bm3Var2 = bm3Var;
            BasicTextContextMenuProviderKt.ProvideBasicTextContextMenu(modifier2, TextContextMenuProviderKt.getLocalTextContextMenuDropdownProvider(), ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.INSTANCE.getLambda$636288403$foundation(), bm3Var2, composerStartRestartGroup, (i2 & 14) | 432 | ((i2 << 6) & 7168));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            modifier2 = modifier;
            bm3Var2 = bm3Var;
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new qj2(i, i3, modifier2, bm3Var2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ProvideDefaultTextContextMenuDropdown$lambda$0(bm3 bm3Var, int i, Composer composer, int i2) {
        ProvideDefaultTextContextMenuDropdown(bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ProvideDefaultTextContextMenuDropdown$lambda$1(Modifier modifier, bm3 bm3Var, int i, Composer composer, int i2) {
        ProvideDefaultTextContextMenuDropdown(modifier, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    public static final BasicTextContextMenuProvider defaultTextContextMenuDropdown(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1197778906, i, -1, "androidx.compose.foundation.text.contextmenu.internal.defaultTextContextMenuDropdown (DefaultTextContextMenuDropdownProvider.android.kt:98)");
        }
        BasicTextContextMenuProvider basicTextContextMenuProvider = BasicTextContextMenuProviderKt.basicTextContextMenuProvider(ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.INSTANCE.m2635getLambda$1357803046$foundation(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return basicTextContextMenuProvider;
    }

    public static final void ProvideDefaultTextContextMenuDropdown(final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(422095256);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(bm3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(422095256, i2, -1, "androidx.compose.foundation.text.contextmenu.internal.ProvideDefaultTextContextMenuDropdown (DefaultTextContextMenuDropdownProvider.android.kt:71)");
            }
            BasicTextContextMenuProviderKt.ProvideBasicTextContextMenu(TextContextMenuProviderKt.getLocalTextContextMenuDropdownProvider(), ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.INSTANCE.getLambda$129995601$foundation(), bm3Var, composerStartRestartGroup, ((i2 << 6) & 896) | 54);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: lj2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DefaultTextContextMenuDropdownProvider_androidKt.ProvideDefaultTextContextMenuDropdown$lambda$0(bm3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
