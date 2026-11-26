package androidx.compose.ui.modifier;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class ModifierLocalConsumerImpl extends InspectorValueInfo implements ModifierLocalConsumer {
    private final nl3<ModifierLocalReadScope, j59> consumer;

    /* JADX WARN: Multi-variable type inference failed */
    public ModifierLocalConsumerImpl(nl3<? super ModifierLocalReadScope, j59> nl3Var, nl3<? super InspectorInfo, j59> nl3Var2) {
        super(nl3Var2);
        this.consumer = nl3Var;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ModifierLocalConsumerImpl) && ((ModifierLocalConsumerImpl) obj).consumer == this.consumer;
    }

    public final nl3<ModifierLocalReadScope, j59> getConsumer() {
        return this.consumer;
    }

    public int hashCode() {
        return this.consumer.hashCode();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void onModifierLocalsUpdated(ModifierLocalReadScope modifierLocalReadScope) {
        this.consumer.invoke(modifierLocalReadScope);
    }
}
