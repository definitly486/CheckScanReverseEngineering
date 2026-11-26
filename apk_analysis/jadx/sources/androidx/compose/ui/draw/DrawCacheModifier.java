package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface DrawCacheModifier extends DrawModifier {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(DrawCacheModifier drawCacheModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return DrawCacheModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(DrawCacheModifier drawCacheModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return DrawCacheModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(DrawCacheModifier drawCacheModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) DrawCacheModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(DrawCacheModifier drawCacheModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) DrawCacheModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(DrawCacheModifier drawCacheModifier, Modifier modifier) {
            return DrawCacheModifier.super.then(modifier);
        }
    }

    void onBuildCache(BuildDrawCacheParams buildDrawCacheParams);
}
