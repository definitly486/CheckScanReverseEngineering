package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface AnimatedVisibilityScope {

    public static final class DefaultImpls {
        @Deprecated
        public static Modifier animateEnterExit(AnimatedVisibilityScope animatedVisibilityScope, Modifier modifier, EnterTransition enterTransition, ExitTransition exitTransition, String str) {
            return AnimatedVisibilityScope.super.animateEnterExit(modifier, enterTransition, exitTransition, str);
        }
    }

    static /* synthetic */ Modifier animateEnterExit$default(AnimatedVisibilityScope animatedVisibilityScope, Modifier modifier, EnterTransition enterTransition, ExitTransition exitTransition, String str, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: animateEnterExit");
            return null;
        }
        if ((i & 1) != 0) {
            enterTransition = EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null);
        }
        if ((i & 2) != 0) {
            exitTransition = EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null);
        }
        if ((i & 4) != 0) {
            str = "animateEnterExit";
        }
        return animatedVisibilityScope.animateEnterExit(modifier, enterTransition, exitTransition, str);
    }

    default Modifier animateEnterExit(Modifier modifier, EnterTransition enterTransition, ExitTransition exitTransition, String str) {
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new AnimatedVisibilityScope$animateEnterExit$$inlined$debugInspectorInfo$1(enterTransition, exitTransition, str) : InspectableValueKt.getNoInspectorInfo(), new AnonymousClass2(enterTransition, exitTransition, str));
    }

    Transition<EnterExitState> getTransition();

    /* JADX INFO: renamed from: androidx.compose.animation.AnimatedVisibilityScope$animateEnterExit$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements dm3<Modifier, Composer, Integer, Modifier> {
        final /* synthetic */ EnterTransition $enter;
        final /* synthetic */ ExitTransition $exit;
        final /* synthetic */ String $label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(EnterTransition enterTransition, ExitTransition exitTransition, String str) {
            super(3);
            this.$enter = enterTransition;
            this.$exit = exitTransition;
            this.$label = str;
        }

        public final Modifier invoke(Modifier modifier, Composer composer, int i) {
            composer.startReplaceGroup(1840112047);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1840112047, i, -1, "androidx.compose.animation.AnimatedVisibilityScope.animateEnterExit.<anonymous> (AnimatedVisibility.kt:655)");
            }
            Modifier modifierThen = modifier.then(EnterExitTransitionKt.createModifier(AnimatedVisibilityScope.this.getTransition(), this.$enter, this.$exit, false, null, this.$label, composer, 0, 12));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return modifierThen;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
            return invoke(modifier, composer, num.intValue());
        }
    }
}
