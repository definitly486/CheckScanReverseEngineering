package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public interface SemanticsModifier extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(SemanticsModifier semanticsModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return SemanticsModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(SemanticsModifier semanticsModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return SemanticsModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(SemanticsModifier semanticsModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) SemanticsModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(SemanticsModifier semanticsModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) SemanticsModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static int getId(SemanticsModifier semanticsModifier) {
            return SemanticsModifier.super.getId();
        }

        @ul2
        public static /* synthetic */ void getId$annotations() {
        }

        @Deprecated
        public static Modifier then(SemanticsModifier semanticsModifier, Modifier modifier) {
            return SemanticsModifier.super.then(modifier);
        }
    }

    default int getId() {
        return -1;
    }

    SemanticsConfiguration getSemanticsConfiguration();
}
