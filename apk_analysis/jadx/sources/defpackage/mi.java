package defpackage;

import android.animation.Animator;
import android.content.Context;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.AndroidExternalSurface_androidKt;
import androidx.core.animation.AnimatorKt;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.TransactorKt;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.controllers.ConstraintController;
import java.util.ArrayList;
import yads.ec1;
import yads.s11;
import yads.tz1;
import yads.zg1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class mi implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ mi(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AndroidExternalSurface_androidKt.AndroidEmbeddedExternalSurface_sv6N_fY$lambda$0$0((Context) obj);
            case 1:
                return AnimatorKt.addPauseListener$lambda$0((Animator) obj);
            case 2:
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("SELECT * FROM cheque_requests");
                try {
                    int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "qrCode");
                    int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, NotificationCompat.CATEGORY_STATUS);
                    int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requestJson");
                    int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "responseJson");
                    ArrayList arrayList = new ArrayList();
                    while (sQLiteStatementPrepare.step()) {
                        arrayList.add(new kg1(sQLiteStatementPrepare.getLong(columnIndexOrThrow), sQLiteStatementPrepare.isNull(columnIndexOrThrow2) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow2), sQLiteStatementPrepare.isNull(columnIndexOrThrow3) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow3), sQLiteStatementPrepare.isNull(columnIndexOrThrow4) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow4), sQLiteStatementPrepare.isNull(columnIndexOrThrow5) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow5)));
                        break;
                    }
                    return arrayList;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 3:
                return SuspendAnimationKt.animate$lambda$2((AnimationScope) obj);
            case 4:
                return Boolean.valueOf(TransactorKt.execSQL$lambda$0((SQLiteStatement) obj));
            case 5:
                return WorkConstraintsTracker.areAllConstraintsMet$lambda$5((ConstraintController) obj);
            case 6:
                return Boolean.valueOf(ec1.a(obj));
            case 7:
                return Boolean.valueOf(s11.a(obj));
            case 8:
                return Boolean.valueOf(tz1.c(obj));
            default:
                return Boolean.valueOf(zg1.g(obj));
        }
    }
}
