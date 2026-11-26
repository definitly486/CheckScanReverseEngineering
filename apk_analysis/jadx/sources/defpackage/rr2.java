package defpackage;

import androidx.compose.material3.DragHandleColors;
import androidx.compose.material3.DragHandleKt;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rr2 implements nl3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ State c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ rr2(DragHandleColors dragHandleColors, State state, MutableState mutableState) {
        this.d = dragHandleColors;
        this.c = state;
        this.e = mutableState;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return DragHandleKt.VerticalDragHandle$lambda$15$lambda$14((DragHandleColors) this.d, this.c, (MutableState) this.e, (DrawScope) obj);
            default:
                return LifecycleEffectKt.LifecycleEventEffect$lambda$1$0((LifecycleOwner) this.d, (Lifecycle.Event) this.e, this.c, (DisposableEffectScope) obj);
        }
    }

    public /* synthetic */ rr2(LifecycleOwner lifecycleOwner, Lifecycle.Event event, State state) {
        this.d = lifecycleOwner;
        this.e = event;
        this.c = state;
    }
}
