package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface RemeasurementModifier extends Modifier.Element {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(RemeasurementModifier remeasurementModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return RemeasurementModifier.super.all(nl3Var);
        }

        @Deprecated
        public static boolean any(RemeasurementModifier remeasurementModifier, nl3<? super Modifier.Element, Boolean> nl3Var) {
            return RemeasurementModifier.super.any(nl3Var);
        }

        @Deprecated
        public static <R> R foldIn(RemeasurementModifier remeasurementModifier, R r, bm3<? super R, ? super Modifier.Element, ? extends R> bm3Var) {
            return (R) RemeasurementModifier.super.foldIn(r, bm3Var);
        }

        @Deprecated
        public static <R> R foldOut(RemeasurementModifier remeasurementModifier, R r, bm3<? super Modifier.Element, ? super R, ? extends R> bm3Var) {
            return (R) RemeasurementModifier.super.foldOut(r, bm3Var);
        }

        @Deprecated
        public static Modifier then(RemeasurementModifier remeasurementModifier, Modifier modifier) {
            return RemeasurementModifier.super.then(modifier);
        }
    }

    void onRemeasurementAvailable(Remeasurement remeasurement);
}
