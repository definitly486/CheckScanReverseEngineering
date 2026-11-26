package androidx.compose.foundation.selection;

import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.Role;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class SelectableKt {
    /* JADX INFO: renamed from: selectable-O2vRcR0, reason: not valid java name */
    public static final Modifier m2312selectableO2vRcR0(Modifier modifier, final boolean z, MutableInteractionSource mutableInteractionSource, final Indication indication, final boolean z2, final Role role, final ll3<j59> ll3Var) {
        Modifier modifierThen;
        if (indication instanceof IndicationNodeFactory) {
            modifierThen = new SelectableElement(z, mutableInteractionSource, (IndicationNodeFactory) indication, false, z2, role, ll3Var, null);
        } else if (indication == null) {
            modifierThen = new SelectableElement(z, mutableInteractionSource, null, false, z2, role, ll3Var, null);
        } else {
            modifierThen = mutableInteractionSource != null ? IndicationKt.indication(Modifier.Companion, mutableInteractionSource, indication).then(new SelectableElement(z, mutableInteractionSource, null, false, z2, role, ll3Var, null)) : ComposedModifierKt.composed$default(Modifier.Companion, null, new dm3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.selection.SelectableKt$selectable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
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
                    Modifier modifierThen2 = IndicationKt.indication(Modifier.Companion, mutableInteractionSource2, indication).then(new SelectableElement(z, mutableInteractionSource2, null, false, z2, role, ll3Var, null));
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

    /* JADX INFO: renamed from: selectable-O2vRcR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2313selectableO2vRcR0$default(Modifier modifier, boolean z, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z2, Role role, ll3 ll3Var, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = true;
        }
        boolean z3 = z2;
        if ((i & 16) != 0) {
            role = null;
        }
        return m2312selectableO2vRcR0(modifier, z, mutableInteractionSource, indication, z3, role, ll3Var);
    }

    @ul2
    /* JADX INFO: renamed from: selectable-XHw0xAI, reason: not valid java name */
    public static final /* synthetic */ Modifier m2314selectableXHw0xAI(Modifier modifier, final boolean z, final boolean z2, final Role role, final ll3 ll3Var) {
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new SelectableKt$selectableXHw0xAI$$inlined$debugInspectorInfo$1(z, z2, role, ll3Var) : InspectableValueKt.getNoInspectorInfo(), new dm3() { // from class: mm7
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return SelectableKt.selectable_XHw0xAI$lambda$1(z, z2, role, ll3Var, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        });
    }

    /* JADX INFO: renamed from: selectable-XHw0xAI$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2315selectableXHw0xAI$default(Modifier modifier, boolean z, boolean z2, Role role, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        if ((i & 4) != 0) {
            role = null;
        }
        return m2314selectableXHw0xAI(modifier, z, z2, role, ll3Var);
    }

    /* JADX INFO: renamed from: selectable-oSLSa3U, reason: not valid java name */
    public static final Modifier m2316selectableoSLSa3U(Modifier modifier, boolean z, boolean z2, Role role, MutableInteractionSource mutableInteractionSource, ll3<j59> ll3Var) {
        return modifier.then(new SelectableElement(z, mutableInteractionSource, null, true, z2, role, ll3Var, null));
    }

    /* JADX INFO: renamed from: selectable-oSLSa3U$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2317selectableoSLSa3U$default(Modifier modifier, boolean z, boolean z2, Role role, MutableInteractionSource mutableInteractionSource, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        return m2316selectableoSLSa3U(modifier, z, z2, (i & 4) != 0 ? null : role, (i & 8) != 0 ? null : mutableInteractionSource, ll3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier selectable_XHw0xAI$lambda$1(boolean z, boolean z2, Role role, ll3 ll3Var, Modifier modifier, Composer composer, int i) {
        MutableInteractionSource mutableInteractionSource;
        composer.startReplaceGroup(-2124609672);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2124609672, i, -1, "androidx.compose.foundation.selection.selectable.<anonymous> (Selectable.kt:82)");
        }
        Indication indication = (Indication) composer.consume(IndicationKt.getLocalIndication());
        if (indication instanceof IndicationNodeFactory) {
            composer.startReplaceGroup(686451247);
            composer.endReplaceGroup();
            mutableInteractionSource = null;
        } else {
            composer.startReplaceGroup(686583865);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(objRememberedValue);
            }
            mutableInteractionSource = (MutableInteractionSource) objRememberedValue;
            composer.endReplaceGroup();
        }
        Modifier modifierM2312selectableO2vRcR0 = m2312selectableO2vRcR0(Modifier.Companion, z, mutableInteractionSource, indication, z2, role, ll3Var);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierM2312selectableO2vRcR0;
    }
}
