package defpackage;

import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.foundation.text.selection.SelectionLayout;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qm7 implements SelectionAdjustment {
    @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
    public final Selection adjust(SelectionLayout selectionLayout) {
        return SelectionAdjustment.Companion.Paragraph$lambda$0(selectionLayout);
    }
}
