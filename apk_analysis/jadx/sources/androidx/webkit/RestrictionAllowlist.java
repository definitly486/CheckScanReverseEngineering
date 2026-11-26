package androidx.webkit;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.chromium.support_lib_boundary.WebViewBuilderBoundaryInterface;

/* JADX INFO: loaded from: classes3.dex */
public final class RestrictionAllowlist {
    private final List<ConfigTask> mConfigTasks;

    public static final class Builder {
        private final List<ConfigTask> mConfigTasks = new ArrayList();
        private final List<String> mOriginPatterns;

        public Builder(Set<String> set) {
            this.mOriginPatterns = new ArrayList(set);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$addJavaScriptInterface$0(Object obj, String str, WebViewBuilderBoundaryInterface.Config config) {
            config.addJavascriptInterface(obj, str, this.mOriginPatterns);
        }

        public Builder addJavaScriptInterface(final Object obj, final String str) {
            this.mConfigTasks.add(new ConfigTask() { // from class: androidx.webkit.a
                @Override // androidx.webkit.RestrictionAllowlist.ConfigTask
                public final void configure(WebViewBuilderBoundaryInterface.Config config) {
                    this.a.lambda$addJavaScriptInterface$0(obj, str, config);
                }
            });
            return this;
        }

        public RestrictionAllowlist build() {
            return new RestrictionAllowlist(this.mConfigTasks);
        }
    }

    public interface ConfigTask {
        void configure(WebViewBuilderBoundaryInterface.Config config);
    }

    private RestrictionAllowlist(List<ConfigTask> list) {
        this.mConfigTasks = list;
    }

    public void configure(WebViewBuilderBoundaryInterface.Config config) {
        Iterator<ConfigTask> it = this.mConfigTasks.iterator();
        while (it.hasNext()) {
            it.next().configure(config);
        }
    }
}
