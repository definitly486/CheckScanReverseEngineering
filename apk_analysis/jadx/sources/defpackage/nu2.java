package defpackage;

import android.content.Context;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes4.dex */
public final class nu2 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public nu2(Context context) {
        String string = context.getString(R.string.dynamic_link_host);
        string.getClass();
        this.a = string;
        String string2 = context.getString(R.string.firebase_dynamic_links_domain_uri_prefix);
        string2.getClass();
        this.b = string2;
        this.c = context.getPackageName();
        String string3 = context.getString(R.string.firebase_dynamic_links_ios_bundle_id);
        string3.getClass();
        this.d = string3;
        String string4 = context.getString(R.string.firebase_dynamic_links_app_store_id);
        string4.getClass();
        this.e = string4;
    }
}
