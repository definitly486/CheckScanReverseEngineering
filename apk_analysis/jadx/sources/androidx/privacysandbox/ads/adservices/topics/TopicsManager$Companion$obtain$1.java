package androidx.privacysandbox.ads.adservices.topics;

import android.content.Context;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class TopicsManager$Companion$obtain$1 extends gh4 implements nl3<Context, TopicsManagerApi31Ext11Impl> {
    final /* synthetic */ Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsManager$Companion$obtain$1(Context context) {
        super(1);
        this.$context = context;
    }

    @Override // defpackage.nl3
    public final TopicsManagerApi31Ext11Impl invoke(Context context) {
        context.getClass();
        return new TopicsManagerApi31Ext11Impl(this.$context);
    }
}
