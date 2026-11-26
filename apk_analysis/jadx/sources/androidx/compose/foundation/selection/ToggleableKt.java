package androidx.compose.foundation.selection;

import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.state.ToggleableState;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class ToggleableKt {
    /* JADX INFO: renamed from: toggleable-O2vRcR0, reason: not valid java name */
    public static final Modifier m2319toggleableO2vRcR0(Modifier modifier, final boolean z, MutableInteractionSource mutableInteractionSource, final Indication indication, final boolean z2, final Role role, final nl3<? super Boolean, j59> nl3Var) {
        Modifier modifierThen;
        if (indication instanceof IndicationNodeFactory) {
            modifierThen = new ToggleableElement(z, mutableInteractionSource, (IndicationNodeFactory) indication, false, z2, role, nl3Var, null);
        } else if (indication == null) {
            modifierThen = new ToggleableElement(z, mutableInteractionSource, null, false, z2, role, nl3Var, null);
        } else {
            modifierThen = mutableInteractionSource != null ? IndicationKt.indication(Modifier.Companion, mutableInteractionSource, indication).then(new ToggleableElement(z, mutableInteractionSource, null, false, z2, role, nl3Var, null)) : ComposedModifierKt.composed$default(Modifier.Companion, null, new dm3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
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
                    Modifier modifierThen2 = IndicationKt.indication(Modifier.Companion, mutableInteractionSource2, indication).then(new ToggleableElement(z, mutableInteractionSource2, null, false, z2, role, nl3Var, null));
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

    /* JADX INFO: renamed from: toggleable-O2vRcR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2320toggleableO2vRcR0$default(Modifier modifier, boolean z, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z2, Role role, nl3 nl3Var, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = true;
        }
        boolean z3 = z2;
        if ((i & 16) != 0) {
            role = null;
        }
        return m2319toggleableO2vRcR0(modifier, z, mutableInteractionSource, indication, z3, role, nl3Var);
    }

    @ul2
    /* JADX INFO: renamed from: toggleable-XHw0xAI, reason: not valid java name */
    public static final /* synthetic */ Modifier m2321toggleableXHw0xAI(Modifier modifier, final boolean z, final boolean z2, final Role role, final nl3 nl3Var) {
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new ToggleableKt$toggleableXHw0xAI$$inlined$debugInspectorInfo$1(z, z2, role, nl3Var) : InspectableValueKt.getNoInspectorInfo(), new dm3() { // from class: ex8
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return ToggleableKt.toggleable_XHw0xAI$lambda$1(z, z2, role, nl3Var, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        });
    }

    /* JADX INFO: renamed from: toggleable-XHw0xAI$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2322toggleableXHw0xAI$default(Modifier modifier, boolean z, boolean z2, Role role, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        if ((i & 4) != 0) {
            role = null;
        }
        return m2321toggleableXHw0xAI(modifier, z, z2, role, nl3Var);
    }

    /* JADX INFO: renamed from: toggleable-oSLSa3U, reason: not valid java name */
    public static final Modifier m2323toggleableoSLSa3U(Modifier modifier, boolean z, boolean z2, Role role, MutableInteractionSource mutableInteractionSource, nl3<? super Boolean, j59> nl3Var) {
        return modifier.then(new ToggleableElement(z, mutableInteractionSource, null, true, z2, role, nl3Var, null));
    }

    /* JADX INFO: renamed from: toggleable-oSLSa3U$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2324toggleableoSLSa3U$default(Modifier modifier, boolean z, boolean z2, Role role, MutableInteractionSource mutableInteractionSource, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        return m2323toggleableoSLSa3U(modifier, z, z2, (i & 4) != 0 ? null : role, (i & 8) != 0 ? null : mutableInteractionSource, nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier toggleable_XHw0xAI$lambda$1(boolean z, boolean z2, Role role, nl3 nl3Var, Modifier modifier, Composer composer, int i) {
        MutableInteractionSource mutableInteractionSource;
        composer.startReplaceGroup(290332169);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(290332169, i, -1, "androidx.compose.foundation.selection.toggleable.<anonymous> (Toggleable.kt:86)");
        }
        Indication indication = (Indication) composer.consume(IndicationKt.getLocalIndication());
        if (indication instanceof IndicationNodeFactory) {
            composer.startReplaceGroup(-778338818);
            composer.endReplaceGroup();
            mutableInteractionSource = null;
        } else {
            composer.startReplaceGroup(-778206200);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(objRememberedValue);
            }
            mutableInteractionSource = (MutableInteractionSource) objRememberedValue;
            composer.endReplaceGroup();
        }
        Modifier modifierM2319toggleableO2vRcR0 = m2319toggleableO2vRcR0(Modifier.Companion, z, mutableInteractionSource, indication, z2, role, nl3Var);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierM2319toggleableO2vRcR0;
    }

    /* JADX INFO: renamed from: triStateToggleable-O2vRcR0, reason: not valid java name */
    public static final Modifier m2325triStateToggleableO2vRcR0(Modifier modifier, final ToggleableState toggleableState, MutableInteractionSource mutableInteractionSource, final Indication indication, final boolean z, final Role role, final ll3<j59> ll3Var) {
        Modifier modifierThen;
        if (indication instanceof IndicationNodeFactory) {
            modifierThen = new TriStateToggleableElement(toggleableState, mutableInteractionSource, (IndicationNodeFactory) indication, false, z, role, ll3Var, null);
        } else if (indication == null) {
            modifierThen = new TriStateToggleableElement(toggleableState, mutableInteractionSource, null, false, z, role, ll3Var, null);
        } else {
            modifierThen = mutableInteractionSource != null ? IndicationKt.indication(Modifier.Companion, mutableInteractionSource, indication).then(new TriStateToggleableElement(toggleableState, mutableInteractionSource, null, false, z, role, ll3Var, null)) : ComposedModifierKt.composed$default(Modifier.Companion, null, new dm3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.selection.ToggleableKt$triStateToggleable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
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
                    Modifier modifierThen2 = IndicationKt.indication(Modifier.Companion, mutableInteractionSource2, indication).then(new TriStateToggleableElement(toggleableState, mutableInteractionSource2, null, false, z, role, ll3Var, null));
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

    /* JADX INFO: renamed from: triStateToggleable-O2vRcR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2326triStateToggleableO2vRcR0$default(Modifier modifier, ToggleableState toggleableState, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z, Role role, ll3 ll3Var, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        boolean z2 = z;
        if ((i & 16) != 0) {
            role = null;
        }
        return m2325triStateToggleableO2vRcR0(modifier, toggleableState, mutableInteractionSource, indication, z2, role, ll3Var);
    }

    @ul2
    /* JADX INFO: renamed from: triStateToggleable-XHw0xAI, reason: not valid java name */
    public static final /* synthetic */ Modifier m2327triStateToggleableXHw0xAI(Modifier modifier, final ToggleableState toggleableState, final boolean z, final Role role, final ll3 ll3Var) {
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new ToggleableKt$triStateToggleableXHw0xAI$$inlined$debugInspectorInfo$1(toggleableState, z, role, ll3Var) : InspectableValueKt.getNoInspectorInfo(), new dm3() { // from class: fx8
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return ToggleableKt.triStateToggleable_XHw0xAI$lambda$1(toggleableState, z, role, ll3Var, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        });
    }

    /* JADX INFO: renamed from: triStateToggleable-XHw0xAI$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2328triStateToggleableXHw0xAI$default(Modifier modifier, ToggleableState toggleableState, boolean z, Role role, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            role = null;
        }
        return m2327triStateToggleableXHw0xAI(modifier, toggleableState, z, role, ll3Var);
    }

    /* JADX INFO: renamed from: triStateToggleable-oSLSa3U, reason: not valid java name */
    public static final Modifier m2329triStateToggleableoSLSa3U(Modifier modifier, ToggleableState toggleableState, boolean z, Role role, MutableInteractionSource mutableInteractionSource, ll3<j59> ll3Var) {
        return modifier.then(new TriStateToggleableElement(toggleableState, mutableInteractionSource, null, true, z, role, ll3Var, null));
    }

    /* JADX INFO: renamed from: triStateToggleable-oSLSa3U$default, reason: not valid java name */
    public static /* synthetic */ Modifier m2330triStateToggleableoSLSa3U$default(Modifier modifier, ToggleableState toggleableState, boolean z, Role role, MutableInteractionSource mutableInteractionSource, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return m2329triStateToggleableoSLSa3U(modifier, toggleableState, z, (i & 4) != 0 ? null : role, (i & 8) != 0 ? null : mutableInteractionSource, ll3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier triStateToggleable_XHw0xAI$lambda$1(ToggleableState toggleableState, boolean z, Role role, ll3 ll3Var, Modifier modifier, Composer composer, int i) {
        MutableInteractionSource mutableInteractionSource;
        composer.startReplaceGroup(-1808118329);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1808118329, i, -1, "androidx.compose.foundation.selection.triStateToggleable.<anonymous> (Toggleable.kt:393)");
        }
        Indication indication = (Indication) composer.consume(IndicationKt.getLocalIndication());
        if (indication instanceof IndicationNodeFactory) {
            composer.startReplaceGroup(1826835840);
            composer.endReplaceGroup();
            mutableInteractionSource = null;
        } else {
            composer.startReplaceGroup(1826968458);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(objRememberedValue);
            }
            mutableInteractionSource = (MutableInteractionSource) objRememberedValue;
            composer.endReplaceGroup();
        }
        Modifier modifierM2325triStateToggleableO2vRcR0 = m2325triStateToggleableO2vRcR0(Modifier.Companion, toggleableState, mutableInteractionSource, indication, z, role, ll3Var);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierM2325triStateToggleableO2vRcR0;
    }
}
