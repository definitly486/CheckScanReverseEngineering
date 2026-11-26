package androidx.compose.foundation.text;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.Placeholder;
import defpackage.dm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class InlineTextContent {
    public static final int $stable = 0;
    private final dm3<String, Composer, Integer, j59> children;
    private final Placeholder placeholder;

    /* JADX WARN: Multi-variable type inference failed */
    public InlineTextContent(Placeholder placeholder, dm3<? super String, ? super Composer, ? super Integer, j59> dm3Var) {
        this.placeholder = placeholder;
        this.children = dm3Var;
    }

    public final dm3<String, Composer, Integer, j59> getChildren() {
        return this.children;
    }

    public final Placeholder getPlaceholder() {
        return this.placeholder;
    }
}
