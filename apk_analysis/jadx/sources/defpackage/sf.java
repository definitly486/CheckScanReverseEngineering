package defpackage;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.material3.carousel.CarouselState;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import java.util.List;
import yads.du1;
import yads.h32;
import yads.x92;
import yads.zu0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class sf implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ sf(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(AnchoredDraggableState.Companion.Saver$lambda$5(obj));
            case 1:
                return CarouselState.Saver$lambda$3((List) obj);
            case 2:
                return Integer.valueOf(WorkSpecDao_Impl.resetScheduledState$lambda$48("UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)", (SQLiteConnection) obj));
            case 3:
                return du1.a(obj);
            case 4:
                return Boolean.valueOf(h32.d(obj));
            case 5:
                return Boolean.valueOf(x92.e(obj));
            default:
                return zu0.a((String) obj);
        }
    }
}
