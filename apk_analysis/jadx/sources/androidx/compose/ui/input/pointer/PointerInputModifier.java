package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface PointerInputModifier extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(PointerInputModifier pointerInputModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return PointerInputModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(PointerInputModifier pointerInputModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return PointerInputModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(PointerInputModifier pointerInputModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) PointerInputModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(PointerInputModifier pointerInputModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) PointerInputModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(PointerInputModifier pointerInputModifier, Modifier modifier) {
            return PointerInputModifier.super.then(modifier);
        }
    }

    PointerInputFilter getPointerInputFilter();
}
