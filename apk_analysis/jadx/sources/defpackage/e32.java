package defpackage;

import androidx.compose.material3.TooltipKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.room.CoroutinesRoom;
import androidx.sqlite.SQLiteConnection;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e32 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ e32(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return CoroutinesRoom.Companion.createFlow$lambda$1((Callable) obj2, (SQLiteConnection) obj);
            case 1:
                return SnapshotMutableFloatStateImpl.component2$lambda$0((SnapshotMutableFloatStateImpl) obj2, ((Float) obj).floatValue());
            default:
                return TooltipKt.layoutCaret_J5j9r9c$lambda$22$lambda$21((Placeable) obj2, (Placeable.PlacementScope) obj);
        }
    }
}
