package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.view.View;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.UiApplier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import defpackage.ag;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidView_androidKt {
    private static final nl3<View, j59> NoOpUpdate = AndroidView_androidKt$NoOpUpdate$1.INSTANCE;

    /* JADX WARN: Code duplicated, block: B:23:0x003c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0041  */
    /* JADX WARN: Code duplicated, block: B:27:0x0045  */
    /* JADX WARN: Code duplicated, block: B:29:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0050  */
    /* JADX WARN: Code duplicated, block: B:34:0x0057  */
    /* JADX WARN: Code duplicated, block: B:36:0x005c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0060  */
    /* JADX WARN: Code duplicated, block: B:40:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0072  */
    /* JADX WARN: Code duplicated, block: B:47:0x0077  */
    /* JADX WARN: Code duplicated, block: B:49:0x007b  */
    /* JADX WARN: Code duplicated, block: B:51:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x0086  */
    /* JADX WARN: Code duplicated, block: B:56:0x0090  */
    /* JADX WARN: Code duplicated, block: B:57:0x0092  */
    /* JADX WARN: Code duplicated, block: B:60:0x009b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x009d  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:66:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:74:0x0101  */
    /* JADX WARN: Code duplicated, block: B:76:0x0115  */
    /* JADX WARN: Code duplicated, block: B:79:0x0121  */
    /* JADX WARN: Code duplicated, block: B:80:0x0125  */
    /* JADX WARN: Code duplicated, block: B:82:0x0145  */
    /* JADX WARN: Code duplicated, block: B:84:0x0159  */
    /* JADX WARN: Code duplicated, block: B:87:0x0165  */
    /* JADX WARN: Code duplicated, block: B:88:0x0169  */
    /* JADX WARN: Code duplicated, block: B:92:0x0189  */
    /* JADX WARN: Code duplicated, block: B:94:0x018f  */
    /* JADX WARN: Code duplicated, block: B:97:0x019a  */
    /* JADX WARN: Code duplicated, block: B:99:? A[RETURN, SYNTHETIC] */
    public static final <T extends View> void AndroidView(nl3<? super Context, ? extends T> nl3Var, Modifier modifier, nl3<? super T, j59> nl3Var2, nl3<? super T, j59> nl3Var3, nl3<? super T, j59> nl3Var4, Composer composer, int i, int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        nl3<? super T, j59> nl3Var5;
        int i5;
        int i6;
        nl3<? super T, j59> nl3Var6;
        int i7;
        int i8;
        nl3<? super T, j59> nl3Var7;
        int i9;
        boolean z;
        Modifier modifier3;
        nl3<? super T, j59> nl3Var8;
        nl3<? super T, j59> nl3Var9;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int iHashCode;
        Modifier modifierMaterializeModifier;
        Density density;
        LayoutDirection layoutDirection;
        CompositionLocalMap currentCompositionLocalMap;
        LifecycleOwner lifecycleOwner;
        SavedStateRegistryOwner savedStateRegistryOwner;
        ll3<LayoutNode> ll3VarCreateAndroidViewNodeFactory;
        ll3<LayoutNode> ll3VarCreateAndroidViewNodeFactory2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-180024211);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(nl3Var) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i10 = i2 & 2;
        if (i10 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    nl3Var5 = nl3Var2;
                    if (composerStartRestartGroup.changedInstance(nl3Var5)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 8;
                if (i6 != 0) {
                    if ((i & 3072) == 0) {
                        nl3Var6 = nl3Var3;
                        if (composerStartRestartGroup.changedInstance(nl3Var6)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 16;
                    if (i8 != 0) {
                        if ((i & 24576) == 0) {
                            nl3Var7 = nl3Var4;
                            if (composerStartRestartGroup.changedInstance(nl3Var7)) {
                                i9 = 16384;
                            } else {
                                i9 = 8192;
                            }
                            i3 |= i9;
                        }
                        if ((i3 & 9363) != 9362) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                            if (i10 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i4 != 0) {
                                nl3Var5 = null;
                            }
                            if (i6 != 0) {
                                nl3Var6 = NoOpUpdate;
                            }
                            if (i8 != 0) {
                                nl3Var7 = NoOpUpdate;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                            }
                            iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                            modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                            density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                            currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                            savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                            if (nl3Var5 != null) {
                                composerStartRestartGroup.startReplaceGroup(1313917368);
                                ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                                if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                composerStartRestartGroup.startReusableNode();
                                if (composerStartRestartGroup.getInserting()) {
                                    composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                                } else {
                                    composerStartRestartGroup.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                                m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                                Updater.m5363setimpl(composerM5355constructorimpl, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                                Updater.m5363setimpl(composerM5355constructorimpl, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                                Updater.m5363setimpl(composerM5355constructorimpl, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                                composerStartRestartGroup.endNode();
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(1314774735);
                                ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                                if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                composerStartRestartGroup.startNode();
                                if (composerStartRestartGroup.getInserting()) {
                                    composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                                } else {
                                    composerStartRestartGroup.useNode();
                                }
                                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                                m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl2, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                                Updater.m5363setimpl(composerM5355constructorimpl2, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                                Updater.m5363setimpl(composerM5355constructorimpl2, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                                composerStartRestartGroup.endNode();
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier3 = modifier2;
                        }
                        nl3Var8 = nl3Var5;
                        nl3Var9 = nl3Var7;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
                        }
                    }
                    i3 |= 24576;
                    nl3Var7 = nl3Var4;
                    if ((i3 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i10 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i4 != 0) {
                            nl3Var5 = null;
                        }
                        if (i6 != 0) {
                            nl3Var6 = NoOpUpdate;
                        }
                        if (i8 != 0) {
                            nl3Var7 = NoOpUpdate;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                        }
                        iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                        currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                        savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                        if (nl3Var5 != null) {
                            composerStartRestartGroup.startReplaceGroup(1313917368);
                            ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                            if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl3, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                            Updater.m5363setimpl(composerM5355constructorimpl3, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl3, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl3, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1314774735);
                            ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                            if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            Composer composerM5355constructorimpl4 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl4, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                            Updater.m5363setimpl(composerM5355constructorimpl4, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl4, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                    }
                    nl3Var8 = nl3Var5;
                    nl3Var9 = nl3Var7;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
                    }
                }
                i3 |= 3072;
                nl3Var6 = nl3Var3;
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        nl3Var7 = nl3Var4;
                        if (composerStartRestartGroup.changedInstance(nl3Var7)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    if ((i3 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i10 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i4 != 0) {
                            nl3Var5 = null;
                        }
                        if (i6 != 0) {
                            nl3Var6 = NoOpUpdate;
                        }
                        if (i8 != 0) {
                            nl3Var7 = NoOpUpdate;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                        }
                        iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                        currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                        savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                        if (nl3Var5 != null) {
                            composerStartRestartGroup.startReplaceGroup(1313917368);
                            ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                            if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            Composer composerM5355constructorimpl5 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl5, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                            Updater.m5363setimpl(composerM5355constructorimpl5, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl5, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl5, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1314774735);
                            ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                            if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            Composer composerM5355constructorimpl6 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl6, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                            Updater.m5363setimpl(composerM5355constructorimpl6, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl6, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                    }
                    nl3Var8 = nl3Var5;
                    nl3Var9 = nl3Var7;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
                    }
                }
                i3 |= 24576;
                nl3Var7 = nl3Var4;
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i10 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        nl3Var5 = null;
                    }
                    if (i6 != 0) {
                        nl3Var6 = NoOpUpdate;
                    }
                    if (i8 != 0) {
                        nl3Var7 = NoOpUpdate;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                    }
                    iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                    currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                    savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                    if (nl3Var5 != null) {
                        composerStartRestartGroup.startReplaceGroup(1313917368);
                        ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl7 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl7, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl7, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl7, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl7, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1314774735);
                        ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl8 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl8, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl8, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl8, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                }
                nl3Var8 = nl3Var5;
                nl3Var9 = nl3Var7;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            nl3Var5 = nl3Var2;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    nl3Var6 = nl3Var3;
                    if (composerStartRestartGroup.changedInstance(nl3Var6)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        nl3Var7 = nl3Var4;
                        if (composerStartRestartGroup.changedInstance(nl3Var7)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    if ((i3 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i10 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i4 != 0) {
                            nl3Var5 = null;
                        }
                        if (i6 != 0) {
                            nl3Var6 = NoOpUpdate;
                        }
                        if (i8 != 0) {
                            nl3Var7 = NoOpUpdate;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                        }
                        iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                        currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                        savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                        if (nl3Var5 != null) {
                            composerStartRestartGroup.startReplaceGroup(1313917368);
                            ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                            if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            Composer composerM5355constructorimpl9 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl9, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                            Updater.m5363setimpl(composerM5355constructorimpl9, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl9, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl9, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1314774735);
                            ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                            if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            Composer composerM5355constructorimpl10 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl10, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                            Updater.m5363setimpl(composerM5355constructorimpl10, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl10, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                    }
                    nl3Var8 = nl3Var5;
                    nl3Var9 = nl3Var7;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
                    }
                }
                i3 |= 24576;
                nl3Var7 = nl3Var4;
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i10 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        nl3Var5 = null;
                    }
                    if (i6 != 0) {
                        nl3Var6 = NoOpUpdate;
                    }
                    if (i8 != 0) {
                        nl3Var7 = NoOpUpdate;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                    }
                    iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                    currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                    savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                    if (nl3Var5 != null) {
                        composerStartRestartGroup.startReplaceGroup(1313917368);
                        ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl11 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl11, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl11, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl11, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl11, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1314774735);
                        ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl12 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl12, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl12, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl12, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                }
                nl3Var8 = nl3Var5;
                nl3Var9 = nl3Var7;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
                }
            }
            i3 |= 3072;
            nl3Var6 = nl3Var3;
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    nl3Var7 = nl3Var4;
                    if (composerStartRestartGroup.changedInstance(nl3Var7)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i10 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        nl3Var5 = null;
                    }
                    if (i6 != 0) {
                        nl3Var6 = NoOpUpdate;
                    }
                    if (i8 != 0) {
                        nl3Var7 = NoOpUpdate;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                    }
                    iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                    currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                    savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                    if (nl3Var5 != null) {
                        composerStartRestartGroup.startReplaceGroup(1313917368);
                        ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl13 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl13, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl13, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl13, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl13, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1314774735);
                        ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl14 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl14, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl14, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl14, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                }
                nl3Var8 = nl3Var5;
                nl3Var9 = nl3Var7;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
                }
            }
            i3 |= 24576;
            nl3Var7 = nl3Var4;
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i10 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i4 != 0) {
                    nl3Var5 = null;
                }
                if (i6 != 0) {
                    nl3Var6 = NoOpUpdate;
                }
                if (i8 != 0) {
                    nl3Var7 = NoOpUpdate;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                }
                iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                if (nl3Var5 != null) {
                    composerStartRestartGroup.startReplaceGroup(1313917368);
                    ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                    if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl15 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl15, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                    Updater.m5363setimpl(composerM5355constructorimpl15, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl15, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl15, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1314774735);
                    ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                    if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl16 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl16, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                    Updater.m5363setimpl(composerM5355constructorimpl16, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl16, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
            }
            nl3Var8 = nl3Var5;
            nl3Var9 = nl3Var7;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                nl3Var5 = nl3Var2;
                if (composerStartRestartGroup.changedInstance(nl3Var5)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    nl3Var6 = nl3Var3;
                    if (composerStartRestartGroup.changedInstance(nl3Var6)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        nl3Var7 = nl3Var4;
                        if (composerStartRestartGroup.changedInstance(nl3Var7)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    if ((i3 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i10 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i4 != 0) {
                            nl3Var5 = null;
                        }
                        if (i6 != 0) {
                            nl3Var6 = NoOpUpdate;
                        }
                        if (i8 != 0) {
                            nl3Var7 = NoOpUpdate;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                        }
                        iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                        currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                        savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                        if (nl3Var5 != null) {
                            composerStartRestartGroup.startReplaceGroup(1313917368);
                            ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                            if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            Composer composerM5355constructorimpl17 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl17, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                            Updater.m5363setimpl(composerM5355constructorimpl17, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl17, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl17, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1314774735);
                            ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                            if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            Composer composerM5355constructorimpl18 = Updater.m5355constructorimpl(composerStartRestartGroup);
                            m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl18, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                            Updater.m5363setimpl(composerM5355constructorimpl18, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                            Updater.m5363setimpl(composerM5355constructorimpl18, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                            composerStartRestartGroup.endNode();
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                    }
                    nl3Var8 = nl3Var5;
                    nl3Var9 = nl3Var7;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
                    }
                }
                i3 |= 24576;
                nl3Var7 = nl3Var4;
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i10 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        nl3Var5 = null;
                    }
                    if (i6 != 0) {
                        nl3Var6 = NoOpUpdate;
                    }
                    if (i8 != 0) {
                        nl3Var7 = NoOpUpdate;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                    }
                    iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                    currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                    savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                    if (nl3Var5 != null) {
                        composerStartRestartGroup.startReplaceGroup(1313917368);
                        ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl19 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl19, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl19, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl19, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl19, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1314774735);
                        ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl110 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl110, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl110, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl110, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                }
                nl3Var8 = nl3Var5;
                nl3Var9 = nl3Var7;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
                }
            }
            i3 |= 3072;
            nl3Var6 = nl3Var3;
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    nl3Var7 = nl3Var4;
                    if (composerStartRestartGroup.changedInstance(nl3Var7)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i10 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        nl3Var5 = null;
                    }
                    if (i6 != 0) {
                        nl3Var6 = NoOpUpdate;
                    }
                    if (i8 != 0) {
                        nl3Var7 = NoOpUpdate;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                    }
                    iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                    currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                    savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                    if (nl3Var5 != null) {
                        composerStartRestartGroup.startReplaceGroup(1313917368);
                        ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl111 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl111, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl111, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl111, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl111, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1314774735);
                        ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl112 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl112, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl112, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl112, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                }
                nl3Var8 = nl3Var5;
                nl3Var9 = nl3Var7;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
                }
            }
            i3 |= 24576;
            nl3Var7 = nl3Var4;
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i10 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i4 != 0) {
                    nl3Var5 = null;
                }
                if (i6 != 0) {
                    nl3Var6 = NoOpUpdate;
                }
                if (i8 != 0) {
                    nl3Var7 = NoOpUpdate;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                }
                iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                if (nl3Var5 != null) {
                    composerStartRestartGroup.startReplaceGroup(1313917368);
                    ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                    if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl113 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl113, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                    Updater.m5363setimpl(composerM5355constructorimpl113, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl113, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl113, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1314774735);
                    ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                    if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl114 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl114, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                    Updater.m5363setimpl(composerM5355constructorimpl114, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl114, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
            }
            nl3Var8 = nl3Var5;
            nl3Var9 = nl3Var7;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        nl3Var5 = nl3Var2;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                nl3Var6 = nl3Var3;
                if (composerStartRestartGroup.changedInstance(nl3Var6)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    nl3Var7 = nl3Var4;
                    if (composerStartRestartGroup.changedInstance(nl3Var7)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i10 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        nl3Var5 = null;
                    }
                    if (i6 != 0) {
                        nl3Var6 = NoOpUpdate;
                    }
                    if (i8 != 0) {
                        nl3Var7 = NoOpUpdate;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                    }
                    iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                    currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                    savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                    if (nl3Var5 != null) {
                        composerStartRestartGroup.startReplaceGroup(1313917368);
                        ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl115 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl115, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl115, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl115, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl115, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1314774735);
                        ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                        if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl116 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl116, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                        Updater.m5363setimpl(composerM5355constructorimpl116, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                        Updater.m5363setimpl(composerM5355constructorimpl116, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                }
                nl3Var8 = nl3Var5;
                nl3Var9 = nl3Var7;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
                }
            }
            i3 |= 24576;
            nl3Var7 = nl3Var4;
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i10 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i4 != 0) {
                    nl3Var5 = null;
                }
                if (i6 != 0) {
                    nl3Var6 = NoOpUpdate;
                }
                if (i8 != 0) {
                    nl3Var7 = NoOpUpdate;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                }
                iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                if (nl3Var5 != null) {
                    composerStartRestartGroup.startReplaceGroup(1313917368);
                    ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                    if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl117 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl117, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                    Updater.m5363setimpl(composerM5355constructorimpl117, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl117, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl117, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1314774735);
                    ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                    if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl118 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl118, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                    Updater.m5363setimpl(composerM5355constructorimpl118, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl118, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
            }
            nl3Var8 = nl3Var5;
            nl3Var9 = nl3Var7;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
            }
        }
        i3 |= 3072;
        nl3Var6 = nl3Var3;
        i8 = i2 & 16;
        if (i8 != 0) {
            if ((i & 24576) == 0) {
                nl3Var7 = nl3Var4;
                if (composerStartRestartGroup.changedInstance(nl3Var7)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i3 |= i9;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i10 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i4 != 0) {
                    nl3Var5 = null;
                }
                if (i6 != 0) {
                    nl3Var6 = NoOpUpdate;
                }
                if (i8 != 0) {
                    nl3Var7 = NoOpUpdate;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
                }
                iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
                savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
                if (nl3Var5 != null) {
                    composerStartRestartGroup.startReplaceGroup(1313917368);
                    ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                    if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl119 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl119, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                    Updater.m5363setimpl(composerM5355constructorimpl119, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl119, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl119, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1314774735);
                    ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                    if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl1110 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl1110, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                    Updater.m5363setimpl(composerM5355constructorimpl1110, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                    Updater.m5363setimpl(composerM5355constructorimpl1110, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
            }
            nl3Var8 = nl3Var5;
            nl3Var9 = nl3Var7;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
            }
        }
        i3 |= 24576;
        nl3Var7 = nl3Var4;
        if ((i3 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            if (i10 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i4 != 0) {
                nl3Var5 = null;
            }
            if (i6 != 0) {
                nl3Var6 = NoOpUpdate;
            }
            if (i8 != 0) {
                nl3Var7 = NoOpUpdate;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-180024211, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:199)");
            }
            iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, FocusGroupNode_androidKt.focusInteropModifier(modifier3));
            density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            lifecycleOwner = (LifecycleOwner) composerStartRestartGroup.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
            savedStateRegistryOwner = (SavedStateRegistryOwner) composerStartRestartGroup.consume(LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner());
            if (nl3Var5 != null) {
                composerStartRestartGroup.startReplaceGroup(1313917368);
                ll3VarCreateAndroidViewNodeFactory2 = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl1111 = Updater.m5355constructorimpl(composerStartRestartGroup);
                m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl1111, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                Updater.m5363setimpl(composerM5355constructorimpl1111, nl3Var5, AndroidView_androidKt$AndroidView$2$1.INSTANCE);
                Updater.m5363setimpl(composerM5355constructorimpl1111, nl3Var7, AndroidView_androidKt$AndroidView$2$2.INSTANCE);
                Updater.m5363setimpl(composerM5355constructorimpl1111, nl3Var6, AndroidView_androidKt$AndroidView$2$3.INSTANCE);
                composerStartRestartGroup.endNode();
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(1314774735);
                ll3VarCreateAndroidViewNodeFactory = createAndroidViewNodeFactory(nl3Var, composerStartRestartGroup, i3 & 14);
                if (!(composerStartRestartGroup.getApplier() instanceof UiApplier)) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(ll3VarCreateAndroidViewNodeFactory);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl1112 = Updater.m5355constructorimpl(composerStartRestartGroup);
                m9292updateViewHolderParams6NefGtU(composerM5355constructorimpl1112, modifierMaterializeModifier, iHashCode, density, lifecycleOwner, savedStateRegistryOwner, layoutDirection, currentCompositionLocalMap);
                Updater.m5363setimpl(composerM5355constructorimpl1112, nl3Var7, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
                Updater.m5363setimpl(composerM5355constructorimpl1112, nl3Var6, AndroidView_androidKt$AndroidView$3$2.INSTANCE);
                composerStartRestartGroup.endNode();
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
        }
        nl3Var8 = nl3Var5;
        nl3Var9 = nl3Var7;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(nl3Var, modifier3, nl3Var8, nl3Var6, nl3Var9, i, i2));
        }
    }

    private static final <T extends View> ll3<LayoutNode> createAndroidViewNodeFactory(nl3<? super Context, ? extends T> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2030558801, i, -1, "androidx.compose.ui.viewinterop.createAndroidViewNodeFactory (AndroidView.android.kt:252)");
        }
        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
        Context context = (Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext());
        CompositionContext compositionContextRememberCompositionContext = ComposablesKt.rememberCompositionContext(composer, 0);
        SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) composer.consume(SaveableStateRegistryKt.getLocalSaveableStateRegistry());
        View view = (View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
        boolean zChangedInstance = composer.changedInstance(context) | ((((i & 14) ^ 6) > 4 && composer.changed(nl3Var)) || (i & 6) == 4) | composer.changedInstance(compositionContextRememberCompositionContext) | composer.changedInstance(saveableStateRegistry) | composer.changed(iHashCode) | composer.changedInstance(view);
        Object objRememberedValue = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
            Object androidView_androidKt$createAndroidViewNodeFactory$1$1 = new AndroidView_androidKt$createAndroidViewNodeFactory$1$1(context, nl3Var, compositionContextRememberCompositionContext, saveableStateRegistry, iHashCode, view);
            composer.updateRememberedValue(androidView_androidKt$createAndroidViewNodeFactory$1$1);
            objRememberedValue = androidView_androidKt$createAndroidViewNodeFactory$1$1;
        }
        ll3<LayoutNode> ll3Var = (ll3) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return ll3Var;
    }

    public static final nl3<View, j59> getNoOpUpdate() {
        return NoOpUpdate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends View> ViewFactoryHolder<T> requireViewFactoryHolder(LayoutNode layoutNode) {
        AndroidViewHolder interopViewFactoryHolder$ui = layoutNode.getInteropViewFactoryHolder$ui();
        if (interopViewFactoryHolder$ui != null) {
            return (ViewFactoryHolder) interopViewFactoryHolder$ui;
        }
        throw ag.e("Required value was null.");
    }

    /* JADX INFO: renamed from: updateViewHolderParams-6NefGtU, reason: not valid java name */
    private static final <T extends View> void m9292updateViewHolderParams6NefGtU(Composer composer, Modifier modifier, int i, Density density, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, LayoutDirection layoutDirection, CompositionLocalMap compositionLocalMap) {
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Updater.m5363setimpl(composer, compositionLocalMap, companion.getSetResolvedCompositionLocals());
        Updater.m5363setimpl(composer, modifier, AndroidView_androidKt$updateViewHolderParams$1.INSTANCE);
        Updater.m5363setimpl(composer, density, AndroidView_androidKt$updateViewHolderParams$2.INSTANCE);
        Updater.m5363setimpl(composer, lifecycleOwner, AndroidView_androidKt$updateViewHolderParams$3.INSTANCE);
        Updater.m5363setimpl(composer, savedStateRegistryOwner, AndroidView_androidKt$updateViewHolderParams$4.INSTANCE);
        Updater.m5363setimpl(composer, layoutDirection, AndroidView_androidKt$updateViewHolderParams$5.INSTANCE);
        Updater.m5363setimpl(composer, Integer.valueOf(i), companion.getSetCompositeKeyHash());
    }

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.AndroidView_androidKt$AndroidView$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ nl3<Context, T> $factory;
        final /* synthetic */ Modifier $modifier;
        final /* synthetic */ nl3<T, j59> $update;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(nl3<? super Context, ? extends T> nl3Var, Modifier modifier, nl3<? super T, j59> nl3Var2, int i, int i2) {
            super(2);
            this.$factory = nl3Var;
            this.$modifier = modifier;
            this.$update = nl3Var2;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            AndroidView_androidKt.AndroidView(this.$factory, this.$modifier, this.$update, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.AndroidView_androidKt$AndroidView$4, reason: invalid class name */
    public static final class AnonymousClass4 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ nl3<Context, T> $factory;
        final /* synthetic */ Modifier $modifier;
        final /* synthetic */ nl3<T, j59> $onRelease;
        final /* synthetic */ nl3<T, j59> $onReset;
        final /* synthetic */ nl3<T, j59> $update;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(nl3<? super Context, ? extends T> nl3Var, Modifier modifier, nl3<? super T, j59> nl3Var2, nl3<? super T, j59> nl3Var3, nl3<? super T, j59> nl3Var4, int i, int i2) {
            super(2);
            this.$factory = nl3Var;
            this.$modifier = modifier;
            this.$onReset = nl3Var2;
            this.$onRelease = nl3Var3;
            this.$update = nl3Var4;
            this.$$changed = i;
            this.$$default = i2;
        }

        public final void invoke(Composer composer, int i) {
            AndroidView_androidKt.AndroidView(this.$factory, this.$modifier, this.$onReset, this.$onRelease, this.$update, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1), this.$$default);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    public static final <T extends View> void AndroidView(nl3<? super Context, ? extends T> nl3Var, Modifier modifier, nl3<? super T, j59> nl3Var2, Composer composer, int i, int i2) {
        int i3;
        Modifier modifier2;
        nl3<? super T, j59> nl3Var3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1783766393);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(nl3Var) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(modifier) ? 32 : 16;
        }
        int i5 = i2 & 4;
        if (i5 != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(nl3Var2) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 147) != 146, i3 & 1)) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            Modifier modifier3 = modifier;
            nl3<? super T, j59> nl3Var4 = i5 != 0 ? NoOpUpdate : nl3Var2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1783766393, i3, -1, "androidx.compose.ui.viewinterop.AndroidView (AndroidView.android.kt:104)");
            }
            AndroidView(nl3Var, modifier3, null, NoOpUpdate, nl3Var4, composerStartRestartGroup, (i3 & 14) | 3072 | (i3 & 112) | (57344 & (i3 << 6)), 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            nl3Var3 = nl3Var4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier2 = modifier;
            nl3Var3 = nl3Var2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(nl3Var, modifier2, nl3Var3, i, i2));
        }
    }
}
