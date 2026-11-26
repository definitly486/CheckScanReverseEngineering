package defpackage;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.foundation.text.input.internal.RecordingInputConnection;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.BottomAppBarState;
import androidx.compose.ui.text.input.EditCommand;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class oo implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ oo(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AppBarKt.settleAppBarBottom$lambda$30((BottomAppBarState) obj2, (AnimationScope) obj);
            case 1:
                return RecordingInputConnection.performHandwritingGesture$lambda$0((RecordingInputConnection) obj2, (EditCommand) obj);
            default:
                return WorkSpecDao_Impl.getWorkSpec$lambda$3("SELECT * FROM workspec WHERE id=?", (String) obj2, (SQLiteConnection) obj);
        }
    }
}
