package androidx.compose.ui.window;

import android.graphics.Rect;
import android.os.IBinder;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.hm;
import defpackage.j59;
import defpackage.jg;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.y22;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidPopup_androidKt {
    private static final int PopupPropertiesBaseFlags = 262144;
    private static final ProvidableCompositionLocal<String> LocalPopupTestTag = CompositionLocalKt.compositionLocalOf$default(null, AndroidPopup_androidKt$LocalPopupTestTag$1.INSTANCE, 1, null);
    private static final ProvidableCompositionLocal<Boolean> LocalIsInPopupLayout = CompositionLocalKt.compositionLocalOf$default(null, AndroidPopup_androidKt$LocalIsInPopupLayout$1.INSTANCE, 1, null);

    /* JADX WARN: Code duplicated, block: B:101:0x0208  */
    /* JADX WARN: Code duplicated, block: B:103:0x020e  */
    /* JADX WARN: Code duplicated, block: B:106:0x0229  */
    /* JADX WARN: Code duplicated, block: B:108:0x022f  */
    /* JADX WARN: Code duplicated, block: B:111:0x0250  */
    /* JADX WARN: Code duplicated, block: B:113:0x0256  */
    /* JADX WARN: Code duplicated, block: B:116:0x027d  */
    /* JADX WARN: Code duplicated, block: B:119:0x0289  */
    /* JADX WARN: Code duplicated, block: B:120:0x028d  */
    /* JADX WARN: Code duplicated, block: B:123:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:125:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:128:0x02be  */
    /* JADX WARN: Code duplicated, block: B:130:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0047  */
    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0052  */
    /* JADX WARN: Code duplicated, block: B:34:0x0059  */
    /* JADX WARN: Code duplicated, block: B:36:0x005f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0062  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:42:0x006f  */
    /* JADX WARN: Code duplicated, block: B:45:0x0078  */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0082  */
    /* JADX WARN: Code duplicated, block: B:51:0x0096  */
    /* JADX WARN: Code duplicated, block: B:54:0x009e  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:60:0x010e  */
    /* JADX WARN: Code duplicated, block: B:61:0x0143  */
    /* JADX WARN: Code duplicated, block: B:64:0x0156  */
    /* JADX WARN: Code duplicated, block: B:65:0x0158  */
    /* JADX WARN: Code duplicated, block: B:68:0x0160  */
    /* JADX WARN: Code duplicated, block: B:69:0x0162  */
    /* JADX WARN: Code duplicated, block: B:72:0x0178  */
    /* JADX WARN: Code duplicated, block: B:74:0x017e  */
    /* JADX WARN: Code duplicated, block: B:77:0x0198  */
    /* JADX WARN: Code duplicated, block: B:78:0x019a  */
    /* JADX WARN: Code duplicated, block: B:81:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:82:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:85:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:92:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:93:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:96:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:98:0x01f1  */
    public static final void Popup(PopupPositionProvider popupPositionProvider, ll3<j59> ll3Var, PopupProperties popupProperties, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2) {
        int i3;
        ll3<j59> ll3Var2;
        int i4;
        PopupProperties popupProperties2;
        int i5;
        boolean z;
        ll3<j59> ll3Var3;
        PopupProperties popupProperties3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        ll3<j59> ll3Var4;
        PopupProperties popupProperties4;
        View view;
        Density density;
        String str;
        final LayoutDirection layoutDirection;
        CompositionContext compositionContextRememberCompositionContext;
        State stateRememberUpdatedState;
        Object objRememberedValue;
        Composer.Companion companion;
        UUID uuid;
        boolean zBooleanValue;
        Object objRememberedValue2;
        boolean z2;
        String str2;
        int i6;
        final PopupLayout popupLayout;
        int i7;
        boolean z3;
        int i8;
        boolean z4;
        boolean zChanged;
        Object objRememberedValue3;
        boolean z5;
        boolean z6;
        boolean zChanged2;
        Object objRememberedValue4;
        int i9;
        boolean z7;
        boolean z8;
        Object objRememberedValue5;
        boolean zChangedInstance;
        Object objRememberedValue6;
        boolean zChangedInstance2;
        Object objRememberedValue7;
        boolean zChangedInstance3;
        Object objRememberedValue8;
        ll3<ComposeUiNode> constructor;
        int i10;
        PopupPositionProvider popupPositionProvider2 = popupPositionProvider;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1772091631);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(popupPositionProvider2) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i11 = i2 & 2;
        if (i11 == 0) {
            if ((i & 48) == 0) {
                ll3Var2 = ll3Var;
                i3 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    popupProperties2 = popupProperties;
                    if (composerStartRestartGroup.changed(popupProperties2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i10 = 2048;
                    } else {
                        i10 = 1024;
                    }
                    i3 |= i10;
                }
                if ((i3 & 1171) != 1170) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i11 != 0) {
                        ll3Var4 = null;
                    } else {
                        ll3Var4 = ll3Var2;
                    }
                    if (i4 != 0) {
                        popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
                    } else {
                        popupProperties4 = popupProperties2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1772091631, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:417)");
                    }
                    view = (View) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalView());
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    str = (String) composerStartRestartGroup.consume(LocalPopupTestTag);
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                    compositionContextRememberCompositionContext = ComposablesKt.rememberCompositionContext(composerStartRestartGroup, 0);
                    stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(bm3Var, composerStartRestartGroup, (i3 >> 9) & 14);
                    Object[] objArr = new Object[0];
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = AndroidPopup_androidKt$Popup$popupId$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    uuid = (UUID) RememberSaveableKt.rememberSaveable(objArr, (ll3) objRememberedValue, composerStartRestartGroup, 48);
                    zBooleanValue = ((Boolean) composerStartRestartGroup.consume(LocalIsInPopupLayout)).booleanValue();
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        str2 = str;
                        i6 = 32;
                        PopupLayout popupLayout2 = new PopupLayout(ll3Var4, popupProperties4, str2, view, density, popupPositionProvider2, uuid, zBooleanValue, null, 256, null);
                        popupPositionProvider2 = popupPositionProvider2;
                        z2 = true;
                        popupLayout2.setContent(compositionContextRememberCompositionContext, ComposableLambdaKt.composableLambdaInstance(-297523940, true, new AndroidPopup_androidKt$Popup$popupLayout$1$1$1(popupLayout2, stateRememberUpdatedState)));
                        composerStartRestartGroup.updateRememberedValue(popupLayout2);
                        objRememberedValue2 = popupLayout2;
                    } else {
                        z2 = true;
                        str2 = str;
                        i6 = 32;
                    }
                    popupLayout = (PopupLayout) objRememberedValue2;
                    boolean zChangedInstance4 = composerStartRestartGroup.changedInstance(popupLayout);
                    int i12 = i3;
                    i7 = i12 & 112;
                    if (i7 == i6) {
                        z3 = z2;
                    } else {
                        z3 = false;
                    }
                    boolean z9 = zChangedInstance4 | z3;
                    i8 = i12 & 896;
                    if (i8 == 256) {
                        z4 = z2;
                    } else {
                        z4 = false;
                    }
                    zChanged = z9 | z4 | composerStartRestartGroup.changed(str2) | composerStartRestartGroup.changed(layoutDirection.ordinal());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged || objRememberedValue3 == companion.getEmpty()) {
                        objRememberedValue3 = new AndroidPopup_androidKt$Popup$2$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(popupLayout, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, 0);
                    boolean zChangedInstance5 = composerStartRestartGroup.changedInstance(popupLayout);
                    if (i7 == i6) {
                        z5 = z2;
                    } else {
                        z5 = false;
                    }
                    boolean z10 = zChangedInstance5 | z5;
                    if (i8 == 256) {
                        z6 = z2;
                    } else {
                        z6 = false;
                    }
                    zChanged2 = z10 | z6 | composerStartRestartGroup.changed(str2) | composerStartRestartGroup.changed(layoutDirection.ordinal());
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (zChanged2 || objRememberedValue4 == companion.getEmpty()) {
                        objRememberedValue4 = new AndroidPopup_androidKt$Popup$3$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue4, composerStartRestartGroup, 0);
                    boolean zChangedInstance6 = composerStartRestartGroup.changedInstance(popupLayout);
                    i9 = i12 & 14;
                    if (i9 == 4) {
                        z7 = z2;
                    } else {
                        z7 = false;
                    }
                    z8 = zChangedInstance6 | z7;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z8 || objRememberedValue5 == companion.getEmpty()) {
                        objRememberedValue5 = new AndroidPopup_androidKt$Popup$4$1(popupLayout, popupPositionProvider2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    EffectsKt.DisposableEffect(popupPositionProvider2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue5, composerStartRestartGroup, i9);
                    zChangedInstance = composerStartRestartGroup.changedInstance(popupLayout);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance || objRememberedValue6 == companion.getEmpty()) {
                        objRememberedValue6 = new AndroidPopup_androidKt$Popup$5$1(popupLayout, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    EffectsKt.LaunchedEffect(popupLayout, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue6, composerStartRestartGroup, 0);
                    Modifier.Companion companion2 = Modifier.Companion;
                    zChangedInstance2 = composerStartRestartGroup.changedInstance(popupLayout);
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2 || objRememberedValue7 == companion.getEmpty()) {
                        objRememberedValue7 = new AndroidPopup_androidKt$Popup$7$1(popupLayout);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    Modifier modifierOnGloballyPositioned = OnGloballyPositionedModifierKt.onGloballyPositioned(companion2, (nl3) objRememberedValue7);
                    zChangedInstance3 = composerStartRestartGroup.changedInstance(popupLayout) | composerStartRestartGroup.changed(layoutDirection.ordinal());
                    objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance3 || objRememberedValue8 == companion.getEmpty()) {
                        objRememberedValue8 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1
                            @Override // androidx.compose.ui.layout.MeasurePolicy
                            /* JADX INFO: renamed from: measure-3p2s80s */
                            public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                                popupLayout.setParentLayoutDirection(layoutDirection);
                                return MeasureScope.layout$default(measureScope, 0, 0, null, AnonymousClass1.INSTANCE, 4, null);
                            }

                            /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1$1, reason: invalid class name */
                            public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
                                public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

                                public AnonymousClass1() {
                                    super(1);
                                }

                                @Override // defpackage.nl3
                                public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
                                    invoke2(placementScope);
                                    return j59.a;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(Placeable.PlacementScope placementScope) {
                                }
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                    }
                    MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue8;
                    int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnGloballyPositioned);
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
                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion3, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion3, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    ll3Var3 = ll3Var4;
                    popupProperties3 = popupProperties4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    ll3Var3 = ll3Var2;
                    popupProperties3 = popupProperties2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(popupPositionProvider2, ll3Var3, popupProperties3, bm3Var, i, i2));
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            popupProperties2 = popupProperties;
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i10 = 2048;
                } else {
                    i10 = 1024;
                }
                i3 |= i10;
            }
            if ((i3 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i11 != 0) {
                    ll3Var4 = null;
                } else {
                    ll3Var4 = ll3Var2;
                }
                if (i4 != 0) {
                    popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
                } else {
                    popupProperties4 = popupProperties2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1772091631, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:417)");
                }
                view = (View) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalView());
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                str = (String) composerStartRestartGroup.consume(LocalPopupTestTag);
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                compositionContextRememberCompositionContext = ComposablesKt.rememberCompositionContext(composerStartRestartGroup, 0);
                stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(bm3Var, composerStartRestartGroup, (i3 >> 9) & 14);
                Object[] objArr2 = new Object[0];
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = AndroidPopup_androidKt$Popup$popupId$1$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                uuid = (UUID) RememberSaveableKt.rememberSaveable(objArr2, (ll3) objRememberedValue, composerStartRestartGroup, 48);
                zBooleanValue = ((Boolean) composerStartRestartGroup.consume(LocalIsInPopupLayout)).booleanValue();
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    str2 = str;
                    i6 = 32;
                    PopupLayout popupLayout3 = new PopupLayout(ll3Var4, popupProperties4, str2, view, density, popupPositionProvider2, uuid, zBooleanValue, null, 256, null);
                    popupPositionProvider2 = popupPositionProvider2;
                    z2 = true;
                    popupLayout3.setContent(compositionContextRememberCompositionContext, ComposableLambdaKt.composableLambdaInstance(-297523940, true, new AndroidPopup_androidKt$Popup$popupLayout$1$1$1(popupLayout3, stateRememberUpdatedState)));
                    composerStartRestartGroup.updateRememberedValue(popupLayout3);
                    objRememberedValue2 = popupLayout3;
                } else {
                    z2 = true;
                    str2 = str;
                    i6 = 32;
                }
                popupLayout = (PopupLayout) objRememberedValue2;
                boolean zChangedInstance7 = composerStartRestartGroup.changedInstance(popupLayout);
                int i13 = i3;
                i7 = i13 & 112;
                if (i7 == i6) {
                    z3 = z2;
                } else {
                    z3 = false;
                }
                boolean z11 = zChangedInstance7 | z3;
                i8 = i13 & 896;
                if (i8 == 256) {
                    z4 = z2;
                } else {
                    z4 = false;
                }
                zChanged = z11 | z4 | composerStartRestartGroup.changed(str2) | composerStartRestartGroup.changed(layoutDirection.ordinal());
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new AndroidPopup_androidKt$Popup$2$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new AndroidPopup_androidKt$Popup$2$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(popupLayout, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, 0);
                boolean zChangedInstance8 = composerStartRestartGroup.changedInstance(popupLayout);
                if (i7 == i6) {
                    z5 = z2;
                } else {
                    z5 = false;
                }
                boolean z12 = zChangedInstance8 | z5;
                if (i8 == 256) {
                    z6 = z2;
                } else {
                    z6 = false;
                }
                zChanged2 = z12 | z6 | composerStartRestartGroup.changed(str2) | composerStartRestartGroup.changed(layoutDirection.ordinal());
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue4 = new AndroidPopup_androidKt$Popup$3$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new AndroidPopup_androidKt$Popup$3$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                EffectsKt.SideEffect((ll3) objRememberedValue4, composerStartRestartGroup, 0);
                boolean zChangedInstance9 = composerStartRestartGroup.changedInstance(popupLayout);
                i9 = i13 & 14;
                if (i9 == 4) {
                    z7 = z2;
                } else {
                    z7 = false;
                }
                z8 = zChangedInstance9 | z7;
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (z8) {
                    objRememberedValue5 = new AndroidPopup_androidKt$Popup$4$1(popupLayout, popupPositionProvider2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    objRememberedValue5 = new AndroidPopup_androidKt$Popup$4$1(popupLayout, popupPositionProvider2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                EffectsKt.DisposableEffect(popupPositionProvider2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue5, composerStartRestartGroup, i9);
                zChangedInstance = composerStartRestartGroup.changedInstance(popupLayout);
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue6 = new AndroidPopup_androidKt$Popup$5$1(popupLayout, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                } else {
                    objRememberedValue6 = new AndroidPopup_androidKt$Popup$5$1(popupLayout, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                EffectsKt.LaunchedEffect(popupLayout, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue6, composerStartRestartGroup, 0);
                Modifier.Companion companion4 = Modifier.Companion;
                zChangedInstance2 = composerStartRestartGroup.changedInstance(popupLayout);
                objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance2) {
                    objRememberedValue7 = new AndroidPopup_androidKt$Popup$7$1(popupLayout);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                } else {
                    objRememberedValue7 = new AndroidPopup_androidKt$Popup$7$1(popupLayout);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                }
                Modifier modifierOnGloballyPositioned2 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion4, (nl3) objRememberedValue7);
                zChangedInstance3 = composerStartRestartGroup.changedInstance(popupLayout) | composerStartRestartGroup.changed(layoutDirection.ordinal());
                objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance3) {
                    objRememberedValue8 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1
                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        /* JADX INFO: renamed from: measure-3p2s80s */
                        public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                            popupLayout.setParentLayoutDirection(layoutDirection);
                            return MeasureScope.layout$default(measureScope, 0, 0, null, AnonymousClass1.INSTANCE, 4, null);
                        }

                        /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1$1, reason: invalid class name */
                        public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
                            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

                            public AnonymousClass1() {
                                super(1);
                            }

                            @Override // defpackage.nl3
                            public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
                                invoke2(placementScope);
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Placeable.PlacementScope placementScope) {
                            }
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                } else {
                    objRememberedValue8 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1
                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        /* JADX INFO: renamed from: measure-3p2s80s */
                        public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                            popupLayout.setParentLayoutDirection(layoutDirection);
                            return MeasureScope.layout$default(measureScope, 0, 0, null, AnonymousClass1.INSTANCE, 4, null);
                        }

                        /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1$1, reason: invalid class name */
                        public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
                            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

                            public AnonymousClass1() {
                                super(1);
                            }

                            @Override // defpackage.nl3
                            public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
                                invoke2(placementScope);
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Placeable.PlacementScope placementScope) {
                            }
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                }
                MeasurePolicy measurePolicy2 = (MeasurePolicy) objRememberedValue8;
                int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnGloballyPositioned2);
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
                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion5, composerM5355constructorimpl2, measurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, (bm3<? super T, ? super Modifier, j59>) hm.b(companion5, composerM5355constructorimpl2, Integer.valueOf(iHashCode2), composerM5355constructorimpl2));
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ll3Var3 = ll3Var4;
                popupProperties3 = popupProperties4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                ll3Var3 = ll3Var2;
                popupProperties3 = popupProperties2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(popupPositionProvider2, ll3Var3, popupProperties3, bm3Var, i, i2));
            }
        }
        i3 |= 48;
        ll3Var2 = ll3Var;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                popupProperties2 = popupProperties;
                if (composerStartRestartGroup.changed(popupProperties2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i10 = 2048;
                } else {
                    i10 = 1024;
                }
                i3 |= i10;
            }
            if ((i3 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i11 != 0) {
                    ll3Var4 = null;
                } else {
                    ll3Var4 = ll3Var2;
                }
                if (i4 != 0) {
                    popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
                } else {
                    popupProperties4 = popupProperties2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1772091631, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:417)");
                }
                view = (View) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalView());
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                str = (String) composerStartRestartGroup.consume(LocalPopupTestTag);
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                compositionContextRememberCompositionContext = ComposablesKt.rememberCompositionContext(composerStartRestartGroup, 0);
                stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(bm3Var, composerStartRestartGroup, (i3 >> 9) & 14);
                Object[] objArr3 = new Object[0];
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = AndroidPopup_androidKt$Popup$popupId$1$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                uuid = (UUID) RememberSaveableKt.rememberSaveable(objArr3, (ll3) objRememberedValue, composerStartRestartGroup, 48);
                zBooleanValue = ((Boolean) composerStartRestartGroup.consume(LocalIsInPopupLayout)).booleanValue();
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    str2 = str;
                    i6 = 32;
                    PopupLayout popupLayout4 = new PopupLayout(ll3Var4, popupProperties4, str2, view, density, popupPositionProvider2, uuid, zBooleanValue, null, 256, null);
                    popupPositionProvider2 = popupPositionProvider2;
                    z2 = true;
                    popupLayout4.setContent(compositionContextRememberCompositionContext, ComposableLambdaKt.composableLambdaInstance(-297523940, true, new AndroidPopup_androidKt$Popup$popupLayout$1$1$1(popupLayout4, stateRememberUpdatedState)));
                    composerStartRestartGroup.updateRememberedValue(popupLayout4);
                    objRememberedValue2 = popupLayout4;
                } else {
                    z2 = true;
                    str2 = str;
                    i6 = 32;
                }
                popupLayout = (PopupLayout) objRememberedValue2;
                boolean zChangedInstance10 = composerStartRestartGroup.changedInstance(popupLayout);
                int i14 = i3;
                i7 = i14 & 112;
                if (i7 == i6) {
                    z3 = z2;
                } else {
                    z3 = false;
                }
                boolean z13 = zChangedInstance10 | z3;
                i8 = i14 & 896;
                if (i8 == 256) {
                    z4 = z2;
                } else {
                    z4 = false;
                }
                zChanged = z13 | z4 | composerStartRestartGroup.changed(str2) | composerStartRestartGroup.changed(layoutDirection.ordinal());
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new AndroidPopup_androidKt$Popup$2$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new AndroidPopup_androidKt$Popup$2$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(popupLayout, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, 0);
                boolean zChangedInstance11 = composerStartRestartGroup.changedInstance(popupLayout);
                if (i7 == i6) {
                    z5 = z2;
                } else {
                    z5 = false;
                }
                boolean z14 = zChangedInstance11 | z5;
                if (i8 == 256) {
                    z6 = z2;
                } else {
                    z6 = false;
                }
                zChanged2 = z14 | z6 | composerStartRestartGroup.changed(str2) | composerStartRestartGroup.changed(layoutDirection.ordinal());
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged2) {
                    objRememberedValue4 = new AndroidPopup_androidKt$Popup$3$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new AndroidPopup_androidKt$Popup$3$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                EffectsKt.SideEffect((ll3) objRememberedValue4, composerStartRestartGroup, 0);
                boolean zChangedInstance12 = composerStartRestartGroup.changedInstance(popupLayout);
                i9 = i14 & 14;
                if (i9 == 4) {
                    z7 = z2;
                } else {
                    z7 = false;
                }
                z8 = zChangedInstance12 | z7;
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (z8) {
                    objRememberedValue5 = new AndroidPopup_androidKt$Popup$4$1(popupLayout, popupPositionProvider2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    objRememberedValue5 = new AndroidPopup_androidKt$Popup$4$1(popupLayout, popupPositionProvider2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                EffectsKt.DisposableEffect(popupPositionProvider2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue5, composerStartRestartGroup, i9);
                zChangedInstance = composerStartRestartGroup.changedInstance(popupLayout);
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue6 = new AndroidPopup_androidKt$Popup$5$1(popupLayout, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                } else {
                    objRememberedValue6 = new AndroidPopup_androidKt$Popup$5$1(popupLayout, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                EffectsKt.LaunchedEffect(popupLayout, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue6, composerStartRestartGroup, 0);
                Modifier.Companion companion6 = Modifier.Companion;
                zChangedInstance2 = composerStartRestartGroup.changedInstance(popupLayout);
                objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance2) {
                    objRememberedValue7 = new AndroidPopup_androidKt$Popup$7$1(popupLayout);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                } else {
                    objRememberedValue7 = new AndroidPopup_androidKt$Popup$7$1(popupLayout);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                }
                Modifier modifierOnGloballyPositioned3 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion6, (nl3) objRememberedValue7);
                zChangedInstance3 = composerStartRestartGroup.changedInstance(popupLayout) | composerStartRestartGroup.changed(layoutDirection.ordinal());
                objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance3) {
                    objRememberedValue8 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1
                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        /* JADX INFO: renamed from: measure-3p2s80s */
                        public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                            popupLayout.setParentLayoutDirection(layoutDirection);
                            return MeasureScope.layout$default(measureScope, 0, 0, null, AnonymousClass1.INSTANCE, 4, null);
                        }

                        /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1$1, reason: invalid class name */
                        public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
                            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

                            public AnonymousClass1() {
                                super(1);
                            }

                            @Override // defpackage.nl3
                            public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
                                invoke2(placementScope);
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Placeable.PlacementScope placementScope) {
                            }
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                } else {
                    objRememberedValue8 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1
                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        /* JADX INFO: renamed from: measure-3p2s80s */
                        public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                            popupLayout.setParentLayoutDirection(layoutDirection);
                            return MeasureScope.layout$default(measureScope, 0, 0, null, AnonymousClass1.INSTANCE, 4, null);
                        }

                        /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1$1, reason: invalid class name */
                        public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
                            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

                            public AnonymousClass1() {
                                super(1);
                            }

                            @Override // defpackage.nl3
                            public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
                                invoke2(placementScope);
                                return j59.a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Placeable.PlacementScope placementScope) {
                            }
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
                }
                MeasurePolicy measurePolicy3 = (MeasurePolicy) objRememberedValue8;
                int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnGloballyPositioned3);
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
                Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion7, composerM5355constructorimpl3, measurePolicy3, composerM5355constructorimpl3, currentCompositionLocalMap3);
                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, (bm3<? super T, ? super Modifier, j59>) hm.b(companion7, composerM5355constructorimpl3, Integer.valueOf(iHashCode3), composerM5355constructorimpl3));
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ll3Var3 = ll3Var4;
                popupProperties3 = popupProperties4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                ll3Var3 = ll3Var2;
                popupProperties3 = popupProperties2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(popupPositionProvider2, ll3Var3, popupProperties3, bm3Var, i, i2));
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        popupProperties2 = popupProperties;
        if ((i & 3072) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var)) {
                i10 = 2048;
            } else {
                i10 = 1024;
            }
            i3 |= i10;
        }
        if ((i3 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            if (i11 != 0) {
                ll3Var4 = null;
            } else {
                ll3Var4 = ll3Var2;
            }
            if (i4 != 0) {
                popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
            } else {
                popupProperties4 = popupProperties2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1772091631, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:417)");
            }
            view = (View) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalView());
            density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            str = (String) composerStartRestartGroup.consume(LocalPopupTestTag);
            layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            compositionContextRememberCompositionContext = ComposablesKt.rememberCompositionContext(composerStartRestartGroup, 0);
            stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(bm3Var, composerStartRestartGroup, (i3 >> 9) & 14);
            Object[] objArr4 = new Object[0];
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = AndroidPopup_androidKt$Popup$popupId$1$1.INSTANCE;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            uuid = (UUID) RememberSaveableKt.rememberSaveable(objArr4, (ll3) objRememberedValue, composerStartRestartGroup, 48);
            zBooleanValue = ((Boolean) composerStartRestartGroup.consume(LocalIsInPopupLayout)).booleanValue();
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                str2 = str;
                i6 = 32;
                PopupLayout popupLayout5 = new PopupLayout(ll3Var4, popupProperties4, str2, view, density, popupPositionProvider2, uuid, zBooleanValue, null, 256, null);
                popupPositionProvider2 = popupPositionProvider2;
                z2 = true;
                popupLayout5.setContent(compositionContextRememberCompositionContext, ComposableLambdaKt.composableLambdaInstance(-297523940, true, new AndroidPopup_androidKt$Popup$popupLayout$1$1$1(popupLayout5, stateRememberUpdatedState)));
                composerStartRestartGroup.updateRememberedValue(popupLayout5);
                objRememberedValue2 = popupLayout5;
            } else {
                z2 = true;
                str2 = str;
                i6 = 32;
            }
            popupLayout = (PopupLayout) objRememberedValue2;
            boolean zChangedInstance13 = composerStartRestartGroup.changedInstance(popupLayout);
            int i15 = i3;
            i7 = i15 & 112;
            if (i7 == i6) {
                z3 = z2;
            } else {
                z3 = false;
            }
            boolean z15 = zChangedInstance13 | z3;
            i8 = i15 & 896;
            if (i8 == 256) {
                z4 = z2;
            } else {
                z4 = false;
            }
            zChanged = z15 | z4 | composerStartRestartGroup.changed(str2) | composerStartRestartGroup.changed(layoutDirection.ordinal());
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue3 = new AndroidPopup_androidKt$Popup$2$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new AndroidPopup_androidKt$Popup$2$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            EffectsKt.DisposableEffect(popupLayout, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, 0);
            boolean zChangedInstance14 = composerStartRestartGroup.changedInstance(popupLayout);
            if (i7 == i6) {
                z5 = z2;
            } else {
                z5 = false;
            }
            boolean z16 = zChangedInstance14 | z5;
            if (i8 == 256) {
                z6 = z2;
            } else {
                z6 = false;
            }
            zChanged2 = z16 | z6 | composerStartRestartGroup.changed(str2) | composerStartRestartGroup.changed(layoutDirection.ordinal());
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged2) {
                objRememberedValue4 = new AndroidPopup_androidKt$Popup$3$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            } else {
                objRememberedValue4 = new AndroidPopup_androidKt$Popup$3$1(popupLayout, ll3Var4, popupProperties4, str2, layoutDirection);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            EffectsKt.SideEffect((ll3) objRememberedValue4, composerStartRestartGroup, 0);
            boolean zChangedInstance15 = composerStartRestartGroup.changedInstance(popupLayout);
            i9 = i15 & 14;
            if (i9 == 4) {
                z7 = z2;
            } else {
                z7 = false;
            }
            z8 = zChangedInstance15 | z7;
            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (z8) {
                objRememberedValue5 = new AndroidPopup_androidKt$Popup$4$1(popupLayout, popupPositionProvider2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            } else {
                objRememberedValue5 = new AndroidPopup_androidKt$Popup$4$1(popupLayout, popupPositionProvider2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            EffectsKt.DisposableEffect(popupPositionProvider2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue5, composerStartRestartGroup, i9);
            zChangedInstance = composerStartRestartGroup.changedInstance(popupLayout);
            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance) {
                objRememberedValue6 = new AndroidPopup_androidKt$Popup$5$1(popupLayout, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            } else {
                objRememberedValue6 = new AndroidPopup_androidKt$Popup$5$1(popupLayout, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            EffectsKt.LaunchedEffect(popupLayout, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue6, composerStartRestartGroup, 0);
            Modifier.Companion companion8 = Modifier.Companion;
            zChangedInstance2 = composerStartRestartGroup.changedInstance(popupLayout);
            objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance2) {
                objRememberedValue7 = new AndroidPopup_androidKt$Popup$7$1(popupLayout);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
            } else {
                objRememberedValue7 = new AndroidPopup_androidKt$Popup$7$1(popupLayout);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
            }
            Modifier modifierOnGloballyPositioned4 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion8, (nl3) objRememberedValue7);
            zChangedInstance3 = composerStartRestartGroup.changedInstance(popupLayout) | composerStartRestartGroup.changed(layoutDirection.ordinal());
            objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance3) {
                objRememberedValue8 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                        popupLayout.setParentLayoutDirection(layoutDirection);
                        return MeasureScope.layout$default(measureScope, 0, 0, null, AnonymousClass1.INSTANCE, 4, null);
                    }

                    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1$1, reason: invalid class name */
                    public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
                        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

                        public AnonymousClass1() {
                            super(1);
                        }

                        @Override // defpackage.nl3
                        public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return j59.a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Placeable.PlacementScope placementScope) {
                        }
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            } else {
                objRememberedValue8 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                        popupLayout.setParentLayoutDirection(layoutDirection);
                        return MeasureScope.layout$default(measureScope, 0, 0, null, AnonymousClass1.INSTANCE, 4, null);
                    }

                    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1$1, reason: invalid class name */
                    public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
                        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

                        public AnonymousClass1() {
                            super(1);
                        }

                        @Override // defpackage.nl3
                        public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return j59.a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Placeable.PlacementScope placementScope) {
                        }
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            }
            MeasurePolicy measurePolicy4 = (MeasurePolicy) objRememberedValue8;
            int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnGloballyPositioned4);
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
            Composer composerM5355constructorimpl4 = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion9, composerM5355constructorimpl4, measurePolicy4, composerM5355constructorimpl4, currentCompositionLocalMap4);
            Updater.m5363setimpl(composerM5355constructorimpl4, modifierMaterializeModifier4, (bm3<? super T, ? super Modifier, j59>) hm.b(companion9, composerM5355constructorimpl4, Integer.valueOf(iHashCode4), composerM5355constructorimpl4));
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            ll3Var3 = ll3Var4;
            popupProperties3 = popupProperties4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            ll3Var3 = ll3Var2;
            popupProperties3 = popupProperties2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass9(popupPositionProvider2, ll3Var3, popupProperties3, bm3Var, i, i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final bm3<Composer, Integer, j59> Popup$lambda$0(State<? extends bm3<? super Composer, ? super Integer, j59>> state) {
        return (bm3) state.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0086  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x008e  */
    /* JADX WARN: Code duplicated, block: B:56:0x009a  */
    /* JADX WARN: Code duplicated, block: B:57:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:68:0x00be  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:82:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:85:0x0112  */
    /* JADX WARN: Code duplicated, block: B:87:0x011a  */
    /* JADX WARN: Code duplicated, block: B:90:0x0134  */
    /* JADX WARN: Code duplicated, block: B:92:0x013a  */
    /* JADX WARN: Code duplicated, block: B:95:0x0147  */
    /* JADX WARN: Code duplicated, block: B:97:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: Popup-K5zGePQ, reason: not valid java name */
    public static final void m9294PopupK5zGePQ(Alignment alignment, long j, ll3<j59> ll3Var, PopupProperties popupProperties, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2) {
        Alignment alignment2;
        int i3;
        long j2;
        int i4;
        ll3<j59> ll3Var2;
        int i5;
        int i6;
        PopupProperties popupProperties2;
        int i7;
        bm3<? super Composer, ? super Integer, j59> bm3Var2;
        boolean z;
        Alignment topStart;
        long jM9164constructorimpl;
        ll3<j59> ll3Var3;
        PopupProperties popupProperties3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        jh2 jh2Var;
        ll3<j59> ll3Var4;
        PopupProperties popupProperties4;
        boolean z2;
        boolean zChanged;
        Object objRememberedValue;
        int i8;
        Composer composerStartRestartGroup = composer.startRestartGroup(71005054);
        int i9 = i2 & 1;
        if (i9 != 0) {
            i3 = i | 6;
            alignment2 = alignment;
        } else if ((i & 6) == 0) {
            alignment2 = alignment;
            i3 = (composerStartRestartGroup.changed(alignment2) ? 4 : 2) | i;
        } else {
            alignment2 = alignment;
            i3 = i;
        }
        int i10 = i2 & 2;
        if (i10 == 0) {
            if ((i & 48) == 0) {
                j2 = j;
                i3 |= composerStartRestartGroup.changed(j2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    ll3Var2 = ll3Var;
                    if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 8;
                if (i6 != 0) {
                    if ((i & 3072) == 0) {
                        popupProperties2 = popupProperties;
                        if (composerStartRestartGroup.changed(popupProperties2)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    if ((i & 24576) == 0) {
                        bm3Var2 = bm3Var;
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i3 |= i8;
                    } else {
                        bm3Var2 = bm3Var;
                    }
                    if ((i3 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i9 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                        } else {
                            topStart = alignment2;
                        }
                        if (i10 != 0) {
                            jM9164constructorimpl = IntOffset.m9164constructorimpl(0L);
                        } else {
                            jM9164constructorimpl = j2;
                        }
                        jh2Var = null;
                        if (i4 != 0) {
                            ll3Var4 = null;
                        } else {
                            ll3Var4 = ll3Var2;
                        }
                        if (i6 != 0) {
                            popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
                        } else {
                            popupProperties4 = popupProperties2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(71005054, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:386)");
                        }
                        int windowType = popupProperties4.getWindowType();
                        IBinder windowToken = popupProperties4.getWindowToken();
                        if ((i3 & 14) == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        zChanged = composerStartRestartGroup.changed(windowType) | z2 | ((i3 & 112) == 32) | composerStartRestartGroup.changed(windowToken);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Popup((AlignmentOffsetPositionProvider) objRememberedValue, ll3Var4, popupProperties4, bm3Var2, composerStartRestartGroup, (i3 >> 3) & 8176, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        ll3Var3 = ll3Var4;
                        popupProperties3 = popupProperties4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        topStart = alignment2;
                        jM9164constructorimpl = j2;
                        ll3Var3 = ll3Var2;
                        popupProperties3 = popupProperties2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(topStart, jM9164constructorimpl, ll3Var3, popupProperties3, bm3Var, i, i2));
                    }
                }
                i3 |= 3072;
                popupProperties2 = popupProperties;
                if ((i & 24576) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i3 |= i8;
                } else {
                    bm3Var2 = bm3Var;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i9 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    } else {
                        topStart = alignment2;
                    }
                    if (i10 != 0) {
                        jM9164constructorimpl = IntOffset.m9164constructorimpl(0L);
                    } else {
                        jM9164constructorimpl = j2;
                    }
                    jh2Var = null;
                    if (i4 != 0) {
                        ll3Var4 = null;
                    } else {
                        ll3Var4 = ll3Var2;
                    }
                    if (i6 != 0) {
                        popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
                    } else {
                        popupProperties4 = popupProperties2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(71005054, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:386)");
                    }
                    int windowType2 = popupProperties4.getWindowType();
                    IBinder windowToken2 = popupProperties4.getWindowToken();
                    if ((i3 & 14) == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if ((i3 & 112) == 32) {
                    }
                    zChanged = composerStartRestartGroup.changed(windowType2) | z2 | ((i3 & 112) == 32) | composerStartRestartGroup.changed(windowToken2);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Popup((AlignmentOffsetPositionProvider) objRememberedValue, ll3Var4, popupProperties4, bm3Var2, composerStartRestartGroup, (i3 >> 3) & 8176, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    ll3Var3 = ll3Var4;
                    popupProperties3 = popupProperties4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    topStart = alignment2;
                    jM9164constructorimpl = j2;
                    ll3Var3 = ll3Var2;
                    popupProperties3 = popupProperties2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(topStart, jM9164constructorimpl, ll3Var3, popupProperties3, bm3Var, i, i2));
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            ll3Var2 = ll3Var;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    popupProperties2 = popupProperties;
                    if (composerStartRestartGroup.changed(popupProperties2)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i3 |= i8;
                } else {
                    bm3Var2 = bm3Var;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i9 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    } else {
                        topStart = alignment2;
                    }
                    if (i10 != 0) {
                        jM9164constructorimpl = IntOffset.m9164constructorimpl(0L);
                    } else {
                        jM9164constructorimpl = j2;
                    }
                    jh2Var = null;
                    if (i4 != 0) {
                        ll3Var4 = null;
                    } else {
                        ll3Var4 = ll3Var2;
                    }
                    if (i6 != 0) {
                        popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
                    } else {
                        popupProperties4 = popupProperties2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(71005054, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:386)");
                    }
                    int windowType3 = popupProperties4.getWindowType();
                    IBinder windowToken3 = popupProperties4.getWindowToken();
                    if ((i3 & 14) == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if ((i3 & 112) == 32) {
                    }
                    zChanged = composerStartRestartGroup.changed(windowType3) | z2 | ((i3 & 112) == 32) | composerStartRestartGroup.changed(windowToken3);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Popup((AlignmentOffsetPositionProvider) objRememberedValue, ll3Var4, popupProperties4, bm3Var2, composerStartRestartGroup, (i3 >> 3) & 8176, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    ll3Var3 = ll3Var4;
                    popupProperties3 = popupProperties4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    topStart = alignment2;
                    jM9164constructorimpl = j2;
                    ll3Var3 = ll3Var2;
                    popupProperties3 = popupProperties2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(topStart, jM9164constructorimpl, ll3Var3, popupProperties3, bm3Var, i, i2));
                }
            }
            i3 |= 3072;
            popupProperties2 = popupProperties;
            if ((i & 24576) == 0) {
                bm3Var2 = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i3 |= i8;
            } else {
                bm3Var2 = bm3Var;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i9 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                } else {
                    topStart = alignment2;
                }
                if (i10 != 0) {
                    jM9164constructorimpl = IntOffset.m9164constructorimpl(0L);
                } else {
                    jM9164constructorimpl = j2;
                }
                jh2Var = null;
                if (i4 != 0) {
                    ll3Var4 = null;
                } else {
                    ll3Var4 = ll3Var2;
                }
                if (i6 != 0) {
                    popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
                } else {
                    popupProperties4 = popupProperties2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(71005054, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:386)");
                }
                int windowType4 = popupProperties4.getWindowType();
                IBinder windowToken4 = popupProperties4.getWindowToken();
                if ((i3 & 14) == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((i3 & 112) == 32) {
                }
                zChanged = composerStartRestartGroup.changed(windowType4) | z2 | ((i3 & 112) == 32) | composerStartRestartGroup.changed(windowToken4);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Popup((AlignmentOffsetPositionProvider) objRememberedValue, ll3Var4, popupProperties4, bm3Var2, composerStartRestartGroup, (i3 >> 3) & 8176, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ll3Var3 = ll3Var4;
                popupProperties3 = popupProperties4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                topStart = alignment2;
                jM9164constructorimpl = j2;
                ll3Var3 = ll3Var2;
                popupProperties3 = popupProperties2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(topStart, jM9164constructorimpl, ll3Var3, popupProperties3, bm3Var, i, i2));
            }
        }
        i3 |= 48;
        j2 = j;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                ll3Var2 = ll3Var;
                if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    popupProperties2 = popupProperties;
                    if (composerStartRestartGroup.changed(popupProperties2)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i3 |= i8;
                } else {
                    bm3Var2 = bm3Var;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i9 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    } else {
                        topStart = alignment2;
                    }
                    if (i10 != 0) {
                        jM9164constructorimpl = IntOffset.m9164constructorimpl(0L);
                    } else {
                        jM9164constructorimpl = j2;
                    }
                    jh2Var = null;
                    if (i4 != 0) {
                        ll3Var4 = null;
                    } else {
                        ll3Var4 = ll3Var2;
                    }
                    if (i6 != 0) {
                        popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
                    } else {
                        popupProperties4 = popupProperties2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(71005054, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:386)");
                    }
                    int windowType5 = popupProperties4.getWindowType();
                    IBinder windowToken5 = popupProperties4.getWindowToken();
                    if ((i3 & 14) == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if ((i3 & 112) == 32) {
                    }
                    zChanged = composerStartRestartGroup.changed(windowType5) | z2 | ((i3 & 112) == 32) | composerStartRestartGroup.changed(windowToken5);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Popup((AlignmentOffsetPositionProvider) objRememberedValue, ll3Var4, popupProperties4, bm3Var2, composerStartRestartGroup, (i3 >> 3) & 8176, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    ll3Var3 = ll3Var4;
                    popupProperties3 = popupProperties4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    topStart = alignment2;
                    jM9164constructorimpl = j2;
                    ll3Var3 = ll3Var2;
                    popupProperties3 = popupProperties2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(topStart, jM9164constructorimpl, ll3Var3, popupProperties3, bm3Var, i, i2));
                }
            }
            i3 |= 3072;
            popupProperties2 = popupProperties;
            if ((i & 24576) == 0) {
                bm3Var2 = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i3 |= i8;
            } else {
                bm3Var2 = bm3Var;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i9 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                } else {
                    topStart = alignment2;
                }
                if (i10 != 0) {
                    jM9164constructorimpl = IntOffset.m9164constructorimpl(0L);
                } else {
                    jM9164constructorimpl = j2;
                }
                jh2Var = null;
                if (i4 != 0) {
                    ll3Var4 = null;
                } else {
                    ll3Var4 = ll3Var2;
                }
                if (i6 != 0) {
                    popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
                } else {
                    popupProperties4 = popupProperties2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(71005054, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:386)");
                }
                int windowType6 = popupProperties4.getWindowType();
                IBinder windowToken6 = popupProperties4.getWindowToken();
                if ((i3 & 14) == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((i3 & 112) == 32) {
                }
                zChanged = composerStartRestartGroup.changed(windowType6) | z2 | ((i3 & 112) == 32) | composerStartRestartGroup.changed(windowToken6);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Popup((AlignmentOffsetPositionProvider) objRememberedValue, ll3Var4, popupProperties4, bm3Var2, composerStartRestartGroup, (i3 >> 3) & 8176, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ll3Var3 = ll3Var4;
                popupProperties3 = popupProperties4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                topStart = alignment2;
                jM9164constructorimpl = j2;
                ll3Var3 = ll3Var2;
                popupProperties3 = popupProperties2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(topStart, jM9164constructorimpl, ll3Var3, popupProperties3, bm3Var, i, i2));
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        ll3Var2 = ll3Var;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                popupProperties2 = popupProperties;
                if (composerStartRestartGroup.changed(popupProperties2)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            if ((i & 24576) == 0) {
                bm3Var2 = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i3 |= i8;
            } else {
                bm3Var2 = bm3Var;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i9 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                } else {
                    topStart = alignment2;
                }
                if (i10 != 0) {
                    jM9164constructorimpl = IntOffset.m9164constructorimpl(0L);
                } else {
                    jM9164constructorimpl = j2;
                }
                jh2Var = null;
                if (i4 != 0) {
                    ll3Var4 = null;
                } else {
                    ll3Var4 = ll3Var2;
                }
                if (i6 != 0) {
                    popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
                } else {
                    popupProperties4 = popupProperties2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(71005054, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:386)");
                }
                int windowType7 = popupProperties4.getWindowType();
                IBinder windowToken7 = popupProperties4.getWindowToken();
                if ((i3 & 14) == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((i3 & 112) == 32) {
                }
                zChanged = composerStartRestartGroup.changed(windowType7) | z2 | ((i3 & 112) == 32) | composerStartRestartGroup.changed(windowToken7);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Popup((AlignmentOffsetPositionProvider) objRememberedValue, ll3Var4, popupProperties4, bm3Var2, composerStartRestartGroup, (i3 >> 3) & 8176, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ll3Var3 = ll3Var4;
                popupProperties3 = popupProperties4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                topStart = alignment2;
                jM9164constructorimpl = j2;
                ll3Var3 = ll3Var2;
                popupProperties3 = popupProperties2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(topStart, jM9164constructorimpl, ll3Var3, popupProperties3, bm3Var, i, i2));
            }
        }
        i3 |= 3072;
        popupProperties2 = popupProperties;
        if ((i & 24576) == 0) {
            bm3Var2 = bm3Var;
            if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                i8 = 16384;
            } else {
                i8 = 8192;
            }
            i3 |= i8;
        } else {
            bm3Var2 = bm3Var;
        }
        if ((i3 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            if (i9 != 0) {
                topStart = Alignment.Companion.getTopStart();
            } else {
                topStart = alignment2;
            }
            if (i10 != 0) {
                jM9164constructorimpl = IntOffset.m9164constructorimpl(0L);
            } else {
                jM9164constructorimpl = j2;
            }
            jh2Var = null;
            if (i4 != 0) {
                ll3Var4 = null;
            } else {
                ll3Var4 = ll3Var2;
            }
            if (i6 != 0) {
                popupProperties4 = new PopupProperties(false, false, false, false, false, 31, (jh2) null);
            } else {
                popupProperties4 = popupProperties2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(71005054, i3, -1, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:386)");
            }
            int windowType8 = popupProperties4.getWindowType();
            IBinder windowToken8 = popupProperties4.getWindowToken();
            if ((i3 & 14) == 4) {
                z2 = true;
            } else {
                z2 = false;
            }
            if ((i3 & 112) == 32) {
            }
            zChanged = composerStartRestartGroup.changed(windowType8) | z2 | ((i3 & 112) == 32) | composerStartRestartGroup.changed(windowToken8);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new AlignmentOffsetPositionProvider(topStart, jM9164constructorimpl, jh2Var);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Popup((AlignmentOffsetPositionProvider) objRememberedValue, ll3Var4, popupProperties4, bm3Var2, composerStartRestartGroup, (i3 >> 3) & 8176, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            ll3Var3 = ll3Var4;
            popupProperties3 = popupProperties4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            topStart = alignment2;
            jM9164constructorimpl = j2;
            ll3Var3 = ll3Var2;
            popupProperties3 = popupProperties2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(topStart, jM9164constructorimpl, ll3Var3, popupProperties3, bm3Var, i, i2));
        }
    }

    public static final void PopupTestTag(String str, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1357513789);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1357513789, i2, -1, "androidx.compose.ui.window.PopupTestTag (AndroidPopup.android.kt:547)");
            }
            CompositionLocalKt.CompositionLocalProvider(LocalPopupTestTag.provides(str), bm3Var, composerStartRestartGroup, (i2 & 112) | ProvidedValue.$stable);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new C06561(str, bm3Var, i));
        }
    }

    private static final void SimpleStack(Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = AndroidPopup_androidKt$SimpleStack$1$1.INSTANCE;
            composer.updateRememberedValue(objRememberedValue);
        }
        MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
        int i2 = ((i << 3) & 112) | ((i >> 3) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK;
        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion.getConstructor();
        int i3 = ((i2 << 6) & 896) | 6;
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
        jg.d(companion, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
        bm3Var.invoke(composer, Integer.valueOf((i3 >> 6) & 14));
        composer.endNode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int createFlags(boolean z, SecureFlagPolicy secureFlagPolicy, boolean z2) {
        int i = !z ? 262152 : 262144;
        if (secureFlagPolicy == SecureFlagPolicy.SecureOn) {
            i |= 8192;
        }
        return !z2 ? i | 512 : i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int flagsWithSecureFlagInherited(PopupProperties popupProperties, boolean z) {
        if (popupProperties.getInheritSecurePolicy$ui() && z) {
            return popupProperties.getFlags$ui() | 8192;
        }
        return (!popupProperties.getInheritSecurePolicy$ui() || z) ? popupProperties.getFlags$ui() : popupProperties.getFlags$ui() & (-8193);
    }

    public static final ProvidableCompositionLocal<Boolean> getLocalIsInPopupLayout() {
        return LocalIsInPopupLayout;
    }

    public static final ProvidableCompositionLocal<String> getLocalPopupTestTag() {
        return LocalPopupTestTag;
    }

    public static final boolean isFlagSecureEnabled(View view) {
        ViewGroup.LayoutParams layoutParams = view.getRootView().getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = layoutParams instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams : null;
        return (layoutParams2 == null || (layoutParams2.flags & 8192) == 0) ? false : true;
    }

    public static final boolean isPopupLayout(View view, String str) {
        if (view instanceof PopupLayout) {
            return str == null || str.equals(((PopupLayout) view).getTestTag());
        }
        return false;
    }

    public static /* synthetic */ boolean isPopupLayout$default(View view, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return isPopupLayout(view, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IntRect toIntBounds(Rect rect) {
        return new IntRect(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$PopupTestTag$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06561 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ bm3<Composer, Integer, j59> $content;
        final /* synthetic */ String $tag;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06561(String str, bm3<? super Composer, ? super Integer, j59> bm3Var, int i) {
            super(2);
            this.$tag = str;
            this.$content = bm3Var;
            this.$$changed = i;
        }

        public final void invoke(Composer composer, int i) {
            AndroidPopup_androidKt.PopupTestTag(this.$tag, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1));
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$9, reason: invalid class name */
    public static final class AnonymousClass9 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ bm3<Composer, Integer, j59> $content;
        final /* synthetic */ ll3<j59> $onDismissRequest;
        final /* synthetic */ PopupPositionProvider $popupPositionProvider;
        final /* synthetic */ PopupProperties $properties;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass9(PopupPositionProvider popupPositionProvider, ll3<j59> ll3Var, PopupProperties popupProperties, bm3<? super Composer, ? super Integer, j59> bm3Var, int i, int i2) {
            super(2);
            this.$popupPositionProvider = popupPositionProvider;
            this.$onDismissRequest = ll3Var;
            this.$properties = popupProperties;
            this.$content = bm3Var;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            AndroidPopup_androidKt.Popup(this.$popupPositionProvider, this.$onDismissRequest, this.$properties, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ Alignment $alignment;
        final /* synthetic */ bm3<Composer, Integer, j59> $content;
        final /* synthetic */ long $offset;
        final /* synthetic */ ll3<j59> $onDismissRequest;
        final /* synthetic */ PopupProperties $properties;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Alignment alignment, long j, ll3<j59> ll3Var, PopupProperties popupProperties, bm3<? super Composer, ? super Integer, j59> bm3Var, int i, int i2) {
            super(2);
            this.$alignment = alignment;
            this.$offset = j;
            this.$onDismissRequest = ll3Var;
            this.$properties = popupProperties;
            this.$content = bm3Var;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            AndroidPopup_androidKt.m9294PopupK5zGePQ(this.$alignment, this.$offset, this.$onDismissRequest, this.$properties, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }
}
