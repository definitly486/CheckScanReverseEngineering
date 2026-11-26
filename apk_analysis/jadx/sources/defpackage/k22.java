package defpackage;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k22 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ k22(int i, Object obj, Object obj2) {
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
                return CoroutineAdaptersKt.propagateTo$lambda$0((mk2) obj3, (xp1) obj2, (Throwable) obj);
            default:
                return FocusableNode.emitWithFallback$lambda$0((MutableInteractionSource) obj3, (Interaction) obj2, (Throwable) obj);
        }
    }
}
