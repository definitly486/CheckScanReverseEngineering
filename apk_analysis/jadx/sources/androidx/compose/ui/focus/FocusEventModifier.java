package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public interface FocusEventModifier extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(FocusEventModifier focusEventModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return FocusEventModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(FocusEventModifier focusEventModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return FocusEventModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(FocusEventModifier focusEventModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) FocusEventModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(FocusEventModifier focusEventModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) FocusEventModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(FocusEventModifier focusEventModifier, Modifier modifier) {
            return FocusEventModifier.super.then(modifier);
        }
    }

    void onFocusEvent(FocusState focusState);
}
