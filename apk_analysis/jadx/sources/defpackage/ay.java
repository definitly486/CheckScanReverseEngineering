package defpackage;

import androidx.camera.camera2.pipe.core.PruningProcessingQueue;
import androidx.room.support.AutoClosingRoomOpenHelper;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.posthog.surveys.SurveyMatchType;
import java.util.List;
import yads.h22;
import yads.l20;
import yads.p20;
import yads.qj1;
import yads.u62;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ay implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ay(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.pokeOpen$lambda$0((SupportSQLiteDatabase) obj);
            case 1:
                String str = (String) obj;
                str.getClass();
                return SurveyMatchType.Companion.fromValue(str);
            case 2:
                return PruningProcessingQueue._init_$lambda$0((List) obj);
            case 3:
                return Boolean.valueOf(h22.c(obj));
            case 4:
                return Integer.valueOf(p20.a((l20) obj));
            case 5:
                return Boolean.valueOf(qj1.b(obj));
            default:
                return Boolean.valueOf(u62.e(obj));
        }
    }
}
