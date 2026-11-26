package androidx.privacysandbox.ads.adservices.adselection;

import android.content.Context;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class AdSelectionManager$Companion$obtain$1 extends gh4 implements nl3<Context, AdSelectionManagerApi31Ext9Impl> {
    final /* synthetic */ Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdSelectionManager$Companion$obtain$1(Context context) {
        super(1);
        this.$context = context;
    }

    @Override // defpackage.nl3
    public final AdSelectionManagerApi31Ext9Impl invoke(Context context) {
        context.getClass();
        return new AdSelectionManagerApi31Ext9Impl(this.$context);
    }
}
