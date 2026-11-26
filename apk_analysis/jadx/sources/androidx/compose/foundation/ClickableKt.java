package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.gestures.ScrollableContainerNode;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.Role;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.i1;
import defpackage.j59;
import defpackage.kl1;
import defpackage.ll3;
import defpackage.ml1;
import defpackage.n07;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class ClickableKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean changedToUp(IndirectPointerInputChange indirectPointerInputChange) {
        return (indirectPointerInputChange.isConsumed() || !indirectPointerInputChange.getPreviousPressed() || indirectPointerInputChange.getPressed()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean changedToUpIgnoreConsumed(IndirectPointerInputChange indirectPointerInputChange) {
        return indirectPointerInputChange.getPreviousPressed() && !indirectPointerInputChange.getPressed();
    }

    /* JADX INFO: renamed from: clickable-O2vRcR0, reason: not valid java name */
    public static final Modifier m1319clickableO2vRcR0(Modifier modifier, MutableInteractionSource mutableInteractionSource, final Indication indication, final boolean z, final String str, final Role role, final ll3<j59> ll3Var) {
        Modifier modifierComposed$default;
        if (indication instanceof IndicationNodeFactory) {
            modifierComposed$default = new ClickableElement(mutableInteractionSource, (IndicationNodeFactory) indication, false, z, str, role, ll3Var, null);
        } else if (indication == null) {
            modifierComposed$default = new ClickableElement(mutableInteractionSource, null, false, z, str, role, ll3Var, null);
        } else if (mutableInteractionSource != null) {
            modifierComposed$default = IndicationKt.indication(Modifier.Companion, mutableInteractionSource, indication).then(new ClickableElement(mutableInteractionSource, null, false, z, str, role, ll3Var, null));
        } else {
            modifierComposed$default = ComposedModifierKt.composed$default(Modifier.Companion, null, new dm3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
                public final Modifier invoke(Modifier modifier2, Composer composer, int i) {
                    composer.startReplaceGroup(-1525724089);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1525724089, i, -1, "androidx.compose.foundation.clickableWithIndicationIfNeeded.<anonymous> (Clickable.kt:637)");
                    }
                    Object objRememberedValue = composer.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composer.updateRememberedValue(objRememberedValue);
                    }
                    MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) objRememberedValue;
                    Modifier modifierThen = IndicationKt.indication(Modifier.Companion, mutableInteractionSource2, indication).then(new ClickableElement(mutableInteractionSource2, null, false, z, str, role, ll3Var, null));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer.endReplaceGroup();
                    return modifierThen;
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                    return invoke(modifier2, composer, num.intValue());
                }
            }, 1, null);
        }
        return modifier.then(modifierComposed$default);
    }

    /* JADX INFO: renamed from: clickable-O2vRcR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1320clickableO2vRcR0$default(Modifier modifier, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z, String str, Role role, ll3 ll3Var, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return m1319clickableO2vRcR0(modifier, mutableInteractionSource, indication, z, (i & 8) != 0 ? null : str, (i & 16) != 0 ? null : role, ll3Var);
    }

    @ul2
    /* JADX INFO: renamed from: clickable-XHw0xAI, reason: not valid java name */
    public static final /* synthetic */ Modifier m1321clickableXHw0xAI(Modifier modifier, final boolean z, final String str, final Role role, final ll3 ll3Var) {
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new ClickableKt$clickableXHw0xAI$$inlined$debugInspectorInfo$1(z, str, role, ll3Var) : InspectableValueKt.getNoInspectorInfo(), new dm3() { // from class: nl1
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return ClickableKt.clickable_XHw0xAI$lambda$1(z, str, role, ll3Var, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        });
    }

    /* JADX INFO: renamed from: clickable-XHw0xAI$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1322clickableXHw0xAI$default(Modifier modifier, boolean z, String str, Role role, ll3 ll3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            role = null;
        }
        return m1321clickableXHw0xAI(modifier, z, str, role, ll3Var);
    }

    /* JADX INFO: renamed from: clickable-oSLSa3U, reason: not valid java name */
    public static final Modifier m1323clickableoSLSa3U(Modifier modifier, boolean z, String str, Role role, MutableInteractionSource mutableInteractionSource, ll3<j59> ll3Var) {
        return modifier.then(new ClickableElement(mutableInteractionSource, null, true, z, str, role, ll3Var, null));
    }

    /* JADX INFO: renamed from: clickable-oSLSa3U$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1324clickableoSLSa3U$default(Modifier modifier, boolean z, String str, Role role, MutableInteractionSource mutableInteractionSource, ll3 ll3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            role = null;
        }
        return m1323clickableoSLSa3U(modifier, z, str, role, (i & 8) != 0 ? null : mutableInteractionSource, ll3Var);
    }

    public static final Modifier clickableWithIndicationIfNeeded(Modifier modifier, MutableInteractionSource mutableInteractionSource, final Indication indication, final bm3<? super MutableInteractionSource, ? super IndicationNodeFactory, ? extends Modifier> bm3Var) {
        Modifier modifierThen;
        if (indication instanceof IndicationNodeFactory) {
            modifierThen = bm3Var.invoke(mutableInteractionSource, indication);
        } else if (indication == null) {
            modifierThen = bm3Var.invoke(mutableInteractionSource, null);
        } else {
            modifierThen = mutableInteractionSource != null ? IndicationKt.indication(Modifier.Companion, mutableInteractionSource, indication).then(bm3Var.invoke(mutableInteractionSource, null)) : ComposedModifierKt.composed$default(Modifier.Companion, null, new dm3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ClickableKt.clickableWithIndicationIfNeeded.1
                public final Modifier invoke(Modifier modifier2, Composer composer, int i) {
                    composer.startReplaceGroup(-1525724089);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1525724089, i, -1, "androidx.compose.foundation.clickableWithIndicationIfNeeded.<anonymous> (Clickable.kt:637)");
                    }
                    Object objRememberedValue = composer.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composer.updateRememberedValue(objRememberedValue);
                    }
                    MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) objRememberedValue;
                    Modifier modifierThen2 = IndicationKt.indication(Modifier.Companion, mutableInteractionSource2, indication).then(bm3Var.invoke(mutableInteractionSource2, null));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer.endReplaceGroup();
                    return modifierThen2;
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                    return invoke(modifier2, composer, num.intValue());
                }
            }, 1, null);
        }
        return modifier.then(modifierThen);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier clickable_XHw0xAI$lambda$1(boolean z, String str, Role role, ll3 ll3Var, Modifier modifier, Composer composer, int i) {
        MutableInteractionSource mutableInteractionSource;
        composer.startReplaceGroup(-756081143);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-756081143, i, -1, "androidx.compose.foundation.clickable.<anonymous> (Clickable.kt:144)");
        }
        Indication indication = (Indication) composer.consume(IndicationKt.getLocalIndication());
        if (indication instanceof IndicationNodeFactory) {
            composer.startReplaceGroup(-1604682242);
            composer.endReplaceGroup();
            mutableInteractionSource = null;
        } else {
            composer.startReplaceGroup(-1604549624);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(objRememberedValue);
            }
            mutableInteractionSource = (MutableInteractionSource) objRememberedValue;
            composer.endReplaceGroup();
        }
        Modifier modifierM1319clickableO2vRcR0 = m1319clickableO2vRcR0(Modifier.Companion, mutableInteractionSource, indication, z, str, role, ll3Var);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierM1319clickableO2vRcR0;
    }

    @ul2
    /* JADX INFO: renamed from: combinedClickable-XVZzFYc, reason: not valid java name */
    public static final /* synthetic */ Modifier m1325combinedClickableXVZzFYc(Modifier modifier, MutableInteractionSource mutableInteractionSource, final Indication indication, final boolean z, final String str, final Role role, final String str2, final ll3 ll3Var, final ll3 ll3Var2, final ll3 ll3Var3) {
        Modifier modifierComposed$default;
        if (indication instanceof IndicationNodeFactory) {
            modifierComposed$default = new CombinedClickableElement(mutableInteractionSource, (IndicationNodeFactory) indication, false, z, str, role, ll3Var3, str2, ll3Var, ll3Var2, true, null);
        } else if (indication == null) {
            modifierComposed$default = new CombinedClickableElement(mutableInteractionSource, null, false, z, str, role, ll3Var3, str2, ll3Var, ll3Var2, true, null);
        } else if (mutableInteractionSource != null) {
            modifierComposed$default = IndicationKt.indication(Modifier.Companion, mutableInteractionSource, indication).then(new CombinedClickableElement(mutableInteractionSource, null, false, z, str, role, ll3Var3, str2, ll3Var, ll3Var2, true, null));
        } else {
            modifierComposed$default = ComposedModifierKt.composed$default(Modifier.Companion, null, new dm3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable-XVZzFYc$$inlined$clickableWithIndicationIfNeeded$1
                public final Modifier invoke(Modifier modifier2, Composer composer, int i) {
                    composer.startReplaceGroup(-1525724089);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1525724089, i, -1, "androidx.compose.foundation.clickableWithIndicationIfNeeded.<anonymous> (Clickable.kt:637)");
                    }
                    Object objRememberedValue = composer.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composer.updateRememberedValue(objRememberedValue);
                    }
                    MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) objRememberedValue;
                    Modifier modifierThen = IndicationKt.indication(Modifier.Companion, mutableInteractionSource2, indication).then(new CombinedClickableElement(mutableInteractionSource2, null, false, z, str, role, ll3Var3, str2, ll3Var, ll3Var2, true, null));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer.endReplaceGroup();
                    return modifierThen;
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                    return invoke(modifier2, composer, num.intValue());
                }
            }, 1, null);
        }
        return modifier.then(modifierComposed$default);
    }

    /* JADX INFO: renamed from: combinedClickable-XVZzFYc$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1326combinedClickableXVZzFYc$default(Modifier modifier, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z, String str, Role role, String str2, ll3 ll3Var, ll3 ll3Var2, ll3 ll3Var3, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return m1325combinedClickableXVZzFYc(modifier, mutableInteractionSource, indication, z, (i & 8) != 0 ? null : str, (i & 16) != 0 ? null : role, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? null : ll3Var, (i & 128) != 0 ? null : ll3Var2, ll3Var3);
    }

    /* JADX INFO: renamed from: combinedClickable-auXiCPI, reason: not valid java name */
    public static final Modifier m1327combinedClickableauXiCPI(Modifier modifier, MutableInteractionSource mutableInteractionSource, final Indication indication, final boolean z, final String str, final Role role, final String str2, final ll3<j59> ll3Var, final ll3<j59> ll3Var2, final boolean z2, final ll3<j59> ll3Var3) {
        Modifier modifierComposed$default;
        if (indication instanceof IndicationNodeFactory) {
            modifierComposed$default = new CombinedClickableElement(mutableInteractionSource, (IndicationNodeFactory) indication, false, z, str, role, ll3Var3, str2, ll3Var, ll3Var2, z2, null);
        } else if (indication == null) {
            modifierComposed$default = new CombinedClickableElement(mutableInteractionSource, null, false, z, str, role, ll3Var3, str2, ll3Var, ll3Var2, z2, null);
        } else if (mutableInteractionSource != null) {
            modifierComposed$default = IndicationKt.indication(Modifier.Companion, mutableInteractionSource, indication).then(new CombinedClickableElement(mutableInteractionSource, null, false, z, str, role, ll3Var3, str2, ll3Var, ll3Var2, z2, null));
        } else {
            modifierComposed$default = ComposedModifierKt.composed$default(Modifier.Companion, null, new dm3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable-auXiCPI$$inlined$clickableWithIndicationIfNeeded$1
                public final Modifier invoke(Modifier modifier2, Composer composer, int i) {
                    composer.startReplaceGroup(-1525724089);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1525724089, i, -1, "androidx.compose.foundation.clickableWithIndicationIfNeeded.<anonymous> (Clickable.kt:637)");
                    }
                    Object objRememberedValue = composer.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                        composer.updateRememberedValue(objRememberedValue);
                    }
                    MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) objRememberedValue;
                    Modifier modifierThen = IndicationKt.indication(Modifier.Companion, mutableInteractionSource2, indication).then(new CombinedClickableElement(mutableInteractionSource2, null, false, z, str, role, ll3Var3, str2, ll3Var, ll3Var2, z2, null));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer.endReplaceGroup();
                    return modifierThen;
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                    return invoke(modifier2, composer, num.intValue());
                }
            }, 1, null);
        }
        return modifier.then(modifierComposed$default);
    }

    /* JADX INFO: renamed from: combinedClickable-auXiCPI$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1328combinedClickableauXiCPI$default(Modifier modifier, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z, String str, Role role, String str2, ll3 ll3Var, ll3 ll3Var2, boolean z2, ll3 ll3Var3, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            str = null;
        }
        if ((i & 16) != 0) {
            role = null;
        }
        if ((i & 32) != 0) {
            str2 = null;
        }
        if ((i & 64) != 0) {
            ll3Var = null;
        }
        if ((i & 128) != 0) {
            ll3Var2 = null;
        }
        if ((i & 256) != 0) {
            z2 = true;
        }
        return m1327combinedClickableauXiCPI(modifier, mutableInteractionSource, indication, z, str, role, str2, ll3Var, ll3Var2, z2, ll3Var3);
    }

    @ul2
    /* JADX INFO: renamed from: combinedClickable-cJG_KMw, reason: not valid java name */
    public static final /* synthetic */ Modifier m1329combinedClickablecJG_KMw(Modifier modifier, final boolean z, final String str, final Role role, final String str2, final ll3 ll3Var, final ll3 ll3Var2, final ll3 ll3Var3) {
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new ClickableKt$combinedClickablecJG_KMw$$inlined$debugInspectorInfo$1(z, str, role, ll3Var3, ll3Var2, ll3Var, str2) : InspectableValueKt.getNoInspectorInfo(), new dm3() { // from class: ll1
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return ClickableKt.combinedClickable_cJG_KMw$lambda$1(z, str, role, str2, ll3Var, ll3Var2, ll3Var3, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        });
    }

    /* JADX INFO: renamed from: combinedClickable-cJG_KMw$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1330combinedClickablecJG_KMw$default(Modifier modifier, boolean z, String str, Role role, String str2, ll3 ll3Var, ll3 ll3Var2, ll3 ll3Var3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            role = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            ll3Var = null;
        }
        return m1329combinedClickablecJG_KMw(modifier, z, str, role, str2, ll3Var, (i & 32) != 0 ? null : ll3Var2, ll3Var3);
    }

    @ul2
    /* JADX INFO: renamed from: combinedClickable-f5TDLPQ, reason: not valid java name */
    public static final /* synthetic */ Modifier m1331combinedClickablef5TDLPQ(Modifier modifier, final boolean z, final String str, final Role role, final String str2, final ll3 ll3Var, final ll3 ll3Var2, final boolean z2, final ll3 ll3Var3) {
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new ClickableKt$combinedClickablef5TDLPQ$$inlined$debugInspectorInfo$1(z, str, role, ll3Var3, ll3Var2, ll3Var, str2, z2) : InspectableValueKt.getNoInspectorInfo(), new dm3() { // from class: jl1
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return ClickableKt.combinedClickable_f5TDLPQ$lambda$1(z, str, role, str2, ll3Var, ll3Var2, z2, ll3Var3, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        });
    }

    /* JADX INFO: renamed from: combinedClickable-f5TDLPQ$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1332combinedClickablef5TDLPQ$default(Modifier modifier, boolean z, String str, Role role, String str2, ll3 ll3Var, ll3 ll3Var2, boolean z2, ll3 ll3Var3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            role = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            ll3Var = null;
        }
        if ((i & 32) != 0) {
            ll3Var2 = null;
        }
        if ((i & 64) != 0) {
            z2 = true;
        }
        return m1331combinedClickablef5TDLPQ(modifier, z, str, role, str2, ll3Var, ll3Var2, z2, ll3Var3);
    }

    /* JADX INFO: renamed from: combinedClickable-hoGz1lA, reason: not valid java name */
    public static final Modifier m1333combinedClickablehoGz1lA(Modifier modifier, boolean z, String str, Role role, String str2, ll3<j59> ll3Var, ll3<j59> ll3Var2, boolean z2, MutableInteractionSource mutableInteractionSource, ll3<j59> ll3Var3) {
        return modifier.then(new CombinedClickableElement(mutableInteractionSource, null, true, z, str, role, ll3Var3, str2, ll3Var, ll3Var2, z2, null));
    }

    /* JADX INFO: renamed from: combinedClickable-hoGz1lA$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1334combinedClickablehoGz1lA$default(Modifier modifier, boolean z, String str, Role role, String str2, ll3 ll3Var, ll3 ll3Var2, boolean z2, MutableInteractionSource mutableInteractionSource, ll3 ll3Var3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            role = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            ll3Var = null;
        }
        if ((i & 32) != 0) {
            ll3Var2 = null;
        }
        if ((i & 64) != 0) {
            z2 = true;
        }
        if ((i & 128) != 0) {
            mutableInteractionSource = null;
        }
        return m1333combinedClickablehoGz1lA(modifier, z, str, role, str2, ll3Var, ll3Var2, z2, mutableInteractionSource, ll3Var3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier combinedClickable_cJG_KMw$lambda$1(boolean z, String str, Role role, String str2, ll3 ll3Var, ll3 ll3Var2, ll3 ll3Var3, Modifier modifier, Composer composer, int i) {
        MutableInteractionSource mutableInteractionSource;
        composer.startReplaceGroup(1969174843);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1969174843, i, -1, "androidx.compose.foundation.combinedClickable.<anonymous> (Clickable.kt:474)");
        }
        Indication indication = (Indication) composer.consume(IndicationKt.getLocalIndication());
        if (indication instanceof IndicationNodeFactory) {
            composer.startReplaceGroup(-1270399604);
            composer.endReplaceGroup();
            mutableInteractionSource = null;
        } else {
            composer.startReplaceGroup(-1270266986);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(objRememberedValue);
            }
            mutableInteractionSource = (MutableInteractionSource) objRememberedValue;
            composer.endReplaceGroup();
        }
        Modifier modifierM1327combinedClickableauXiCPI = m1327combinedClickableauXiCPI(Modifier.Companion, mutableInteractionSource, indication, z, str, role, str2, ll3Var, ll3Var2, true, ll3Var3);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierM1327combinedClickableauXiCPI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier combinedClickable_f5TDLPQ$lambda$1(boolean z, String str, Role role, String str2, ll3 ll3Var, ll3 ll3Var2, boolean z2, ll3 ll3Var3, Modifier modifier, Composer composer, int i) {
        MutableInteractionSource mutableInteractionSource;
        composer.startReplaceGroup(-1534186401);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1534186401, i, -1, "androidx.compose.foundation.combinedClickable.<anonymous> (Clickable.kt:353)");
        }
        Indication indication = (Indication) composer.consume(IndicationKt.getLocalIndication());
        if (indication instanceof IndicationNodeFactory) {
            composer.startReplaceGroup(2095040488);
            composer.endReplaceGroup();
            mutableInteractionSource = null;
        } else {
            composer.startReplaceGroup(2095173106);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(objRememberedValue);
            }
            mutableInteractionSource = (MutableInteractionSource) objRememberedValue;
            composer.endReplaceGroup();
        }
        Modifier modifierM1327combinedClickableauXiCPI = m1327combinedClickableauXiCPI(Modifier.Companion, mutableInteractionSource, indication, z, str, role, str2, ll3Var, ll3Var2, z2, ll3Var3);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierM1327combinedClickableauXiCPI;
    }

    public static final boolean hasInterestedParent(DelegatingNode delegatingNode, IndirectPointerInputChange indirectPointerInputChange) {
        n07 n07Var = new n07();
        GestureNodeKt.traverseAncestorGestureConnections(delegatingNode, new kl1(0, indirectPointerInputChange, n07Var));
        return n07Var.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasInterestedParent$lambda$0(IndirectPointerInputChange indirectPointerInputChange, n07 n07Var, GestureConnection gestureConnection) {
        boolean z = n07Var.b || gestureConnection.isInterested(indirectPointerInputChange);
        n07Var.b = z;
        return !z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasInterestedParent$lambda$1(PointerInputChange pointerInputChange, n07 n07Var, GestureConnection gestureConnection) {
        boolean z = n07Var.b || gestureConnection.isInterested(pointerInputChange);
        n07Var.b = z;
        return !z;
    }

    public static final boolean hasScrollableContainer(TraversableNode traversableNode) {
        n07 n07Var = new n07();
        TraversableNodeKt.traverseAncestors(traversableNode, ScrollableContainerNode.TraverseKey, new i1(n07Var, 1));
        return n07Var.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0013  */
    public static final boolean hasScrollableContainer$lambda$0(n07 n07Var, TraversableNode traversableNode) {
        boolean z;
        if (n07Var.b) {
            z = true;
        } else {
            traversableNode.getClass();
            if (((ScrollableContainerNode) traversableNode).getEnabled()) {
                z = true;
            } else {
                z = false;
            }
        }
        n07Var.b = z;
        return !z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: isClick-ZmokQxo, reason: not valid java name */
    public static final boolean m1335isClickZmokQxo(KeyEvent keyEvent) {
        return KeyEventType.m7394equalsimpl0(KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent), KeyEventType.Companion.m7399getKeyUpCS__XNY()) && m1336isEnterZmokQxo(keyEvent);
    }

    /* JADX INFO: renamed from: isEnter-ZmokQxo, reason: not valid java name */
    private static final boolean m1336isEnterZmokQxo(KeyEvent keyEvent) {
        long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
        Key.Companion companion = Key.Companion;
        return Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7154getDirectionCenterEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7168getEnterEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7265getNumPadEnterEK5gGoQ()) || Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion.m7316getSpacebarEK5gGoQ());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: isPress-ZmokQxo, reason: not valid java name */
    public static final boolean m1337isPressZmokQxo(KeyEvent keyEvent) {
        return KeyEventType.m7394equalsimpl0(KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent), KeyEventType.Companion.m7398getKeyDownCS__XNY()) && m1336isEnterZmokQxo(keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unsupportedIndicationExceptionMessage(Indication indication) {
        return "clickable only supports IndicationNodeFactory instances provided to LocalIndication, but Indication was provided instead. Either migrate the Indication implementation to implement IndicationNodeFactory, or use the other clickable overload that takes an Indication parameter, and explicitly pass LocalIndication.current there. The Indication instance provided here was: " + indication;
    }

    public static final boolean hasInterestedParent(DelegatingNode delegatingNode, PointerInputChange pointerInputChange) {
        n07 n07Var = new n07();
        GestureNodeKt.traverseAncestorGestureConnections(delegatingNode, new ml1(0, pointerInputChange, n07Var));
        return n07Var.b;
    }
}
