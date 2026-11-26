package defpackage;

import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import com.posthog.surveys.SurveyType;
import yads.du1;
import yads.h32;
import yads.pb2;
import yads.x92;
import yads.y22;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ft3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ft3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                SurveyType surveyType = (SurveyType) obj;
                surveyType.getClass();
                return surveyType.getValue();
            case 1:
                return Boolean.valueOf(WorkSpecDao_Impl.hasUnfinishedWorkFlow$lambda$22("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", (SQLiteConnection) obj));
            case 2:
                return du1.a((y22) obj);
            case 3:
                return Boolean.valueOf(h32.b(obj));
            case 4:
                return pb2.a((String) obj);
            default:
                return Boolean.valueOf(x92.c(obj));
        }
    }
}
