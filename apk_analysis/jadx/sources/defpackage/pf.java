package defpackage;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.lazy.LazyListMeasureKt;
import androidx.compose.material3.carousel.CarouselPagerState;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.SaversKt;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavGraphImpl;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import com.posthog.surveys.SurveySchedule;
import java.util.List;
import yads.br0;
import yads.du1;
import yads.h32;
import yads.x92;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pf implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ pf(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(AnchoredDraggableState.Companion.Saver$lambda$2(obj));
            case 1:
                return CarouselPagerState.Saver$lambda$2((List) obj);
            case 2:
                String str = (String) obj;
                str.getClass();
                return SurveySchedule.Companion.fromValue(str);
            case 3:
                return LazyListMeasureKt.measureLazyList_pIk1_oM$lambda$2((Placeable.PlacementScope) obj);
            case 4:
                return NavGraphImpl.setStartDestination$lambda$12((NavDestination) obj);
            case 5:
                return SaversKt.TextDecorationSaver$lambda$1(obj);
            case 6:
                return WorkSpecDao_Impl.pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast$lambda$49("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))", (SQLiteConnection) obj);
            case 7:
                return du1.a((br0) obj);
            case 8:
                return Boolean.valueOf(h32.a(obj));
            default:
                return Boolean.valueOf(x92.b(obj));
        }
    }
}
