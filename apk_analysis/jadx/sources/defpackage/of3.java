package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.foundation.layout.FlowLineMeasurePolicy;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.SelectionManager_androidKt;
import androidx.compose.ui.layout.Placeable;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.PreferenceDao_Impl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class of3 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ of3(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return FlowLayoutOverflowState.setOverflowMeasurables__hBUhpc$lambda$2$0((FlowLayoutOverflowState) obj3, (FlowLineMeasurePolicy) obj2, (Placeable) obj);
            case 1:
                return PreferenceDao_Impl.insertPreference$lambda$0((PreferenceDao_Impl) obj3, (Preference) obj2, (SQLiteConnection) obj);
            default:
                return SelectionManager_androidKt.addSelectionContainerTextContextMenuComponents$lambda$0$1((SelectionManager) obj3, (Context) obj2, (TextContextMenuBuilderScope) obj);
        }
    }
}
