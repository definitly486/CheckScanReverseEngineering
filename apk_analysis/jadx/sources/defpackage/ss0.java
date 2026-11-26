package defpackage;

import androidx.compose.foundation.BorderModifierNode;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Transformations;
import androidx.window.embedding.OverlayControllerImpl;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ss0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ss0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return BorderModifierNode.drawWithCacheModifierNode$lambda$0((BorderModifierNode) obj2, (CacheDrawScope) obj);
            case 1:
                return OverlayControllerImpl._init_$lambda$6((OverlayControllerImpl) obj2, (List) obj);
            case 2:
                return SnapshotKt.takeNewSnapshot$lambda$0((nl3) obj2, (SnapshotIdSet) obj);
            default:
                return Transformations.AnonymousClass2.onChanged$lambda$0((MediatorLiveData) obj2, obj);
        }
    }
}
