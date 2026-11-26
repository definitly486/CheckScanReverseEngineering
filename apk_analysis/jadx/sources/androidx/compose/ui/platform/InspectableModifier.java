package androidx.compose.ui.platform;

import androidx.compose.ui.Modifier;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public final class InspectableModifier extends InspectorValueInfo implements Modifier.Element {
    public static final int $stable = 0;
    private final End end;

    public final class End implements Modifier.Element {
        public End() {
        }
    }

    public InspectableModifier(nl3<? super InspectorInfo, j59> nl3Var) {
        super(nl3Var);
        this.end = new End();
    }

    public final End getEnd() {
        return this.end;
    }
}
