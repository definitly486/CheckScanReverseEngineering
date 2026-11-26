package androidx.window.layout;

import android.graphics.Rect;
import androidx.window.core.Bounds;
import defpackage.aa4;
import defpackage.fg;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class HardwareFoldingFeature implements FoldingFeature {
    public static final Companion Companion = new Companion(null);
    private final Bounds featureBounds;
    private final FoldingFeature.State state;
    private final Type type;

    public HardwareFoldingFeature(Bounds bounds, Type type, FoldingFeature.State state) {
        bounds.getClass();
        type.getClass();
        state.getClass();
        this.featureBounds = bounds;
        this.type = type;
        this.state = state;
        Companion.validateFeatureBounds$window_release(bounds);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!HardwareFoldingFeature.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        HardwareFoldingFeature hardwareFoldingFeature = (HardwareFoldingFeature) obj;
        return aa4.e(this.featureBounds, hardwareFoldingFeature.featureBounds) && aa4.e(this.type, hardwareFoldingFeature.type) && aa4.e(getState(), hardwareFoldingFeature.getState());
    }

    @Override // androidx.window.layout.DisplayFeature
    public Rect getBounds() {
        return this.featureBounds.toRect();
    }

    @Override // androidx.window.layout.FoldingFeature
    public FoldingFeature.OcclusionType getOcclusionType() {
        return (this.featureBounds.getWidth() == 0 || this.featureBounds.getHeight() == 0) ? FoldingFeature.OcclusionType.NONE : FoldingFeature.OcclusionType.FULL;
    }

    @Override // androidx.window.layout.FoldingFeature
    public FoldingFeature.Orientation getOrientation() {
        return this.featureBounds.getWidth() > this.featureBounds.getHeight() ? FoldingFeature.Orientation.HORIZONTAL : FoldingFeature.Orientation.VERTICAL;
    }

    @Override // androidx.window.layout.FoldingFeature
    public FoldingFeature.State getState() {
        return this.state;
    }

    public final Type getType$window_release() {
        return this.type;
    }

    public int hashCode() {
        return getState().hashCode() + ((this.type.hashCode() + (this.featureBounds.hashCode() * 31)) * 31);
    }

    @Override // androidx.window.layout.FoldingFeature
    public boolean isSeparating() {
        Type type = this.type;
        Type.Companion companion = Type.Companion;
        if (aa4.e(type, companion.getHINGE())) {
            return true;
        }
        return aa4.e(this.type, companion.getFOLD()) && aa4.e(getState(), FoldingFeature.State.HALF_OPENED);
    }

    public String toString() {
        return "HardwareFoldingFeature { " + this.featureBounds + ", type=" + this.type + ", state=" + getState() + " }";
    }

    public static final class Type {
        public static final Companion Companion = new Companion(null);
        private static final Type FOLD = new Type("FOLD");
        private static final Type HINGE = new Type("HINGE");
        private final String description;

        private Type(String str) {
            this.description = str;
        }

        public String toString() {
            return this.description;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final Type getFOLD() {
                return Type.FOLD;
            }

            public final Type getHINGE() {
                return Type.HINGE;
            }

            private Companion() {
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final void validateFeatureBounds$window_release(Bounds bounds) {
            bounds.getClass();
            if (bounds.getWidth() == 0 && bounds.getHeight() == 0) {
                fg.c("Bounds must be non zero");
            } else {
                if (bounds.getLeft() == 0 || bounds.getTop() == 0) {
                    return;
                }
                fg.c("Bounding rectangle must start at the top or left window edge for folding features");
            }
        }

        private Companion() {
        }
    }
}
