package defpackage;

import androidx.compose.foundation.gestures.TargetedFlingBehaviorKt;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.paging.CombinedLoadStates;
import androidx.paging.ItemSnapshotListFlow;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class co implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ co(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AppBarKt.TopAppBarLayout_lyUyIHI$lambda$51$lambda$41$lambda$40((SemanticsPropertyReceiver) obj);
            case 1:
                return DatePickerKt.DateEntryContainer_au3_HiA$lambda$8$lambda$7((SemanticsPropertyReceiver) obj);
            case 2:
                return IconButtonKt.FilledTonalIconToggleButton$lambda$16$lambda$15((SemanticsPropertyReceiver) obj);
            case 3:
                return ItemSnapshotListFlow.asItemSnapshotListFlow$lambda$0((CombinedLoadStates) obj);
            case 4:
                return LazyListScope.items$lambda$0(((Integer) obj).intValue());
            case 5:
                return SaversKt.TextIndentSaver$lambda$1(obj);
            case 6:
                return TargetedFlingBehaviorKt.NoOnReport$lambda$0(((Float) obj).floatValue());
            case 7:
                return TextKt.Text_Z58ophY$lambda$4$lambda$3((TextLayoutResult) obj);
            default:
                return TimePickerKt.TimePickerTextField_1vLObsk$lambda$92$lambda$91$lambda$90((SemanticsPropertyReceiver) obj);
        }
    }
}
