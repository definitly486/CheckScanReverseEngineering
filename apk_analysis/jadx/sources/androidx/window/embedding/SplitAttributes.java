package androidx.window.embedding;

import androidx.window.core.SpecificationComputer;
import androidx.window.core.VerificationMode;
import androidx.window.embedding.SplitAttributes;
import defpackage.aa4;
import defpackage.fg;
import defpackage.jh;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.yr;

/* JADX INFO: loaded from: classes3.dex */
public final class SplitAttributes {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "SplitAttributes";
    private final EmbeddingAnimationParams animationParams;
    private final DividerAttributes dividerAttributes;
    private final LayoutDirection layoutDirection;
    private final SplitType splitType;

    public /* synthetic */ SplitAttributes(SplitType splitType, LayoutDirection layoutDirection, EmbeddingAnimationParams embeddingAnimationParams, DividerAttributes dividerAttributes, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? SplitType.SPLIT_TYPE_EQUAL : splitType, (i & 2) != 0 ? LayoutDirection.LOCALE : layoutDirection, (i & 4) != 0 ? new EmbeddingAnimationParams.Builder().build() : embeddingAnimationParams, (i & 8) != 0 ? DividerAttributes.NO_DIVIDER : dividerAttributes);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitAttributes)) {
            return false;
        }
        SplitAttributes splitAttributes = (SplitAttributes) obj;
        return aa4.e(this.splitType, splitAttributes.splitType) && aa4.e(this.layoutDirection, splitAttributes.layoutDirection) && aa4.e(this.animationParams, splitAttributes.animationParams) && aa4.e(this.dividerAttributes, splitAttributes.dividerAttributes);
    }

    public final EmbeddingAnimationParams getAnimationParams() {
        return this.animationParams;
    }

    public final DividerAttributes getDividerAttributes() {
        return this.dividerAttributes;
    }

    public final LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    public final SplitType getSplitType() {
        return this.splitType;
    }

    public int hashCode() {
        return this.dividerAttributes.hashCode() + ((this.animationParams.hashCode() + ((this.layoutDirection.hashCode() + (this.splitType.hashCode() * 31)) * 31)) * 31);
    }

    public String toString() {
        return "SplitAttributes:{splitType=" + this.splitType + ", layoutDir=" + this.layoutDirection + ", animationParams=" + this.animationParams + ", dividerAttributes=" + this.dividerAttributes + " }";
    }

    public static final class LayoutDirection {
        private final String description;
        private final int value;
        public static final Companion Companion = new Companion(null);
        public static final LayoutDirection LOCALE = new LayoutDirection("LOCALE", 0);
        public static final LayoutDirection LEFT_TO_RIGHT = new LayoutDirection("LEFT_TO_RIGHT", 1);
        public static final LayoutDirection RIGHT_TO_LEFT = new LayoutDirection("RIGHT_TO_LEFT", 2);
        public static final LayoutDirection TOP_TO_BOTTOM = new LayoutDirection("TOP_TO_BOTTOM", 3);
        public static final LayoutDirection BOTTOM_TO_TOP = new LayoutDirection("BOTTOM_TO_TOP", 4);

        private LayoutDirection(String str, int i) {
            this.description = str;
            this.value = i;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LayoutDirection)) {
                return false;
            }
            LayoutDirection layoutDirection = (LayoutDirection) obj;
            return aa4.e(this.description, layoutDirection.description) && this.value == layoutDirection.value;
        }

        public final int getValue$window_release() {
            return this.value;
        }

        public int hashCode() {
            return (this.description.hashCode() * 31) + this.value;
        }

        public String toString() {
            return this.description;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final LayoutDirection getLayoutDirectionFromValue$window_release(int i) {
                LayoutDirection layoutDirection = LayoutDirection.LEFT_TO_RIGHT;
                if (i == layoutDirection.getValue$window_release()) {
                    return layoutDirection;
                }
                LayoutDirection layoutDirection2 = LayoutDirection.RIGHT_TO_LEFT;
                if (i == layoutDirection2.getValue$window_release()) {
                    return layoutDirection2;
                }
                LayoutDirection layoutDirection3 = LayoutDirection.LOCALE;
                if (i == layoutDirection3.getValue$window_release()) {
                    return layoutDirection3;
                }
                LayoutDirection layoutDirection4 = LayoutDirection.TOP_TO_BOTTOM;
                if (i == layoutDirection4.getValue$window_release()) {
                    return layoutDirection4;
                }
                LayoutDirection layoutDirection5 = LayoutDirection.BOTTOM_TO_TOP;
                if (i == layoutDirection5.getValue$window_release()) {
                    return layoutDirection5;
                }
                fg.c(jh.b(i, "Undefined value:"));
                return null;
            }

            private Companion() {
            }
        }
    }

    public static final class SplitType {
        public static final Companion Companion;
        public static final SplitType SPLIT_TYPE_EQUAL;
        public static final SplitType SPLIT_TYPE_EXPAND;
        public static final SplitType SPLIT_TYPE_HINGE;
        private final String description;
        private final float value;

        static {
            Companion companion = new Companion(null);
            Companion = companion;
            SPLIT_TYPE_EXPAND = new SplitType("expandContainers", 0.0f);
            SPLIT_TYPE_EQUAL = companion.ratio(0.5f);
            SPLIT_TYPE_HINGE = new SplitType("hinge", -1.0f);
        }

        public SplitType(String str, float f) {
            str.getClass();
            this.description = str;
            this.value = f;
        }

        public static final SplitType ratio(float f) {
            return Companion.ratio(f);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof SplitType)) {
                return false;
            }
            SplitType splitType = (SplitType) obj;
            return this.value == splitType.value && aa4.e(this.description, splitType.description);
        }

        public final String getDescription$window_release() {
            return this.description;
        }

        public final float getValue$window_release() {
            return this.value;
        }

        public int hashCode() {
            return (Float.hashCode(this.value) * 31) + this.description.hashCode();
        }

        public String toString() {
            return this.description;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final boolean ratio$lambda$0(float f, float f2) {
                double d = f;
                return 0.0d <= d && d <= 1.0d && !yr.E(new Float[]{Float.valueOf(0.0f), Float.valueOf(1.0f)}, Float.valueOf(f));
            }

            public final SplitType buildSplitTypeFromValue$window_release(float f) {
                SplitType splitType = SplitType.SPLIT_TYPE_EXPAND;
                return f == splitType.getValue$window_release() ? splitType : ratio(f);
            }

            public final SplitType ratio(final float f) {
                SpecificationComputer.Companion companion = SpecificationComputer.Companion;
                Float fValueOf = Float.valueOf(f);
                String str = SplitAttributes.TAG;
                str.getClass();
                Object objCompute = SpecificationComputer.Companion.startSpecification$default(companion, fValueOf, str, VerificationMode.STRICT, null, 4, null).require("Ratio must be in range (0.0, 1.0). Use SplitType.expandContainers() instead of 0 or 1.", new nl3() { // from class: g68
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(SplitAttributes.SplitType.Companion.ratio$lambda$0(f, ((Float) obj).floatValue()));
                    }
                }).compute();
                objCompute.getClass();
                float fFloatValue = ((Number) objCompute).floatValue();
                return new SplitType("ratio:" + fFloatValue, fFloatValue);
            }

            private Companion() {
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    private SplitAttributes(SplitType splitType, LayoutDirection layoutDirection, EmbeddingAnimationParams embeddingAnimationParams, DividerAttributes dividerAttributes) {
        this.splitType = splitType;
        this.layoutDirection = layoutDirection;
        this.animationParams = embeddingAnimationParams;
        this.dividerAttributes = dividerAttributes;
    }

    public static final class Builder {
        private EmbeddingAnimationParams animationParams;
        private DividerAttributes dividerAttributes;
        private LayoutDirection layoutDirection;
        private SplitType splitType;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(SplitAttributes splitAttributes) {
            this();
            splitAttributes.getClass();
            setSplitType(splitAttributes.getSplitType()).setLayoutDirection(splitAttributes.getLayoutDirection()).setAnimationParams(splitAttributes.getAnimationParams()).setDividerAttributes(splitAttributes.getDividerAttributes());
        }

        public final SplitAttributes build() {
            return new SplitAttributes(this.splitType, this.layoutDirection, this.animationParams, this.dividerAttributes, null);
        }

        public final Builder setAnimationParams(EmbeddingAnimationParams embeddingAnimationParams) {
            embeddingAnimationParams.getClass();
            this.animationParams = embeddingAnimationParams;
            return this;
        }

        public final Builder setDividerAttributes(DividerAttributes dividerAttributes) {
            dividerAttributes.getClass();
            this.dividerAttributes = dividerAttributes;
            return this;
        }

        public final Builder setLayoutDirection(LayoutDirection layoutDirection) {
            layoutDirection.getClass();
            this.layoutDirection = layoutDirection;
            return this;
        }

        public final Builder setSplitType(SplitType splitType) {
            splitType.getClass();
            this.splitType = splitType;
            return this;
        }

        public Builder() {
            this.splitType = SplitType.SPLIT_TYPE_EQUAL;
            this.layoutDirection = LayoutDirection.LOCALE;
            this.animationParams = new EmbeddingAnimationParams.Builder().build();
            this.dividerAttributes = DividerAttributes.NO_DIVIDER;
        }
    }

    public /* synthetic */ SplitAttributes(SplitType splitType, LayoutDirection layoutDirection, EmbeddingAnimationParams embeddingAnimationParams, DividerAttributes dividerAttributes, jh2 jh2Var) {
        this(splitType, layoutDirection, embeddingAnimationParams, dividerAttributes);
    }
}
