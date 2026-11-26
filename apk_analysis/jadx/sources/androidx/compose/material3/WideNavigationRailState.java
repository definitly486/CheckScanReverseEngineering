package androidx.compose.material3;

import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public interface WideNavigationRailState {
    Object collapse(e02<? super j59> e02Var);

    Object expand(e02<? super j59> e02Var);

    WideNavigationRailValue getCurrentValue();

    WideNavigationRailValue getTargetValue();

    boolean isAnimating();

    Object snapTo(WideNavigationRailValue wideNavigationRailValue, e02<? super j59> e02Var);

    Object toggle(e02<? super j59> e02Var);
}
