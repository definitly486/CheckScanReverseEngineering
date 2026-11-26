package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class DrawModifierKt {
    public static final CacheDrawModifierNode CacheDrawModifierNode(nl3<? super CacheDrawScope, DrawResult> nl3Var) {
        return new CacheDrawModifierNodeImpl(new CacheDrawScope(), nl3Var);
    }

    public static final Modifier drawBehind(Modifier modifier, nl3<? super DrawScope, j59> nl3Var) {
        return modifier.then(new DrawBehindElement(nl3Var));
    }

    public static final Modifier drawWithCache(Modifier modifier, nl3<? super CacheDrawScope, DrawResult> nl3Var) {
        return modifier.then(new DrawWithCacheElement(nl3Var));
    }

    public static final Modifier drawWithContent(Modifier modifier, nl3<? super ContentDrawScope, j59> nl3Var) {
        return modifier.then(new DrawWithContentElement(nl3Var));
    }
}
