package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public interface FocusRequesterModifier extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(FocusRequesterModifier focusRequesterModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return FocusRequesterModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(FocusRequesterModifier focusRequesterModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return FocusRequesterModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(FocusRequesterModifier focusRequesterModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) FocusRequesterModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(FocusRequesterModifier focusRequesterModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) FocusRequesterModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(FocusRequesterModifier focusRequesterModifier, Modifier modifier) {
            return FocusRequesterModifier.super.then(modifier);
        }
    }

    FocusRequester getFocusRequester();
}
