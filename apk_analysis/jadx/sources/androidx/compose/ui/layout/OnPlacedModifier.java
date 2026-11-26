package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface OnPlacedModifier extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(OnPlacedModifier onPlacedModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return OnPlacedModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(OnPlacedModifier onPlacedModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return OnPlacedModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(OnPlacedModifier onPlacedModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) OnPlacedModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(OnPlacedModifier onPlacedModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) OnPlacedModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(OnPlacedModifier onPlacedModifier, Modifier modifier) {
            return OnPlacedModifier.super.then(modifier);
        }
    }

    void onPlaced(LayoutCoordinates layoutCoordinates);
}
