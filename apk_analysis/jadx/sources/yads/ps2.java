package yads;

import android.content.Context;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes6.dex */
public class ps2 extends m05 {
    private z80 adUiElementsProvider;
    private wt5 playerView;

    public ps2(Context context) {
        super(context);
    }

    public final v96 getAdUiElements() {
        return null;
    }

    public final z80 getAdUiElementsProvider() {
        return this.adUiElementsProvider;
    }

    public final wt5 getPlayerView() {
        return this.playerView;
    }

    public final void setAdUiElements(v96 v96Var) {
    }

    public final void setAdUiElementsProvider(z80 z80Var) {
        this.adUiElementsProvider = z80Var;
    }

    public final void setPlayerView(wt5 wt5Var) {
        this.playerView = wt5Var;
    }

    public ps2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ps2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
