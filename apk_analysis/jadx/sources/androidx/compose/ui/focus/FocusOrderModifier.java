package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public interface FocusOrderModifier extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(FocusOrderModifier focusOrderModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return FocusOrderModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(FocusOrderModifier focusOrderModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return FocusOrderModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(FocusOrderModifier focusOrderModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) FocusOrderModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(FocusOrderModifier focusOrderModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) FocusOrderModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(FocusOrderModifier focusOrderModifier, Modifier modifier) {
            return FocusOrderModifier.super.then(modifier);
        }
    }

    void populateFocusOrder(FocusOrder focusOrder);
}
