package defpackage;

import android.view.View;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.internal.AccessibilityUtilKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.navigation.Navigation;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class z2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ z2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AccessibilityUtilKt.IncreaseHorizontalSemanticsBounds$lambda$2((SemanticsPropertyReceiver) obj);
            case 1:
                return Navigation.findViewNavController$lambda$3((View) obj);
            case 2:
                return ProgressIndicatorKt._get_linearIndeterminateFirstLineTailAnimationSpec_$lambda$44((KeyframesSpec.KeyframesSpecConfig) obj);
            case 3:
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("SELECT id FROM purchases_table");
                try {
                    ArrayList arrayList = new ArrayList();
                    while (sQLiteStatementPrepare.step()) {
                        arrayList.add(sQLiteStatementPrepare.isNull(0) ? null : Long.valueOf(sQLiteStatementPrepare.getLong(0)));
                        break;
                    }
                    return arrayList;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 4:
                return TextFieldKeyInput.process_ZmokQxo$lambda$1$4((TextFieldPreparedSelection) obj);
            default:
                return j59.a;
        }
    }
}
