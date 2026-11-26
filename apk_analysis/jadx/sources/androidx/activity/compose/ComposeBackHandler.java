package androidx.activity.compose;

import androidx.activity.compose.internal.BackHandlerCompat;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
final class ComposeBackHandler extends BackHandlerCompat {
    private ll3<j59> currentOnBackCompleted;

    public ComposeBackHandler(BackHandlerInfo backHandlerInfo) {
        super(backHandlerInfo);
        this.currentOnBackCompleted = new f();
    }

    public final ll3<j59> getCurrentOnBackCompleted() {
        return this.currentOnBackCompleted;
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public void onBackCompleted() {
        this.currentOnBackCompleted.invoke();
    }

    public final void setCurrentOnBackCompleted(ll3<j59> ll3Var) {
        this.currentOnBackCompleted = ll3Var;
    }
}
