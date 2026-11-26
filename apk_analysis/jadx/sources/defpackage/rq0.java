package defpackage;

import android.net.Uri;
import com.google.android.gms.actions.SearchIntents;
import com.tapjoy.TJAdUnitConstants;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class rq0 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        Integer numO;
        uri.getClass();
        String queryParameter = uri.getQueryParameter("selection_id");
        if (queryParameter != null && (numO = qa8.o(10, queryParameter)) != null) {
            return new Deeplink.Catalog.Selection(numO.intValue(), uri.getQueryParameter(TJAdUnitConstants.String.TITLE));
        }
        String queryParameter2 = uri.getQueryParameter(SearchIntents.EXTRA_QUERY);
        return queryParameter2 != null ? new Deeplink.Catalog.BonusesSearch(queryParameter2) : new Deeplink.Desktop.Bonuses(0);
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "bonuses";
    }
}
