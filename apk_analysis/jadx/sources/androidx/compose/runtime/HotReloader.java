package androidx.compose.runtime;

import defpackage.jh2;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class HotReloader {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final void loadStateAndCompose(Object obj) {
            Recomposer.Companion.loadStateAndComposeForHotReload$runtime(obj);
        }

        private final Object saveStateAndDispose(Object obj) {
            return Recomposer.Companion.saveStateAndDisposeForHotReload$runtime();
        }

        public final void clearErrors() {
            Recomposer.Companion.clearErrors$runtime();
        }

        @ul2
        public final List<RecomposerErrorInfo> getCurrentErrors() {
            return Recomposer.Companion.getCurrentErrors$runtime();
        }

        public final List<RecomposerErrorInformation> getRecomposerErrors() {
            return Recomposer.Companion.getRecomposerErrors$runtime();
        }

        public final void invalidateGroupsWithKey(int i) {
            Recomposer.Companion.invalidateGroupsWithKey$runtime(i);
        }

        public final void simulateHotReload$runtime(Object obj) {
            loadStateAndCompose(saveStateAndDispose(obj));
        }

        private Companion() {
        }
    }
}
