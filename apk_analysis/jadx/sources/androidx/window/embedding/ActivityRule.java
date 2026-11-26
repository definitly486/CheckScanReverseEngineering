package androidx.window.embedding;

import defpackage.aa4;
import defpackage.dh;
import defpackage.jh2;
import defpackage.mr7;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityRule extends EmbeddingRule {
    private final boolean alwaysExpand;
    private final Set<ActivityFilter> filters;

    public static final class Builder {
        private boolean alwaysExpand;
        private final Set<ActivityFilter> filters;
        private String tag;

        public Builder(Set<ActivityFilter> set) {
            set.getClass();
            this.filters = set;
        }

        public final ActivityRule build() {
            return new ActivityRule(this.tag, this.filters, this.alwaysExpand);
        }

        public final Builder setAlwaysExpand(boolean z) {
            this.alwaysExpand = z;
            return this;
        }

        public final Builder setTag(String str) {
            this.tag = str;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityRule(String str, Set<ActivityFilter> set, boolean z) {
        super(str);
        set.getClass();
        this.filters = set;
        this.alwaysExpand = z;
    }

    @Override // androidx.window.embedding.EmbeddingRule
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityRule) || !super.equals(obj)) {
            return false;
        }
        ActivityRule activityRule = (ActivityRule) obj;
        return aa4.e(this.filters, activityRule.filters) && this.alwaysExpand == activityRule.alwaysExpand;
    }

    public final boolean getAlwaysExpand() {
        return this.alwaysExpand;
    }

    public final Set<ActivityFilter> getFilters() {
        return this.filters;
    }

    @Override // androidx.window.embedding.EmbeddingRule
    public int hashCode() {
        return Boolean.hashCode(this.alwaysExpand) + ((this.filters.hashCode() + (super.hashCode() * 31)) * 31);
    }

    public final ActivityRule plus$window_release(ActivityFilter activityFilter) {
        activityFilter.getClass();
        return new ActivityRule(getTag(), mr7.m(this.filters, activityFilter), this.alwaysExpand);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ActivityRule:{tag={");
        sb.append(getTag());
        sb.append("},filters={");
        sb.append(this.filters);
        sb.append("}, alwaysExpand={");
        return dh.e(sb, this.alwaysExpand, "}}");
    }

    public /* synthetic */ ActivityRule(String str, Set set, boolean z, int i, jh2 jh2Var) {
        this(str, set, (i & 4) != 0 ? false : z);
    }
}
