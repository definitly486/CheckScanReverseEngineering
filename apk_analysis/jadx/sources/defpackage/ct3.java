package defpackage;

import android.content.res.Resources;
import androidx.activity.SystemBarStyle;
import com.posthog.surveys.SurveyAppearanceWidgetType;
import yads.h11;
import yads.u62;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ct3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ct3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                SurveyAppearanceWidgetType surveyAppearanceWidgetType = (SurveyAppearanceWidgetType) obj;
                surveyAppearanceWidgetType.getClass();
                return surveyAppearanceWidgetType.getValue();
            case 1:
                return Boolean.valueOf(SystemBarStyle.Companion.light$lambda$0((Resources) obj));
            case 2:
                return h11.a((String) obj);
            default:
                return Boolean.valueOf(u62.b(obj));
        }
    }
}
