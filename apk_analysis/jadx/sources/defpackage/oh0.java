package defpackage;

import androidx.compose.foundation.gestures.Scrollable2DStateKt;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.material3.BottomSheetScaffoldKt;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.TooltipState;
import androidx.compose.material3.internal.BasicTooltipKt;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkTagDao_Impl;
import yads.bt0;
import yads.yf2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oh0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ oh0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return BasicTooltipKt.BasicTooltipBox$lambda$4$lambda$3((TooltipState) obj2, (DisposableEffectScope) obj);
            case 1:
                return BottomSheetScaffoldKt.verticalScaleDown$lambda$18((SheetState) obj2, (GraphicsLayerScope) obj);
            case 2:
                return LazyGridIntervalContent.item$lambda$0$0(obj2, ((Integer) obj).intValue());
            case 3:
                return Scrollable2DStateKt.rememberScrollable2DState$lambda$0$0((State) obj2, (Offset) obj);
            case 4:
                return WorkTagDao_Impl.getWorkSpecIdsWithTag$lambda$1("SELECT work_spec_id FROM worktag WHERE tag=?", (String) obj2, (SQLiteConnection) obj);
            case 5:
                return bt0.a((xo9) obj2, obj);
            default:
                return yf2.a((yf2) obj2, (String) obj);
        }
    }
}
