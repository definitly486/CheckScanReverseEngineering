package androidx.paging.internal;

import androidx.paging.LoadStates;
import defpackage.ll3;
import defpackage.na8;

/* JADX INFO: loaded from: classes3.dex */
public final class LogUtilKt {
    public static final String appendMediatorStatesIfNotNull(LoadStates loadStates, ll3<String> ll3Var) {
        ll3Var.getClass();
        String strInvoke = ll3Var.invoke();
        if (loadStates != null) {
            strInvoke = strInvoke + "|   mediatorLoadStates: " + loadStates + '\n';
        }
        return na8.j(strInvoke + "|)");
    }
}
