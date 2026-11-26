package androidx.compose.ui.modifier;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface ModifierLocalProvider<T> extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static <T> boolean all(ModifierLocalProvider<T> modifierLocalProvider, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return ModifierLocalProvider.super.all(nl3Var);
        }

        @Deprecated
        public static <T> boolean any(ModifierLocalProvider<T> modifierLocalProvider, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return ModifierLocalProvider.super.any(nl3Var);
        }

        @Deprecated
        public static <T, R> R foldIn(ModifierLocalProvider<T> modifierLocalProvider, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) ModifierLocalProvider.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <T, R> R foldOut(ModifierLocalProvider<T> modifierLocalProvider, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) ModifierLocalProvider.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static <T> Modifier then(ModifierLocalProvider<T> modifierLocalProvider, Modifier modifier) {
            return ModifierLocalProvider.super.then(modifier);
        }
    }

    ProvidableModifierLocal<T> getKey();

    T getValue();
}
