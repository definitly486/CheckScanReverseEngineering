package defpackage;

import androidx.navigation.NavDestination;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkProgressDao_Impl;
import com.posthog.surveys.SurveyAppearancePosition;
import yads.u62;
import yads.v14;
import yads.zl4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bt3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ bt3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                String str = (String) obj;
                str.getClass();
                return SurveyAppearancePosition.Companion.fromValue(str);
            case 1:
                return NavDestination.Companion._get_hierarchy_$lambda$1((NavDestination) obj);
            case 2:
                return WorkProgressDao_Impl.deleteAll$lambda$3("DELETE FROM WorkProgress", (SQLiteConnection) obj);
            case 3:
                return Boolean.valueOf(u62.a(obj));
            default:
                return zl4.a((v14) obj);
        }
    }
}
