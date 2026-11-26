package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class a0 implements TJPlacementRequestListener {
    public final /* synthetic */ TJPlacement a;
    public final /* synthetic */ TJCorePlacement b;

    public a0(TJCorePlacement tJCorePlacement, TJPlacement tJPlacement) {
        this.b = tJCorePlacement;
        this.a = tJPlacement;
    }

    @Override // com.tapjoy.TJPlacementRequestListener
    public final void onCachingCompleted() {
        TJCorePlacement tJCorePlacement = this.b;
        TJPlacementData tJPlacementData = tJCorePlacement.c;
        if (tJPlacementData != null) {
            TJAdUnit adUnit = tJCorePlacement.getAdUnit();
            TJCorePlacement tJCorePlacement2 = this.b;
            tJPlacementData.setDidIncrementPreRender(adUnit.preload(tJCorePlacement2.c, tJCorePlacement2.b));
        }
    }

    @Override // com.tapjoy.TJPlacementRequestListener
    public final void onContentReady() {
        this.b.a();
    }

    @Override // com.tapjoy.TJPlacementRequestListener
    public final void onContentRequestFailure(TJError tJError) {
        this.b.a(this.a, tJError);
    }

    @Override // com.tapjoy.TJPlacementRequestListener
    public final void onContentRequestSuccess(TJPlacementData tJPlacementData) {
        TJCorePlacement tJCorePlacement = this.b;
        tJCorePlacement.c = tJPlacementData;
        tJCorePlacement.m = true;
        tJCorePlacement.a(tJCorePlacement.a("REQUEST"));
    }

    @Override // com.tapjoy.TJPlacementRequestListener
    public final void onPlacementRequestSuccess() {
        this.b.a(this.a);
    }
}
