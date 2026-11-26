package androidx.compose.ui.modifier;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface ModifierLocalConsumer extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(ModifierLocalConsumer modifierLocalConsumer, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return ModifierLocalConsumer.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(ModifierLocalConsumer modifierLocalConsumer, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return ModifierLocalConsumer.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(ModifierLocalConsumer modifierLocalConsumer, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) ModifierLocalConsumer.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(ModifierLocalConsumer modifierLocalConsumer, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) ModifierLocalConsumer.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(ModifierLocalConsumer modifierLocalConsumer, Modifier modifier) {
            return ModifierLocalConsumer.super.then(modifier);
        }
    }

    void onModifierLocalsUpdated(ModifierLocalReadScope modifierLocalReadScope);
}
