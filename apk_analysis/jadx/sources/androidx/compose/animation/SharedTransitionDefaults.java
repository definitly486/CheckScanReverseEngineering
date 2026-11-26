package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.geometry.Rect;
import defpackage.bu7;

/* JADX INFO: loaded from: classes.dex */
public final class SharedTransitionDefaults {
    public static final SharedTransitionDefaults INSTANCE = new SharedTransitionDefaults();
    private static final BoundsTransform BoundsTransform = new bu7();
    public static final int $stable = 8;

    public static final class SharedContentConfig implements SharedTransitionScope.SharedContentConfig {
        public static final int $stable = 0;
        public static final SharedContentConfig INSTANCE = new SharedContentConfig();

        private SharedContentConfig() {
        }
    }

    private SharedTransitionDefaults() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FiniteAnimationSpec BoundsTransform$lambda$0(Rect rect, Rect rect2) {
        return SharedTransitionScopeKt.DefaultSpring;
    }

    public final BoundsTransform getBoundsTransform() {
        return BoundsTransform;
    }
}
