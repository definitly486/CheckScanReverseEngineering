package defpackage;

import androidx.compose.material3.internal.ChildSemanticsNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ii1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ii1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(ChildSemanticsNode.applySemantics$lambda$1((SemanticsPropertyReceiver) obj2, (TraversableNode) obj));
            default:
                return Integer.valueOf(WorkSpecDao_Impl.incrementWorkSpecRunAttemptCount$lambda$43("UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?", (String) obj2, (SQLiteConnection) obj));
        }
    }
}
