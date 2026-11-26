package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.v39;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposedModifierKt$materializeImpl$result$1 extends gh4 implements bm3<Modifier, Modifier.Element, Modifier> {
    final /* synthetic */ Composer $this_materializeImpl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposedModifierKt$materializeImpl$result$1(Composer composer) {
        super(2);
        this.$this_materializeImpl = composer;
    }

    @Override // defpackage.bm3
    public final Modifier invoke(Modifier modifier, Modifier.Element element) {
        boolean z = element instanceof ComposedModifier;
        Modifier modifierMaterializeImpl = element;
        if (z) {
            dm3<Modifier, Composer, Integer, Modifier> factory = ((ComposedModifier) element).getFactory();
            factory.getClass();
            v39.c(3, factory);
            modifierMaterializeImpl = ComposedModifierKt.materializeImpl(this.$this_materializeImpl, factory.invoke(Modifier.Companion, this.$this_materializeImpl, 0));
        }
        return modifier.then(modifierMaterializeImpl);
    }
}
