package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.qn1;
import defpackage.rg;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
public final class ChipElevation {
    public static final int $stable = 0;
    private final float disabledElevation;
    private final float draggedElevation;
    private final float elevation;
    private final float focusedElevation;
    private final float hoveredElevation;
    private final float pressedElevation;

    private ChipElevation(float f, float f2, float f3, float f4, float f5, float f6) {
        this.elevation = f;
        this.pressedElevation = f2;
        this.focusedElevation = f3;
        this.hoveredElevation = f4;
        this.draggedElevation = f5;
        this.disabledElevation = f6;
    }

    private final State<Dp> animateElevation(boolean z, InteractionSource interactionSource, Composer composer, int i) {
        float f;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2071499570, i, -1, "androidx.compose.material3.ChipElevation.animateElevation (Chip.kt:2361)");
        }
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue == companion.getEmpty()) {
            objRememberedValue = SnapshotStateKt.mutableStateListOf();
            composer.updateRememberedValue(objRememberedValue);
        }
        SnapshotStateList snapshotStateList = (SnapshotStateList) objRememberedValue;
        Object objRememberedValue2 = composer.rememberedValue();
        if (objRememberedValue2 == companion.getEmpty()) {
            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
            composer.updateRememberedValue(objRememberedValue2);
        }
        MutableState mutableState = (MutableState) objRememberedValue2;
        boolean z2 = true;
        boolean z3 = (((i & 112) ^ 48) > 32 && composer.changed(interactionSource)) || (i & 48) == 32;
        Object objRememberedValue3 = composer.rememberedValue();
        if (z3 || objRememberedValue3 == companion.getEmpty()) {
            objRememberedValue3 = new ChipElevation$animateElevation$1$1(interactionSource, snapshotStateList, null);
            composer.updateRememberedValue(objRememberedValue3);
        }
        EffectsKt.LaunchedEffect(interactionSource, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue3, composer, (i >> 3) & 14);
        Interaction interaction = (Interaction) qn1.c0(snapshotStateList);
        if (!z) {
            f = this.disabledElevation;
        } else if (interaction instanceof PressInteraction.Press) {
            f = this.pressedElevation;
        } else if (interaction instanceof HoverInteraction.Enter) {
            f = this.hoveredElevation;
        } else if (interaction instanceof FocusInteraction.Focus) {
            f = this.focusedElevation;
        } else {
            f = interaction instanceof DragInteraction.Start ? this.draggedElevation : this.elevation;
        }
        Object objRememberedValue4 = composer.rememberedValue();
        if (objRememberedValue4 == companion.getEmpty()) {
            Object animatable = new Animatable(Dp.m9040boximpl(f), VectorConvertersKt.getVectorConverter(Dp.Companion), null, null, 12, null);
            composer.updateRememberedValue(animatable);
            objRememberedValue4 = animatable;
        }
        Animatable animatable2 = (Animatable) objRememberedValue4;
        Dp dpM9040boximpl = Dp.m9040boximpl(f);
        boolean zChangedInstance = composer.changedInstance(animatable2) | composer.changed(f);
        if ((((i & 14) ^ 6) <= 4 || !composer.changed(z)) && (i & 6) != 4) {
            z2 = false;
        }
        boolean zChangedInstance2 = zChangedInstance | z2 | composer.changedInstance(interaction);
        Object objRememberedValue5 = composer.rememberedValue();
        if (zChangedInstance2 || objRememberedValue5 == companion.getEmpty()) {
            Object chipElevation$animateElevation$2$1 = new ChipElevation$animateElevation$2$1(animatable2, f, z, interaction, mutableState, null);
            composer.updateRememberedValue(chipElevation$animateElevation$2$1);
            objRememberedValue5 = chipElevation$animateElevation$2$1;
        }
        EffectsKt.LaunchedEffect(dpM9040boximpl, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue5, composer, 0);
        State<Dp> stateAsState = animatable2.asState();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateAsState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Interaction animateElevation$lambda$2(MutableState<Interaction> mutableState) {
        return mutableState.getValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ChipElevation)) {
            return false;
        }
        ChipElevation chipElevation = (ChipElevation) obj;
        return Dp.m9047equalsimpl0(this.elevation, chipElevation.elevation) && Dp.m9047equalsimpl0(this.pressedElevation, chipElevation.pressedElevation) && Dp.m9047equalsimpl0(this.focusedElevation, chipElevation.focusedElevation) && Dp.m9047equalsimpl0(this.hoveredElevation, chipElevation.hoveredElevation) && Dp.m9047equalsimpl0(this.disabledElevation, chipElevation.disabledElevation);
    }

    /* JADX INFO: renamed from: getDisabledElevation-D9Ej5fM, reason: not valid java name */
    public final float m3194getDisabledElevationD9Ej5fM() {
        return this.disabledElevation;
    }

    /* JADX INFO: renamed from: getDraggedElevation-D9Ej5fM, reason: not valid java name */
    public final float m3195getDraggedElevationD9Ej5fM() {
        return this.draggedElevation;
    }

    /* JADX INFO: renamed from: getElevation-D9Ej5fM, reason: not valid java name */
    public final float m3196getElevationD9Ej5fM() {
        return this.elevation;
    }

    /* JADX INFO: renamed from: getFocusedElevation-D9Ej5fM, reason: not valid java name */
    public final float m3197getFocusedElevationD9Ej5fM() {
        return this.focusedElevation;
    }

    /* JADX INFO: renamed from: getHoveredElevation-D9Ej5fM, reason: not valid java name */
    public final float m3198getHoveredElevationD9Ej5fM() {
        return this.hoveredElevation;
    }

    /* JADX INFO: renamed from: getPressedElevation-D9Ej5fM, reason: not valid java name */
    public final float m3199getPressedElevationD9Ej5fM() {
        return this.pressedElevation;
    }

    public int hashCode() {
        return Dp.m9048hashCodeimpl(this.disabledElevation) + rg.c(this.hoveredElevation, rg.c(this.focusedElevation, rg.c(this.pressedElevation, Dp.m9048hashCodeimpl(this.elevation) * 31, 31), 31), 31);
    }

    public final State<Dp> shadowElevation$material3(boolean z, InteractionSource interactionSource, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1881877139, i, -1, "androidx.compose.material3.ChipElevation.shadowElevation (Chip.kt:2353)");
        }
        State<Dp> stateAnimateElevation = animateElevation(z, interactionSource, composer, i & AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateAnimateElevation;
    }

    public /* synthetic */ ChipElevation(float f, float f2, float f3, float f4, float f5, float f6, jh2 jh2Var) {
        this(f, f2, f3, f4, f5, f6);
    }
}
