package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Density;
import defpackage.bm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface ParentDataModifier extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(ParentDataModifier parentDataModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return ParentDataModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(ParentDataModifier parentDataModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return ParentDataModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(ParentDataModifier parentDataModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) ParentDataModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(ParentDataModifier parentDataModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) ParentDataModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(ParentDataModifier parentDataModifier, Modifier modifier) {
            return ParentDataModifier.super.then(modifier);
        }
    }

    Object modifyParentData(Density density, Object obj);
}
