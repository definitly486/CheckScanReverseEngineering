package androidx.window.embedding;

import android.content.Intent;
import androidx.core.util.Preconditions;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.qn1;
import defpackage.tg;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class SplitPlaceholderRule extends SplitRule {
    private final Set<ActivityFilter> filters;
    private final SplitRule.FinishBehavior finishPrimaryWithPlaceholder;
    private final boolean isSticky;
    private final Intent placeholderIntent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplitPlaceholderRule(String str, Set<ActivityFilter> set, Intent intent, boolean z, SplitRule.FinishBehavior finishBehavior, int i, int i2, int i3, EmbeddingAspectRatio embeddingAspectRatio, EmbeddingAspectRatio embeddingAspectRatio2, SplitAttributes splitAttributes) {
        super(str, i, i2, i3, embeddingAspectRatio, embeddingAspectRatio2, splitAttributes);
        set.getClass();
        intent.getClass();
        finishBehavior.getClass();
        embeddingAspectRatio.getClass();
        embeddingAspectRatio2.getClass();
        splitAttributes.getClass();
        Preconditions.checkArgument(!(finishBehavior == SplitRule.FinishBehavior.NEVER), "NEVER is not a valid configuration for SplitPlaceholderRule. Please use FINISH_ALWAYS or FINISH_ADJACENT instead or refer to the current API.", new Object[0]);
        this.filters = qn1.y0(set);
        this.placeholderIntent = intent;
        this.isSticky = z;
        this.finishPrimaryWithPlaceholder = finishBehavior;
    }

    @Override // androidx.window.embedding.SplitRule, androidx.window.embedding.EmbeddingRule
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitPlaceholderRule) || !super.equals(obj)) {
            return false;
        }
        SplitPlaceholderRule splitPlaceholderRule = (SplitPlaceholderRule) obj;
        return this.placeholderIntent.filterEquals(splitPlaceholderRule.placeholderIntent) && this.isSticky == splitPlaceholderRule.isSticky && aa4.e(this.finishPrimaryWithPlaceholder, splitPlaceholderRule.finishPrimaryWithPlaceholder) && aa4.e(this.filters, splitPlaceholderRule.filters);
    }

    public final Set<ActivityFilter> getFilters() {
        return this.filters;
    }

    public final SplitRule.FinishBehavior getFinishPrimaryWithPlaceholder() {
        return this.finishPrimaryWithPlaceholder;
    }

    public final Intent getPlaceholderIntent() {
        return this.placeholderIntent;
    }

    @Override // androidx.window.embedding.SplitRule, androidx.window.embedding.EmbeddingRule
    public int hashCode() {
        return this.filters.hashCode() + ((this.finishPrimaryWithPlaceholder.hashCode() + tg.c((this.placeholderIntent.filterHashCode() + (super.hashCode() * 31)) * 31, 31, this.isSticky)) * 31);
    }

    public final boolean isSticky() {
        return this.isSticky;
    }

    public final SplitPlaceholderRule plus$window_release(ActivityFilter activityFilter) {
        activityFilter.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(this.filters);
        linkedHashSet.add(activityFilter);
        return new Builder(qn1.y0(linkedHashSet), this.placeholderIntent).setTag(getTag()).setMinWidthDp(getMinWidthDp()).setMinHeightDp(getMinHeightDp()).setMinSmallestWidthDp(getMinSmallestWidthDp()).setMaxAspectRatioInPortrait(getMaxAspectRatioInPortrait()).setMaxAspectRatioInLandscape(getMaxAspectRatioInLandscape()).setSticky(this.isSticky).setFinishPrimaryWithPlaceholder(this.finishPrimaryWithPlaceholder).setDefaultSplitAttributes(getDefaultSplitAttributes()).build();
    }

    @Override // androidx.window.embedding.SplitRule
    public String toString() {
        return "SplitPlaceholderRule{tag=" + getTag() + ", defaultSplitAttributes=" + getDefaultSplitAttributes() + ", minWidthDp=" + getMinWidthDp() + ", minHeightDp=" + getMinHeightDp() + ", minSmallestWidthDp=" + getMinSmallestWidthDp() + ", maxAspectRatioInPortrait=" + getMaxAspectRatioInPortrait() + ", maxAspectRatioInLandscape=" + getMaxAspectRatioInLandscape() + ", placeholderIntent=" + this.placeholderIntent + ", isSticky=" + this.isSticky + ", finishPrimaryWithPlaceholder=" + this.finishPrimaryWithPlaceholder + ", filters=" + this.filters + '}';
    }

    public /* synthetic */ SplitPlaceholderRule(String str, Set set, Intent intent, boolean z, SplitRule.FinishBehavior finishBehavior, int i, int i2, int i3, EmbeddingAspectRatio embeddingAspectRatio, EmbeddingAspectRatio embeddingAspectRatio2, SplitAttributes splitAttributes, int i4, jh2 jh2Var) {
        this((i4 & 1) != 0 ? null : str, set, intent, z, (i4 & 16) != 0 ? SplitRule.FinishBehavior.ALWAYS : finishBehavior, (i4 & 32) != 0 ? 600 : i, (i4 & 64) != 0 ? 600 : i2, (i4 & 128) != 0 ? 600 : i3, (i4 & 256) != 0 ? SplitRule.SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT : embeddingAspectRatio, (i4 & 512) != 0 ? SplitRule.SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT : embeddingAspectRatio2, splitAttributes);
    }

    public static final class Builder {
        private SplitAttributes defaultSplitAttributes;
        private final Set<ActivityFilter> filters;
        private SplitRule.FinishBehavior finishPrimaryWithPlaceholder;
        private boolean isSticky;
        private EmbeddingAspectRatio maxAspectRatioInLandscape;
        private EmbeddingAspectRatio maxAspectRatioInPortrait;
        private int minHeightDp;
        private int minSmallestWidthDp;
        private int minWidthDp;
        private final Intent placeholderIntent;
        private String tag;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(SplitPlaceholderRule splitPlaceholderRule) {
            this(splitPlaceholderRule.getFilters(), splitPlaceholderRule.getPlaceholderIntent());
            splitPlaceholderRule.getClass();
            setTag(splitPlaceholderRule.getTag()).setMinWidthDp(splitPlaceholderRule.getMinWidthDp()).setMinHeightDp(splitPlaceholderRule.getMinHeightDp()).setMinSmallestWidthDp(splitPlaceholderRule.getMinSmallestWidthDp()).setMaxAspectRatioInPortrait(splitPlaceholderRule.getMaxAspectRatioInPortrait()).setMaxAspectRatioInLandscape(splitPlaceholderRule.getMaxAspectRatioInLandscape()).setFinishPrimaryWithPlaceholder(splitPlaceholderRule.getFinishPrimaryWithPlaceholder()).setSticky(splitPlaceholderRule.isSticky()).setDefaultSplitAttributes(splitPlaceholderRule.getDefaultSplitAttributes());
        }

        public final SplitPlaceholderRule build() {
            return new SplitPlaceholderRule(this.tag, this.filters, this.placeholderIntent, this.isSticky, this.finishPrimaryWithPlaceholder, this.minWidthDp, this.minHeightDp, this.minSmallestWidthDp, this.maxAspectRatioInPortrait, this.maxAspectRatioInLandscape, this.defaultSplitAttributes);
        }

        public final Builder setDefaultSplitAttributes(SplitAttributes splitAttributes) {
            splitAttributes.getClass();
            this.defaultSplitAttributes = splitAttributes;
            return this;
        }

        public final Builder setFinishPrimaryWithPlaceholder(SplitRule.FinishBehavior finishBehavior) {
            finishBehavior.getClass();
            this.finishPrimaryWithPlaceholder = finishBehavior;
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

        public Builder(Set<ActivityFilter> set, Intent intent) {
            set.getClass();
            intent.getClass();
            this.filters = set;
            this.placeholderIntent = intent;
            this.minWidthDp = 600;
            this.minHeightDp = 600;
            this.minSmallestWidthDp = 600;
            this.maxAspectRatioInPortrait = SplitRule.SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT;
            this.maxAspectRatioInLandscape = SplitRule.SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT;
            this.finishPrimaryWithPlaceholder = SplitRule.FinishBehavior.ALWAYS;
            this.defaultSplitAttributes = new SplitAttributes.Builder().build();
        }
    }
}
