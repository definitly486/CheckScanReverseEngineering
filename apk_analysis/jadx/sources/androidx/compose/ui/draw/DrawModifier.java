package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import defpackage.bm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface DrawModifier extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(DrawModifier drawModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return DrawModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(DrawModifier drawModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return DrawModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(DrawModifier drawModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) DrawModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(DrawModifier drawModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) DrawModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(DrawModifier drawModifier, Modifier modifier) {
            return DrawModifier.super.then(modifier);
        }
    }

    void draw(ContentDrawScope contentDrawScope);
}
