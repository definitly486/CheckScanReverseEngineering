package defpackage;

import android.content.res.Resources;
import androidx.activity.SystemBarStyle;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.carousel.CarouselKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import com.posthog.surveys.SurveyMatchType;
import yads.h22;
import yads.qj1;
import yads.u62;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hf implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ hf(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(AnchoredDraggableState._init_$lambda$0(obj));
            case 1:
                return BasicTextFieldKt.BasicTextField$lambda$32$0((TextLayoutResult) obj);
            case 2:
                return ButtonKt.Button$lambda$2$lambda$1((SemanticsPropertyReceiver) obj);
            case 3:
                return CarouselKt.carouselItem$lambda$26$lambda$22((Placeable.PlacementScope) obj);
            case 4:
                SurveyMatchType surveyMatchType = (SurveyMatchType) obj;
                surveyMatchType.getClass();
                return surveyMatchType.getValue();
            case 5:
                return Boolean.valueOf(SystemBarStyle.Companion.auto$lambda$0((Resources) obj));
            case 6:
                return Boolean.valueOf(h22.b(obj));
            case 7:
                return Boolean.valueOf(qj1.a(obj));
            default:
                return Boolean.valueOf(u62.d(obj));
        }
    }
}
