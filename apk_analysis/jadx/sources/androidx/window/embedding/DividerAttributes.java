package androidx.window.embedding;

import defpackage.aa4;
import defpackage.c9;
import defpackage.fg;
import defpackage.jh;
import defpackage.jh2;
import defpackage.js2;
import defpackage.qz0;
import defpackage.rg;
import defpackage.sg;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DividerAttributes {
    public static final int COLOR_SYSTEM_DEFAULT = -16777216;
    public static final float DRAG_RANGE_VALUE_UNSPECIFIED = -1.0f;
    public static final int TYPE_VALUE_DRAGGABLE = 1;
    public static final int TYPE_VALUE_FIXED = 0;
    public static final int WIDTH_SYSTEM_DEFAULT = -1;
    private final int color;
    private final int widthDp;
    public static final Companion Companion = new Companion(null);
    public static final DividerAttributes NO_DIVIDER = new DividerAttributes() { // from class: androidx.window.embedding.DividerAttributes$Companion$NO_DIVIDER$1
        public int hashCode() {
            return toString().hashCode();
        }

        @Override // androidx.window.embedding.DividerAttributes
        public String toString() {
            return "NO_DIVIDER";
        }
    };

    public /* synthetic */ DividerAttributes(int i, int i2, int i3, jh2 jh2Var) {
        this((i3 & 1) != 0 ? -1 : i, (i3 & 2) != 0 ? -16777216 : i2);
    }

    public final int getColor() {
        return this.color;
    }

    public final int getWidthDp() {
        return this.widthDp;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DividerAttributes{width=");
        sb.append(this.widthDp);
        sb.append(", color=");
        return rg.h(sb, this.color, '}');
    }

    public static abstract class DragRange {
        public static final Companion Companion = new Companion(null);
        public static final DragRange DRAG_RANGE_SYSTEM_DEFAULT = new DragRange() { // from class: androidx.window.embedding.DividerAttributes$DragRange$Companion$DRAG_RANGE_SYSTEM_DEFAULT$1
            public String toString() {
                return "DRAG_RANGE_SYSTEM_DEFAULT";
            }
        };

        public static final class SplitRatioDragRange extends DragRange {
            private final float maxRatio;
            private final float minRatio;

            public SplitRatioDragRange(float f, float f2) {
                super(null);
                this.minRatio = f;
                this.maxRatio = f2;
                if (f <= 0.0d || f >= 1.0d) {
                    fg.c("minRatio must be in the interval (0.0, 1.0)");
                    throw null;
                }
                if (f2 <= 0.0d || f2 >= 1.0d) {
                    fg.c("maxRatio must be in the interval (0.0, 1.0)");
                    throw null;
                }
                if (f <= f2) {
                    return;
                }
                fg.c("minRatio must be less than or equal to maxRatio");
                throw null;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof SplitRatioDragRange)) {
                    return false;
                }
                SplitRatioDragRange splitRatioDragRange = (SplitRatioDragRange) obj;
                return this.minRatio == splitRatioDragRange.minRatio && this.maxRatio == splitRatioDragRange.maxRatio;
            }

            public final float getMaxRatio() {
                return this.maxRatio;
            }

            public final float getMinRatio() {
                return this.minRatio;
            }

            public int hashCode() {
                return Float.hashCode(this.maxRatio) + (Float.hashCode(this.minRatio) * 31);
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("SplitRatioDragRange[");
                sb.append(this.minRatio);
                sb.append(", ");
                return js2.b(sb, this.maxRatio, ']');
            }
        }

        public /* synthetic */ DragRange(jh2 jh2Var) {
            this();
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            private Companion() {
            }
        }

        private DragRange() {
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final int alpha(int i) {
            return i >>> 24;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void validateColor(int i) {
            if (alpha(i) == 255) {
                return;
            }
            c9.f(c9.e(i, new StringBuilder("Divider color must be opaque. Got: ")));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void validateWidth(int i) {
            if (i == -1 || i >= 0) {
                return;
            }
            c9.f(jh.b(i, "widthDp must be greater than or equal to 0 or WIDTH_SYSTEM_DEFAULT. Got: "));
        }

        public final DividerAttributes createDividerAttributes$window_release(int i, int i2, int i3, float f, float f2, boolean z) {
            if (i == 0) {
                return new FixedDividerAttributes.Builder().setWidthDp(i2).setColor(i3).build();
            }
            if (i != 1) {
                fg.c(qz0.d("Got unknown divider type ", i, '!'));
                return null;
            }
            DraggableDividerAttributes.Builder draggingToFullscreenAllowed = new DraggableDividerAttributes.Builder().setWidthDp(i2).setColor(i3).setDraggingToFullscreenAllowed(z);
            if (f == -1.0f || f2 == -1.0f) {
                draggingToFullscreenAllowed.setDragRange(DragRange.DRAG_RANGE_SYSTEM_DEFAULT);
            } else {
                draggingToFullscreenAllowed.setDragRange(new DragRange.SplitRatioDragRange(f, f2));
            }
            return draggingToFullscreenAllowed.build();
        }

        public final void validateXmlDividerAttributes$window_release(int i, boolean z, boolean z2, boolean z3) {
            if (i == 1) {
                return;
            }
            if (z) {
                fg.c("Fixed divider does not allow attribute dragRangeMinRatio!");
            } else if (z2) {
                fg.c("Fixed divider does not allow attribute dragRangeMaxRatio!");
            } else if (z3) {
                fg.c("Fixed divider does not allow attribute isDraggingToFullscreenAllowed!");
            }
        }

        private Companion() {
        }
    }

    public static final class FixedDividerAttributes extends DividerAttributes {
        public /* synthetic */ FixedDividerAttributes(int i, int i2, int i3, jh2 jh2Var) {
            this((i3 & 1) != 0 ? -1 : i, (i3 & 2) != 0 ? -16777216 : i2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FixedDividerAttributes)) {
                return false;
            }
            FixedDividerAttributes fixedDividerAttributes = (FixedDividerAttributes) obj;
            return getWidthDp() == fixedDividerAttributes.getWidthDp() && getColor() == fixedDividerAttributes.getColor();
        }

        public int hashCode() {
            return getColor() + (getWidthDp() * 31);
        }

        public /* synthetic */ FixedDividerAttributes(int i, int i2, jh2 jh2Var) {
            this(i, i2);
        }

        private FixedDividerAttributes(int i, int i2) {
            super(i, i2, null);
        }

        public static final class Builder {
            private int color;
            private int widthDp;

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(FixedDividerAttributes fixedDividerAttributes) {
                this();
                fixedDividerAttributes.getClass();
                this.widthDp = fixedDividerAttributes.getWidthDp();
                this.color = fixedDividerAttributes.getColor();
            }

            public final FixedDividerAttributes build() {
                return new FixedDividerAttributes(this.widthDp, this.color, null);
            }

            public final Builder setColor(int i) {
                DividerAttributes.Companion.validateColor(i);
                this.color = i;
                return this;
            }

            public final Builder setWidthDp(int i) {
                DividerAttributes.Companion.validateWidth(i);
                this.widthDp = i;
                return this;
            }

            public Builder() {
                this.widthDp = -1;
                this.color = -16777216;
            }
        }
    }

    private DividerAttributes(int i, int i2) {
        this.widthDp = i;
        this.color = i2;
    }

    public /* synthetic */ DividerAttributes(int i, int i2, jh2 jh2Var) {
        this(i, i2);
    }

    public static final class DraggableDividerAttributes extends DividerAttributes {
        private final DragRange dragRange;
        private final boolean isDraggingToFullscreenAllowed;

        public /* synthetic */ DraggableDividerAttributes(int i, int i2, DragRange dragRange, boolean z, int i3, jh2 jh2Var) {
            this((i3 & 1) != 0 ? -1 : i, (i3 & 2) != 0 ? -16777216 : i2, (i3 & 4) != 0 ? DragRange.DRAG_RANGE_SYSTEM_DEFAULT : dragRange, (i3 & 8) != 0 ? false : z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DraggableDividerAttributes)) {
                return false;
            }
            DraggableDividerAttributes draggableDividerAttributes = (DraggableDividerAttributes) obj;
            return getWidthDp() == draggableDividerAttributes.getWidthDp() && getColor() == draggableDividerAttributes.getColor() && aa4.e(this.dragRange, draggableDividerAttributes.dragRange) && this.isDraggingToFullscreenAllowed == draggableDividerAttributes.isDraggingToFullscreenAllowed;
        }

        public final DragRange getDragRange() {
            return this.dragRange;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isDraggingToFullscreenAllowed) + ((this.dragRange.hashCode() + ((getColor() + (getWidthDp() * 31)) * 31)) * 31);
        }

        public final boolean isDraggingToFullscreenAllowed() {
            return this.isDraggingToFullscreenAllowed;
        }

        @Override // androidx.window.embedding.DividerAttributes
        public String toString() {
            StringBuilder sb = new StringBuilder(DraggableDividerAttributes.class.getSimpleName());
            sb.append("{width=");
            sb.append(getWidthDp());
            sb.append(", color=");
            sb.append(getColor());
            sb.append(", primaryContainerDragRange=");
            sb.append(this.dragRange);
            sb.append(", isDraggingToFullscreenAllowed=");
            return sg.d(sb, this.isDraggingToFullscreenAllowed, '}');
        }

        public /* synthetic */ DraggableDividerAttributes(int i, int i2, DragRange dragRange, boolean z, jh2 jh2Var) {
            this(i, i2, dragRange, z);
        }

        private DraggableDividerAttributes(int i, int i2, DragRange dragRange, boolean z) {
            super(i, i2, null);
            this.dragRange = dragRange;
            this.isDraggingToFullscreenAllowed = z;
        }

        public static final class Builder {
            private int color;
            private DragRange dragRange;
            private boolean isDraggingToFullscreenAllowed;
            private int widthDp;

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(DraggableDividerAttributes draggableDividerAttributes) {
                this();
                draggableDividerAttributes.getClass();
                this.widthDp = draggableDividerAttributes.getWidthDp();
                this.dragRange = draggableDividerAttributes.getDragRange();
                this.color = draggableDividerAttributes.getColor();
                this.isDraggingToFullscreenAllowed = draggableDividerAttributes.isDraggingToFullscreenAllowed();
            }

            public final DraggableDividerAttributes build() {
                return new DraggableDividerAttributes(this.widthDp, this.color, this.dragRange, this.isDraggingToFullscreenAllowed, null);
            }

            public final Builder setColor(int i) {
                DividerAttributes.Companion.validateColor(i);
                this.color = i;
                return this;
            }

            public final Builder setDragRange(DragRange dragRange) {
                dragRange.getClass();
                this.dragRange = dragRange;
                return this;
            }

            public final Builder setDraggingToFullscreenAllowed(boolean z) {
                this.isDraggingToFullscreenAllowed = z;
                return this;
            }

            public final Builder setWidthDp(int i) {
                DividerAttributes.Companion.validateWidth(i);
                this.widthDp = i;
                return this;
            }

            public Builder() {
                this.widthDp = -1;
                this.color = -16777216;
                this.dragRange = DragRange.DRAG_RANGE_SYSTEM_DEFAULT;
            }
        }
    }
}
