package defpackage;

import androidx.compose.animation.core.AnimationKt;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.Savers_androidKt;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import yads.m91;
import yads.vg2;
import yads.wr0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lm implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ lm(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AnimationKt.createAnimation$lambda$0((AnimationVector) obj);
            case 1:
                ne4 ne4Var = (ne4) obj;
                ne4Var.getClass();
                return oe4.a(ne4Var);
            case 2:
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("SELECT qrCode FROM cheque_requests WHERE status = 'CHEQUE_RECEIVED'");
                try {
                    ArrayList arrayList = new ArrayList();
                    while (sQLiteStatementPrepare.step()) {
                        arrayList.add(sQLiteStatementPrepare.isNull(0) ? null : sQLiteStatementPrepare.getText(0));
                        break;
                    }
                    return arrayList;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 3:
                return Savers_androidKt.LineBreakSaver$lambda$1(obj);
            case 4:
                return SuspendAnimationKt.animateDecay$lambda$1((AnimationScope) obj);
            case 5:
                return Boolean.valueOf(TextFieldSelectionState.observeTextToolbarVisibility$lambda$1$0((Rect) obj));
            case 6:
                return m91.a((String) obj);
            case 7:
                return Boolean.valueOf(vg2.d(obj));
            default:
                return wr0.a((String) obj);
        }
    }
}
