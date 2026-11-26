package androidx.compose.material3;

import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.u96;
import defpackage.vs0;
import defpackage.ws0;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface BottomAppBarState {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Saver<BottomAppBarState, ?> Saver = ListSaverKt.listSaver(new vs0(0), new ws0(0));

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List Saver$lambda$0(SaverScope saverScope, BottomAppBarState bottomAppBarState) {
            return u96.i(Float.valueOf(bottomAppBarState.getHeightOffsetLimit()), Float.valueOf(bottomAppBarState.getHeightOffset()), Float.valueOf(bottomAppBarState.getContentOffset()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final BottomAppBarState Saver$lambda$1(List list) {
            return AppBarKt.BottomAppBarState(((Number) list.get(0)).floatValue(), ((Number) list.get(1)).floatValue(), ((Number) list.get(2)).floatValue());
        }

        public final Saver<BottomAppBarState, ?> getSaver() {
            return Saver;
        }
    }

    float getCollapsedFraction();

    float getContentOffset();

    float getHeightOffset();

    float getHeightOffsetLimit();

    void setContentOffset(float f);

    void setHeightOffset(float f);

    void setHeightOffsetLimit(float f);
}
