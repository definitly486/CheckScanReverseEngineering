package com.zakshaker.browser;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.warefly.checkscan.R;
import defpackage.ta8;

/* JADX INFO: loaded from: classes.dex */
public final class CashbackBrowserActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        Uri uri;
        super.onCreate(bundle);
        Intent intent = new Intent("android.intent.action.VIEW");
        String dataString = getIntent().getDataString();
        if (dataString == null) {
            dataString = "";
        }
        if (ta8.D(dataString, "aliexpress", false)) {
            uri = Uri.parse("checkscan://online_shop?id=1514");
            uri.getClass();
        } else if (ta8.D(dataString, "mvideo", false)) {
            uri = Uri.parse("checkscan://online_shop?id=3199");
            uri.getClass();
        } else if (ta8.D(dataString, "zdravcity", false)) {
            uri = Uri.parse("checkscan://online_shop?id=445");
            uri.getClass();
        } else if (ta8.D(dataString, "chitai-gorod", false)) {
            uri = Uri.parse("checkscan://online_shop?id=257");
            uri.getClass();
        } else if (ta8.D(dataString, "sbermegamarket", false)) {
            uri = Uri.parse("checkscan://online_shop?id=441");
            uri.getClass();
        } else if (ta8.D(dataString, "eldorado", false)) {
            uri = Uri.parse("checkscan://online_shop?id=3200");
            uri.getClass();
        } else if (ta8.D(dataString, "sbermarket", false)) {
            uri = Uri.parse("checkscan://online_shop?id=1611");
            uri.getClass();
        } else if (ta8.D(dataString, "market.yandex", false)) {
            uri = Uri.parse("checkscan://online_shop?id=727");
            uri.getClass();
        } else if (ta8.D(dataString, "letu", false)) {
            uri = Uri.parse("checkscan://online_shop?id=55");
            uri.getClass();
        } else if (ta8.D(dataString, "goldapple", false)) {
            uri = Uri.parse("checkscan://online_shop?id=694");
            uri.getClass();
        } else {
            String string = getString(R.string.referral_intent_deeplink, dataString);
            string.getClass();
            uri = Uri.parse(string);
            uri.getClass();
        }
        intent.setData(uri);
        startActivity(intent);
        finish();
    }
}
