package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.node.RootForTest;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface ViewRootForTest extends RootForTest {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static nl3<? super ViewRootForTest, j59> onViewCreatedCallback;

        private Companion() {
        }

        public static /* synthetic */ void getOnViewCreatedCallback$annotations() {
        }

        public final nl3<ViewRootForTest, j59> getOnViewCreatedCallback() {
            return onViewCreatedCallback;
        }

        public final void setOnViewCreatedCallback(nl3<? super ViewRootForTest, j59> nl3Var) {
            onViewCreatedCallback = nl3Var;
        }
    }

    boolean getHasPendingMeasureOrLayout();

    View getView();

    void invalidateDescendants();

    boolean isLifecycleInResumedState();
}
