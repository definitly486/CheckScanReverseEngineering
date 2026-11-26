package defpackage;

import androidx.compose.material3.SliderKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MovableContent;
import androidx.compose.runtime.MovableContentKt;
import androidx.compose.ui.input.pointer.PointerInputChange;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vd5 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vd5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return MovableContentKt.movableContentOf$lambda$0((MovableContent) obj3, (Composer) obj, ((Integer) obj2).intValue());
            default:
                return SliderKt.awaitSlop_8vUncbI$lambda$49((o07) obj3, (PointerInputChange) obj, ((Float) obj2).floatValue());
        }
    }
}
