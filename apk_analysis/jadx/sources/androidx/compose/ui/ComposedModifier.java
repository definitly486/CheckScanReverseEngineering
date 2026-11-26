package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import defpackage.dm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
class ComposedModifier extends InspectorValueInfo implements Modifier.Element {
    private final dm3<Modifier, Composer, Integer, Modifier> factory;

    /* JADX WARN: Multi-variable type inference failed */
    public ComposedModifier(nl3<? super InspectorInfo, j59> nl3Var, dm3<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> dm3Var) {
        super(nl3Var);
        this.factory = dm3Var;
    }

    public final dm3<Modifier, Composer, Integer, Modifier> getFactory() {
        return this.factory;
    }
}
