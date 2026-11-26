package defpackage;

import android.content.Context;
import androidx.navigation.NavDeepLinkBuilder;
import com.posthog.surveys.SurveyAppearancePosition;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class at3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ at3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                SurveyAppearancePosition surveyAppearancePosition = (SurveyAppearancePosition) obj;
                surveyAppearancePosition.getClass();
                return surveyAppearancePosition.getValue();
            default:
                return NavDeepLinkBuilder.activity$lambda$1((Context) obj);
        }
    }
}
