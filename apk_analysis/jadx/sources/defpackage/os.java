package defpackage;

import androidx.compose.ui.text.SaversKt;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import com.posthog.surveys.SurveyRatingDisplayType;
import java.util.List;
import yads.p42;
import yads.x92;
import yads.zq5;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class os implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ os(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return (ps.b) obj;
            case 1:
                SurveyRatingDisplayType surveyRatingDisplayType = (SurveyRatingDisplayType) obj;
                surveyRatingDisplayType.getClass();
                return surveyRatingDisplayType.getValue();
            case 2:
                return SaversKt.TextLinkStylesSaver$lambda$1(obj);
            case 3:
                return Integer.valueOf(WorkSpecDao_Impl.countNonFinishedContentUriTriggerWorkers$lambda$36("Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)", (SQLiteConnection) obj));
            case 4:
                return Boolean.valueOf(p42.a(obj));
            case 5:
                return Boolean.valueOf(x92.a(obj));
            default:
                return zq5.b((List) obj);
        }
    }
}
