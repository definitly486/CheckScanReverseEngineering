package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
final class FadeInFadeOutAnimationItem<T> {
    private final T key;
    private final dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> transition;

    /* JADX WARN: Multi-variable type inference failed */
    public FadeInFadeOutAnimationItem(T t, dm3<? super bm3<? super Composer, ? super Integer, j59>, ? super Composer, ? super Integer, j59> dm3Var) {
        this.key = t;
        this.transition = dm3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FadeInFadeOutAnimationItem copy$default(FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem, Object obj, dm3 dm3Var, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = fadeInFadeOutAnimationItem.key;
        }
        if ((i & 2) != 0) {
            dm3Var = fadeInFadeOutAnimationItem.transition;
        }
        return fadeInFadeOutAnimationItem.copy(obj, dm3Var);
    }

    public final T component1() {
        return this.key;
    }

    public final dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> component2() {
        return this.transition;
    }

    public final FadeInFadeOutAnimationItem<T> copy(T t, dm3<? super bm3<? super Composer, ? super Integer, j59>, ? super Composer, ? super Integer, j59> dm3Var) {
        return new FadeInFadeOutAnimationItem<>(t, dm3Var);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FadeInFadeOutAnimationItem)) {
            return false;
        }
        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem = (FadeInFadeOutAnimationItem) obj;
        return aa4.e(this.key, fadeInFadeOutAnimationItem.key) && aa4.e(this.transition, fadeInFadeOutAnimationItem.transition);
    }

    public final T getKey() {
        return this.key;
    }

    public final dm3<bm3<? super Composer, ? super Integer, j59>, Composer, Integer, j59> getTransition() {
        return this.transition;
    }

    public int hashCode() {
        T t = this.key;
        return this.transition.hashCode() + ((t == null ? 0 : t.hashCode()) * 31);
    }

    public String toString() {
        return "FadeInFadeOutAnimationItem(key=" + this.key + ", transition=" + this.transition + ')';
    }
}
