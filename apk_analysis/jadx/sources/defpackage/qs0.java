package defpackage;

import androidx.compose.foundation.BorderModifierNode;
import androidx.compose.material3.OverflowMeasurePolicy;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.layout.Placeable;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Transformations;
import androidx.sqlite.SQLiteConnection;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpecDao_Impl;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qs0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ qs0(int i, Object obj, Object obj2) {
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
                return BorderModifierNode.drawGenericBorder$lambda$0((Outline.Generic) obj3, (Brush) obj2, (ContentDrawScope) obj);
            case 1:
                return OverflowMeasurePolicy.measure_3p2s80s$lambda$11((ArrayList) obj3, (List) obj2, (Placeable.PlacementScope) obj);
            case 2:
                return Transformations.distinctUntilChanged$lambda$0((MediatorLiveData) obj3, (n07) obj2, obj);
            default:
                return Integer.valueOf(WorkSpecDao_Impl.setState$lambda$38("UPDATE workspec SET state=? WHERE id=?", (WorkInfo.State) obj3, (String) obj2, (SQLiteConnection) obj));
        }
    }
}
