package androidx.compose.foundation.style;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.ui.unit.Density;
import defpackage.av0;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.y22;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class StyleAnimations {
    public static final int $stable = 8;
    private boolean inGuard;
    private final StyleOuterNode node;
    private int size;
    private final ResolvedStyle currentStyle = new ResolvedStyle();
    private Entry[] values = new Entry[2];

    public final class Entry {
        private AnimationSpec<Float> fromSpec;
        private mb4 job;
        private final int key;
        private Style style;
        private AnimationSpec<Float> toSpec;
        private final Animatable<Float, AnimationVector1D> anim = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
        private final ResolvedStyle styleScope = new ResolvedStyle();
        private int state = 3;

        public Entry(int i, Style style, AnimationSpec<Float> animationSpec, AnimationSpec<Float> animationSpec2) {
            this.key = i;
            this.style = style;
            this.toSpec = animationSpec;
            this.fromSpec = animationSpec2;
        }

        public final void animateIn(y22 y22Var) {
            mb4 mb4Var = this.job;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.job = av0.c(y22Var, null, null, new StyleAnimations$Entry$animateIn$1(this, null), 3);
        }

        public final void animateOut(y22 y22Var) {
            mb4 mb4Var = this.job;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.job = av0.c(y22Var, null, null, new StyleAnimations$Entry$animateOut$1(this, StyleAnimations.this, null), 3);
        }

        public final Animatable<Float, AnimationVector1D> getAnim() {
            return this.anim;
        }

        public final AnimationSpec<Float> getFromSpec() {
            return this.fromSpec;
        }

        public final mb4 getJob() {
            return this.job;
        }

        public final int getKey() {
            return this.key;
        }

        public final int getState() {
            return this.state;
        }

        public final Style getStyle() {
            return this.style;
        }

        public final ResolvedStyle getStyleScope() {
            return this.styleScope;
        }

        public final AnimationSpec<Float> getToSpec() {
            return this.toSpec;
        }

        public final void setFromSpec(AnimationSpec<Float> animationSpec) {
            this.fromSpec = animationSpec;
        }

        public final void setJob(mb4 mb4Var) {
            this.job = mb4Var;
        }

        public final void setState(int i) {
            this.state = i;
        }

        public final void setStyle(Style style) {
            this.style = style;
        }

        public final void setToSpec(AnimationSpec<Float> animationSpec) {
            this.toSpec = animationSpec;
        }

        public final void snapIn(y22 y22Var) {
            mb4 mb4Var = this.job;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.job = av0.c(y22Var, null, null, new StyleAnimations$Entry$snapIn$1(this, null), 3);
        }

        public final void snapOut(y22 y22Var) {
            mb4 mb4Var = this.job;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.job = av0.c(y22Var, null, null, new StyleAnimations$Entry$snapOut$1(this, StyleAnimations.this, null), 3);
        }
    }

    public StyleAnimations(StyleOuterNode styleOuterNode) {
        this.node = styleOuterNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cleanupAnimations() {
        Entry entry;
        Entry[] entryArr = this.values;
        int i = this.size;
        int i2 = 0;
        for (int i3 = 0; i3 < i && (entry = entryArr[i3]) != null; i3++) {
            if (entry.getState() != 4 || entry.getAnim().isRunning()) {
                if (i2 != i3) {
                    entryArr[i2] = entry;
                    entryArr[i3] = null;
                }
                i2++;
            } else {
                entryArr[i3] = null;
            }
        }
        this.size = i2;
        if (i == i2 || this.inGuard) {
            return;
        }
        this.inGuard = true;
        try {
            StyleOuterNode.resolveStyleAndInvalidate$default(this.node, false, 1, null);
        } finally {
            this.inGuard = false;
        }
    }

    private final void ensureCapacity(int i) {
        Entry[] entryArr = this.values;
        int length = entryArr.length;
        if (i > length) {
            this.values = (Entry[]) Arrays.copyOf(entryArr, Math.max(length * 2, 2));
        }
    }

    private final Entry find(int i) {
        Entry[] entryArr = this.values;
        int i2 = this.size;
        for (int i3 = 0; i3 < i2; i3++) {
            Entry entry = entryArr[i3];
            if (entry != null && entry.getKey() == i) {
                return entry;
            }
        }
        return null;
    }

    private final void forEach(nl3<? super Entry, j59> nl3Var) {
        Entry[] entryArr = this.values;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            Entry entry = entryArr[i2];
            if (entry != null) {
                nl3Var.invoke(entry);
            }
        }
    }

    private final void recursionGuard(ll3<j59> ll3Var) {
        if (this.inGuard) {
            return;
        }
        this.inGuard = true;
        try {
            ll3Var.invoke();
        } finally {
            this.inGuard = false;
        }
    }

    public final void applyAnimationsTo(ResolvedStyle resolvedStyle, Density density, StyleOuterNode styleOuterNode, int i) {
        Entry[] entryArr = this.values;
        int i2 = this.size;
        for (int i3 = 0; i3 < i2; i3++) {
            Entry entry = entryArr[i3];
            if (entry != null) {
                resolvedStyle.copyInto$foundation(entry.getStyleScope());
                entry.getStyleScope().resolve$foundation(entry.getStyle(), styleOuterNode, density, true);
                if ((resolvedStyle.diff$foundation(entry.getStyleScope(), i) & i) != 0) {
                    ResolvedStyleKt.lerp(resolvedStyle, entry.getStyleScope(), entry.getAnim().getValue().floatValue(), i, resolvedStyle);
                }
            }
        }
    }

    public final StyleOuterNode getNode() {
        return this.node;
    }

    public final boolean isNotEmpty() {
        return this.size > 0;
    }

    public final int postResolve(StyleOuterNode styleOuterNode, Density density, boolean z) {
        Entry[] entryArr = this.values;
        int i = this.size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Entry entry = entryArr[i3];
            if (entry != null) {
                if (entry.getState() == 3) {
                    entry.getStyleScope().resolve$foundation(entry.getStyle(), styleOuterNode, density, true);
                    i2 |= entry.getStyleScope().flags;
                    if (z) {
                        entry.animateIn(styleOuterNode.getNode().getCoroutineScope());
                    } else {
                        entry.snapIn(styleOuterNode.getNode().getCoroutineScope());
                    }
                } else if (entry.getState() == 1) {
                    entry.setState(4);
                    entry.getStyleScope().clear$foundation();
                    entry.getStyleScope().resolve$foundation(entry.getStyle(), styleOuterNode, density, true);
                    i2 |= entry.getStyleScope().flags;
                    if (z) {
                        entry.animateOut(styleOuterNode.getNode().getCoroutineScope());
                    } else {
                        entry.snapOut(styleOuterNode.getNode().getCoroutineScope());
                    }
                }
            }
        }
        return i2;
    }

    public final void preResolve() {
        Entry[] entryArr = this.values;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            Entry entry = entryArr[i2];
            if (entry != null) {
                int state = entry.getState();
                int state2 = 1;
                if (state != 2 && state != 3) {
                    state2 = entry.getState();
                }
                entry.setState(state2);
            }
        }
    }

    public final void record(int i, Style style, AnimationSpec<Float> animationSpec, AnimationSpec<Float> animationSpec2) {
        Entry entryFind = find(i);
        if (entryFind == null) {
            ensureCapacity(this.size + 1);
            this.values[this.size] = new Entry(i, style, animationSpec, animationSpec2);
            this.size++;
            return;
        }
        entryFind.setStyle(style);
        int state = entryFind.getState();
        if (state == 1) {
            entryFind.setState(2);
        } else {
            if (state != 4) {
                return;
            }
            entryFind.setState(3);
        }
    }

    public final ResolvedStyle withAnimations(Density density, ResolvedStyle resolvedStyle, StyleOuterNode styleOuterNode, int i) {
        ResolvedStyle resolvedStyle2 = this.currentStyle;
        resolvedStyle.copyInto$foundation(resolvedStyle2);
        applyAnimationsTo(resolvedStyle2, density, styleOuterNode, i);
        return resolvedStyle2;
    }
}
