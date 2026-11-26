package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementManager;

/* JADX INFO: loaded from: classes4.dex */
public final class p extends v0 {
    @Override // com.tapjoy.internal.v0
    public final TJPlacement a(Context context, u0 u0Var) {
        return TJPlacementManager.createPlacement(context, "InsufficientCurrency", true, u0Var);
    }

    @Override // com.tapjoy.internal.v0
    public final /* bridge */ /* synthetic */ String b() {
        return "InsufficientCurrency";
    }
}
