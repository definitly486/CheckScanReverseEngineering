package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionObserverHandle;
import androidx.compose.runtime.tooling.CompositionRegistrationObserver;
import defpackage.hd3;
import defpackage.px;
import defpackage.y68;

/* JADX INFO: loaded from: classes2.dex */
public interface RecomposerInfo {
    public static final /* synthetic */ Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final y68<RecomposerErrorInformation> DefaultErrorStateFlow = px.a(null);

        private Companion() {
        }

        private static /* synthetic */ void getDefaultErrorStateFlow$annotations() {
        }
    }

    static /* synthetic */ void getErrorState$annotations() {
    }

    long getChangeCount();

    default y68<RecomposerErrorInformation> getErrorState() {
        return Companion.DefaultErrorStateFlow;
    }

    boolean getHasPendingWork();

    hd3<Recomposer.State> getState();

    default CompositionObserverHandle observe(CompositionRegistrationObserver compositionRegistrationObserver) {
        return null;
    }
}
