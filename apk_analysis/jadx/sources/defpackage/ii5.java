package defpackage;

import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.TransitionKt;
import androidx.navigation.NavController;
import androidx.navigation.PopUpToBuilder;
import com.posthog.surveys.SurveySchedule;
import yads.bt4;
import yads.gl1;
import yads.j11;
import yads.yt1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ii5 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ii5(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return NavController.handleDeepLink$lambda$21$lambda$20((PopUpToBuilder) obj);
            case 1:
                return SurveySchedule.Companion.fromValue$lambda$0((SurveySchedule) obj);
            case 2:
                return TransitionKt.SeekableTransitionStateTotalDurationChanged$lambda$0((SeekableTransitionState) obj);
            case 3:
                return Double.valueOf(bt4.a((Number) obj));
            case 4:
                return Boolean.valueOf(gl1.j(obj));
            case 5:
                return j11.a((String) obj);
            default:
                return Boolean.valueOf(yt1.a(obj));
        }
    }
}
