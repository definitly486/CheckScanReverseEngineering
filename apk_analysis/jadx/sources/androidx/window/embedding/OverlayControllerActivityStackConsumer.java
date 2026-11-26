package androidx.window.embedding;

import androidx.window.reflection.Consumer2;
import defpackage.j59;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class OverlayControllerActivityStackConsumer implements Consumer2<List<? extends androidx.window.extensions.embedding.ActivityStack>> {
    private final nl3<List<? extends androidx.window.extensions.embedding.ActivityStack>, j59> block;

    /* JADX WARN: Multi-variable type inference failed */
    public OverlayControllerActivityStackConsumer(nl3<? super List<? extends androidx.window.extensions.embedding.ActivityStack>, j59> nl3Var) {
        nl3Var.getClass();
        this.block = nl3Var;
    }

    @Override // androidx.window.reflection.Consumer2
    public void accept(List<? extends androidx.window.extensions.embedding.ActivityStack> list) {
        list.getClass();
        this.block.invoke(list);
    }
}
