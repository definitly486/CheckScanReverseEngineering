package defpackage;

import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.lazy.LazyListPrefetchStrategy;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.TextKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wf3 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ wf3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return FlowRowOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$1((dm3) obj2, (FlowLayoutOverflowState) obj);
            case 1:
                return LazyListState.Companion.saver$lambda$1((LazyListPrefetchStrategy) obj2, (List) obj);
            case 2:
                return TextKt.createTextWithLinkStyles$lambda$21((TextLinkStyles) obj2, (AnnotatedString.Range) obj);
            default:
                return Integer.valueOf(WorkSpecDao_Impl.resetWorkSpecRunAttemptCount$lambda$44("UPDATE workspec SET run_attempt_count=0 WHERE id=?", (String) obj2, (SQLiteConnection) obj));
        }
    }
}
