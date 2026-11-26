package androidx.compose.foundation.text;

import androidx.compose.foundation.text.input.InputTransformation;
import androidx.compose.foundation.text.input.TextFieldBuffer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.ui.text.TextRange;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class PasswordInputTransformation implements InputTransformation {
    public static final int $stable = 0;
    private final MutableIntState revealCodepointIndex$delegate = SnapshotIntStateKt.mutableIntStateOf(-1);
    private final ll3<j59> scheduleHide;

    public PasswordInputTransformation(ll3<j59> ll3Var) {
        this.scheduleHide = ll3Var;
    }

    private final void setRevealCodepointIndex(int i) {
        this.revealCodepointIndex$delegate.setIntValue(i);
    }

    public final int getRevealCodepointIndex$foundation() {
        return this.revealCodepointIndex$delegate.getIntValue();
    }

    public final ll3<j59> getScheduleHide() {
        return this.scheduleHide;
    }

    public final void hide() {
        setRevealCodepointIndex(-1);
    }

    @Override // androidx.compose.foundation.text.input.InputTransformation
    public void transformInput(TextFieldBuffer textFieldBuffer) {
        if (textFieldBuffer.getChanges().getChangeCount() != 1 || TextRange.m8487getLengthimpl(textFieldBuffer.getChanges().mo2662getRangejx7JFs(0)) != 1 || textFieldBuffer.hasSelection()) {
            setRevealCodepointIndex(-1);
            return;
        }
        int iM8489getMinimpl = TextRange.m8489getMinimpl(textFieldBuffer.getChanges().mo2662getRangejx7JFs(0));
        if (getRevealCodepointIndex$foundation() != iM8489getMinimpl) {
            this.scheduleHide.invoke();
            setRevealCodepointIndex(iM8489getMinimpl);
        }
    }
}
