package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class z implements TJAdUnit.TJAdUnitWebViewListener {
    public final /* synthetic */ TJCorePlacement a;

    public z(TJCorePlacement tJCorePlacement) {
        this.a = tJCorePlacement;
    }

    @Override // com.tapjoy.TJAdUnit.TJAdUnitWebViewListener
    public final void onClosed() {
        TJPlacementData tJPlacementData = this.a.c;
        if (tJPlacementData != null && tJPlacementData.isDidIncrementCache()) {
            TJPlacementManager.decrementPlacementCacheCount();
            this.a.c.setDidIncrementCache(false);
        }
        TJPlacementData tJPlacementData2 = this.a.c;
        if (tJPlacementData2 == null || !tJPlacementData2.isDidIncrementPreRender()) {
            return;
        }
        TJPlacementManager.decrementPlacementPreRenderCount();
        this.a.c.setDidIncrementPreRender(false);
    }

    @Override // com.tapjoy.TJAdUnit.TJAdUnitWebViewListener
    public final void onContentReady() {
        this.a.a();
    }
}
