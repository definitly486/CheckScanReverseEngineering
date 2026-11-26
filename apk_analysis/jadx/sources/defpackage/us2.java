package defpackage;

import androidx.camera.camera2.pipe.core.PruningProcessingQueue;
import androidx.compose.material3.DrawerState;
import androidx.compose.material3.DrawerValue;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.sqlite.SQLiteConnection;
import androidx.window.embedding.EmbeddingBackend;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl;
import com.posthog.surveys.SurveyQuestionType;
import java.util.List;
import yads.qj1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class us2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ us2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(DrawerState._init_$lambda$0((DrawerValue) obj));
            case 1:
                return EmbeddingBackend.Companion.reset$lambda$1((EmbeddingBackend) obj);
            case 2:
                SurveyQuestionType surveyQuestionType = (SurveyQuestionType) obj;
                surveyQuestionType.getClass();
                return surveyQuestionType.getValue();
            case 3:
                return NavGraph.Companion.childHierarchy$lambda$0((NavDestination) obj);
            case 4:
                return PruningProcessingQueue._init_$lambda$1((List) obj);
            case 5:
                return SaverKt.AutoSaver$lambda$1(obj);
            case 6:
                return SystemIdInfoDao_Impl.getWorkSpecIds$lambda$2("SELECT DISTINCT work_spec_id FROM SystemIdInfo", (SQLiteConnection) obj);
            case 7:
                return WorkSpecDao_Impl.getAllUnfinishedWork$lambda$21("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", (SQLiteConnection) obj);
            default:
                return Boolean.valueOf(qj1.c(obj));
        }
    }
}
