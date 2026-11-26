package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.window.DialogProperties;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class BasicAlertDialogOverrideScope {
    public static final int $stable = 0;
    private final bm3<Composer, Integer, j59> content;
    private final Modifier modifier;
    private final ll3<j59> onDismissRequest;
    private final DialogProperties properties;

    public /* synthetic */ BasicAlertDialogOverrideScope(ll3 ll3Var, Modifier modifier, DialogProperties dialogProperties, bm3 bm3Var, int i, jh2 jh2Var) {
        this(ll3Var, (i & 2) != 0 ? Modifier.Companion : modifier, (i & 4) != 0 ? new DialogProperties(false, false, false, 7, (jh2) null) : dialogProperties, bm3Var);
    }

    public final bm3<Composer, Integer, j59> getContent() {
        return this.content;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    public final ll3<j59> getOnDismissRequest() {
        return this.onDismissRequest;
    }

    public final DialogProperties getProperties() {
        return this.properties;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BasicAlertDialogOverrideScope(ll3<j59> ll3Var, Modifier modifier, DialogProperties dialogProperties, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        this.onDismissRequest = ll3Var;
        this.modifier = modifier;
        this.properties = dialogProperties;
        this.content = bm3Var;
    }
}
