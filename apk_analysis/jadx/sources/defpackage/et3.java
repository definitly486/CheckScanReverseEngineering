package defpackage;

import androidx.compose.material3.TimePickerKt;
import androidx.compose.material3.pulltorefresh.PullToRefreshDefaults;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.posthog.surveys.SurveySchedule;
import yads.cn1;
import yads.du1;
import yads.lb1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class et3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ et3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                SurveySchedule surveySchedule = (SurveySchedule) obj;
                surveySchedule.getClass();
                return surveySchedule.getValue();
            case 1:
                return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$2$lambda$1((ContentDrawScope) obj);
            case 2:
                return TimePickerKt.HorizontalTimePicker$lambda$13$lambda$12((SemanticsPropertyReceiver) obj);
            case 3:
                return du1.b((cn1) obj);
            default:
                return Boolean.valueOf(lb1.a(obj));
        }
    }
}
