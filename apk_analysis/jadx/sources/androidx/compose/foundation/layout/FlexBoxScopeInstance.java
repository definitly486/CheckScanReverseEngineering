package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes.dex */
public final class FlexBoxScopeInstance implements FlexBoxScope {
    public static final int $stable = 0;
    public static final FlexBoxScopeInstance INSTANCE = new FlexBoxScopeInstance();

    private FlexBoxScopeInstance() {
    }

    @Override // androidx.compose.foundation.layout.FlexBoxScope
    public Modifier flex(Modifier modifier, FlexConfig flexConfig) {
        return modifier.then(new FlexBoxChildElement(flexConfig));
    }
}
