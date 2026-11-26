package androidx.compose.material3.pulltorefresh;

import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public interface PullToRefreshState {
    Object animateToHidden(e02<? super j59> e02Var);

    Object animateToThreshold(e02<? super j59> e02Var);

    float getDistanceFraction();

    boolean isAnimating();

    Object snapTo(float f, e02<? super j59> e02Var);
}
