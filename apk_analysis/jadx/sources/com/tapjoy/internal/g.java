package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementManager;
import com.tapjoy.TapjoyConnectCore;

/* JADX INFO: loaded from: classes4.dex */
public final class g extends v0 {
    @Override // com.tapjoy.internal.v0
    public final boolean a() {
        return !TapjoyConnectCore.getInstance().isViewOpen();
    }

    @Override // com.tapjoy.internal.v0
    public final /* bridge */ /* synthetic */ String b() {
        return "AppLaunch";
    }

    @Override // com.tapjoy.internal.v0
    public final TJPlacement a(Context context, u0 u0Var) {
        return TJPlacementManager.createPlacement(context, "AppLaunch", true, u0Var);
    }
}
