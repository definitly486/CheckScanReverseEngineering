package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface OnRemeasuredModifier extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(OnRemeasuredModifier onRemeasuredModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return OnRemeasuredModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(OnRemeasuredModifier onRemeasuredModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return OnRemeasuredModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(OnRemeasuredModifier onRemeasuredModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) OnRemeasuredModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(OnRemeasuredModifier onRemeasuredModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) OnRemeasuredModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(OnRemeasuredModifier onRemeasuredModifier, Modifier modifier) {
            return OnRemeasuredModifier.super.then(modifier);
        }
    }

    /* JADX INFO: renamed from: onRemeasured-ozmzZPI, reason: not valid java name */
    void m7758onRemeasuredozmzZPI(long j);
}
