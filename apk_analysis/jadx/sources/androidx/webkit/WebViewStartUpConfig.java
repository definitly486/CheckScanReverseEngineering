package androidx.webkit;

import defpackage.ah;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes3.dex */
public final class WebViewStartUpConfig {
    private final Executor mExecutor;
    private final Set<String> mProfilesToLoadDuringStartup;
    private final boolean mShouldRunUiThreadStartUpTasks;

    public static final class Builder {
        private final Executor mExecutor;
        private boolean mShouldRunUiThreadStartUpTasks = true;
        private Set<String> mProfilesToLoadDuringStartup = null;

        public Builder(Executor executor) {
            this.mExecutor = executor;
        }

        public WebViewStartUpConfig build() {
            Set<String> set = this.mProfilesToLoadDuringStartup;
            if (set == null || this.mShouldRunUiThreadStartUpTasks) {
                return new WebViewStartUpConfig(this.mExecutor, this.mShouldRunUiThreadStartUpTasks, set);
            }
            ah.f("Can't specify profiles to load without running UI thread startup tasks");
            return null;
        }

        public Builder setProfilesToLoadDuringStartup(Set<String> set) {
            this.mProfilesToLoadDuringStartup = new HashSet(set);
            return this;
        }

        public Builder setShouldRunUiThreadStartUpTasks(boolean z) {
            this.mShouldRunUiThreadStartUpTasks = z;
            return this;
        }
    }

    public WebViewStartUpConfig(Executor executor, boolean z, Set<String> set) {
        this.mExecutor = executor;
        this.mShouldRunUiThreadStartUpTasks = z;
        this.mProfilesToLoadDuringStartup = set;
    }

    public void accept(BiConsumer<Integer, Object> biConsumer) {
        biConsumer.accept(0, this.mExecutor);
        if (!this.mShouldRunUiThreadStartUpTasks) {
            biConsumer.accept(1, Boolean.FALSE);
        }
        if (this.mProfilesToLoadDuringStartup != null) {
            biConsumer.accept(2, this.mProfilesToLoadDuringStartup);
        }
    }

    public Executor getBackgroundExecutor() {
        return this.mExecutor;
    }

    public Set<String> getProfilesToLoadDuringStartup() {
        return this.mProfilesToLoadDuringStartup;
    }

    public boolean shouldRunUiThreadStartUpTasks() {
        return this.mShouldRunUiThreadStartUpTasks;
    }
}
