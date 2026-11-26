package defpackage;

import android.view.View;
import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.ui.text.MultiParagraphKt;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.SaversKt;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.Navigation;
import androidx.navigation.Navigator;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import yads.cd1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mf5 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ mf5(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return MultiParagraphKt.findParagraphByIndex$lambda$2$0((ParagraphInfo) obj);
            case 1:
                return Navigation.findViewNavController$lambda$2((View) obj);
            case 2:
                return Navigator.onLaunchSingleTop$lambda$3((NavOptionsBuilder) obj);
            case 3:
                return SaversKt.ShadowSaver$lambda$1(obj);
            case 4:
                return TextFieldKeyInput.process_ZmokQxo$lambda$1$3((TextFieldPreparedSelection) obj);
            case 5:
                return WorkSpecDao_Impl.getScheduledWork$lambda$31("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", (SQLiteConnection) obj);
            default:
                return Boolean.valueOf(cd1.a(obj));
        }
    }
}
