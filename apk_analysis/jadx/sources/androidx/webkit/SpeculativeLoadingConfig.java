package androidx.webkit;

import defpackage.fg;

/* JADX INFO: loaded from: classes3.dex */
public class SpeculativeLoadingConfig {
    private final int mMaxPrefetches;
    private final int mMaxPrerenders;
    private final int mPrefetchTTLSeconds;

    public static final class Builder {
        private int mMaxPrefetches;
        private int mMaxPrerenders;
        private int mPrefetchTTLSeconds;

        public SpeculativeLoadingConfig build() {
            return new SpeculativeLoadingConfig(this.mPrefetchTTLSeconds, this.mMaxPrefetches, this.mMaxPrerenders);
        }

        public Builder setMaxPrefetches(int i) {
            if (i >= 1) {
                this.mMaxPrefetches = i;
                return this;
            }
            fg.c("Max prefetches must be greater than 0");
            return null;
        }

        public Builder setMaxPrerenders(int i) {
            if (i >= 1) {
                this.mMaxPrerenders = i;
                return this;
            }
            fg.c("Max prerenders must be greater than 0");
            return null;
        }

        public Builder setPrefetchTtlSeconds(int i) {
            if (i > 0) {
                this.mPrefetchTTLSeconds = i;
                return this;
            }
            fg.c("Prefetch TTL must be greater than 0");
            return null;
        }
    }

    private SpeculativeLoadingConfig(int i, int i2, int i3) {
        this.mPrefetchTTLSeconds = i;
        this.mMaxPrefetches = i2;
        this.mMaxPrerenders = i3;
    }

    public int getMaxPrefetches() {
        return this.mMaxPrefetches;
    }

    public int getMaxPrerenders() {
        return this.mMaxPrerenders;
    }

    public int getPrefetchTtlSeconds() {
        return this.mPrefetchTTLSeconds;
    }
}
