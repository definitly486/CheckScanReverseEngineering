package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface OnGloballyPositionedModifier extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(OnGloballyPositionedModifier onGloballyPositionedModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return OnGloballyPositionedModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(OnGloballyPositionedModifier onGloballyPositionedModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return OnGloballyPositionedModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(OnGloballyPositionedModifier onGloballyPositionedModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) OnGloballyPositionedModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(OnGloballyPositionedModifier onGloballyPositionedModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) OnGloballyPositionedModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(OnGloballyPositionedModifier onGloballyPositionedModifier, Modifier modifier) {
            return OnGloballyPositionedModifier.super.then(modifier);
        }
    }

    void onGloballyPositioned(LayoutCoordinates layoutCoordinates);
}
