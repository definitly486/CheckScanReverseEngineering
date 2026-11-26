package androidx.window.embedding;

import defpackage.jh2;
import defpackage.sg;

/* JADX INFO: loaded from: classes3.dex */
public final class SplitPinRule extends SplitRule {
    private final boolean isSticky;

    public static final class Builder {
        private boolean isSticky;
        private String tag;
        private int minWidthDp = 600;
        private int minHeightDp = 600;
        private int minSmallestWidthDp = 600;
        private EmbeddingAspectRatio maxAspectRatioInPortrait = SplitRule.SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT;
        private EmbeddingAspectRatio maxAspectRatioInLandscape = SplitRule.SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT;
        private SplitAttributes defaultSplitAttributes = new SplitAttributes.Builder().build();

        public final SplitPinRule build() {
            return new SplitPinRule(this.tag, this.defaultSplitAttributes, this.isSticky, this.minWidthDp, this.minHeightDp, this.minSmallestWidthDp, this.maxAspectRatioInPortrait, this.maxAspectRatioInLandscape);
        }

        public final Builder setDefaultSplitAttributes(SplitAttributes splitAttributes) {
            splitAttributes.getClass();
            this.defaultSplitAttributes = splitAttributes;
            return this;
        }

        public final Builder setMaxAspectRatioInLandscape(EmbeddingAspectRatio embeddingAspectRatio) {
            embeddingAspectRatio.getClass();
            this.maxAspectRatioInLandscape = embeddingAspectRatio;
            return this;
        }

        public final Builder setMaxAspectRatioInPortrait(EmbeddingAspectRatio embeddingAspectRatio) {
            embeddingAspectRatio.getClass();
            this.maxAspectRatioInPortrait = embeddingAspectRatio;
            return this;
        }

        public final Builder setMinHeightDp(int i) {
            this.minHeightDp = i;
            return this;
        }

        public final Builder setMinSmallestWidthDp(int i) {
            this.minSmallestWidthDp = i;
            return this;
        }

        public final Builder setMinWidthDp(int i) {
            this.minWidthDp = i;
            return this;
        }

        public final Builder setSticky(boolean z) {
            this.isSticky = z;
            return this;
        }

        public final Builder setTag(String str) {
            this.tag = str;
            return this;
        }
    }

    public /* synthetic */ SplitPinRule(String str, SplitAttributes splitAttributes, boolean z, int i, int i2, int i3, EmbeddingAspectRatio embeddingAspectRatio, EmbeddingAspectRatio embeddingAspectRatio2, int i4, jh2 jh2Var) {
        this((i4 & 1) != 0 ? null : str, splitAttributes, z, (i4 & 8) != 0 ? 600 : i, (i4 & 16) != 0 ? 600 : i2, (i4 & 32) != 0 ? 600 : i3, (i4 & 64) != 0 ? SplitRule.SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT : embeddingAspectRatio, (i4 & 128) != 0 ? SplitRule.SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT : embeddingAspectRatio2);
    }

    @Override // androidx.window.embedding.SplitRule, androidx.window.embedding.EmbeddingRule
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SplitPinRule) && super.equals(obj) && this.isSticky == ((SplitPinRule) obj).isSticky;
    }

    @Override // androidx.window.embedding.SplitRule, androidx.window.embedding.EmbeddingRule
    public int hashCode() {
        return Boolean.hashCode(this.isSticky) + (super.hashCode() * 31);
    }

    public final boolean isSticky() {
        return this.isSticky;
    }

    @Override // androidx.window.embedding.SplitRule
    public String toString() {
        StringBuilder sb = new StringBuilder("SplitPinRule{tag=");
        sb.append(getTag());
        sb.append(", defaultSplitAttributes=");
        sb.append(getDefaultSplitAttributes());
        sb.append(", isSticky=");
        return sg.d(sb, this.isSticky, '}');
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplitPinRule(String str, SplitAttributes splitAttributes, boolean z, int i, int i2, int i3, EmbeddingAspectRatio embeddingAspectRatio, EmbeddingAspectRatio embeddingAspectRatio2) {
        super(str, i, i2, i3, embeddingAspectRatio, embeddingAspectRatio2, splitAttributes);
        splitAttributes.getClass();
        embeddingAspectRatio.getClass();
        embeddingAspectRatio2.getClass();
        this.isSticky = z;
    }
}
