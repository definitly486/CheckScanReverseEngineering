package defpackage;

import androidx.compose.foundation.text.modifiers.TextStringSimpleNode;
import androidx.compose.ui.layout.Placeable;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Transformations;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class us8 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ us8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return TextStringSimpleNode.measure_3p2s80s$lambda$0$0((Placeable) obj2, (Placeable.PlacementScope) obj);
            default:
                return Transformations.switchMap$lambda$0$0((MediatorLiveData) obj2, obj);
        }
    }
}
