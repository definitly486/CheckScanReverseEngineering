package yads;

import android.content.Context;
import android.net.Uri;
import java.util.HashMap;
import java.util.LinkedHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class kn1 extends lu0 {
    public final c60 a;
    public final ln1 b;
    public final vn1 c;
    public final oo1 d;
    public final no1 e;
    public final sz f;

    public kn1(Context context, e4 e4Var, bf5 bf5Var, d9 d9Var, c60 c60Var, ln1 ln1Var, vn1 vn1Var) {
        oo1 oo1Var = new oo1(new cv4(context, e4Var, bf5Var, i16.CLICK), e4Var, d9Var);
        Context context2 = ((do6) bf5Var).a;
        no1 no1Var = new no1(d9Var, mw.a(context2, context2));
        sz szVar = new sz();
        this.a = c60Var;
        this.b = ln1Var;
        this.c = vn1Var;
        this.d = oo1Var;
        this.e = no1Var;
        this.f = szVar;
    }

    public final boolean a(JSONObject jSONObject, Uri uri, vh2 vh2Var) {
        if (!defpackage.aa4.e(uri.getScheme(), "mobileads")) {
            return false;
        }
        String host = uri.getHost();
        if (host != null) {
            int iHashCode = host.hashCode();
            if (iHashCode != 94750088) {
                if (iHashCode != 866535483) {
                    if (iHashCode != 986975867) {
                        if (iHashCode == 1270469668 && host.equals("trackUrl")) {
                            sz szVar = this.f;
                            vq0 vq0Var = (vq0) vh2Var;
                            vq0Var.getClass();
                            LinkedHashMap linkedHashMapA = szVar.a(vq0Var, null);
                            oo1 oo1Var = this.d;
                            h75 h75VarA = oo1Var.d.a(oo1Var.b, oo1Var.c);
                            String queryParameter = uri.getQueryParameter("trackingUrl");
                            if (queryParameter != null && queryParameter.length() > 0) {
                                oo1Var.a.a(queryParameter, linkedHashMapA, h75VarA);
                                return true;
                            }
                            return true;
                        }
                    } else if (host.equals("trackAnalytics")) {
                        no1 no1Var = this.e;
                        no1Var.getClass();
                        String queryParameter2 = uri.getQueryParameter("eventName");
                        if (queryParameter2 != null) {
                            String str = queryParameter2.length() != 0 ? queryParameter2 : null;
                            if (str != null) {
                                no1Var.b.a(new g75(str, jSONObject != null ? defpackage.n05.n(nq3.a(jSONObject)) : new HashMap(), no1Var.a.i));
                            }
                        }
                        return true;
                    }
                } else if (host.equals("closeAd")) {
                    this.a.e();
                    return true;
                }
            } else if (host.equals("click")) {
                vn1 vn1Var = this.c;
                vq0 vq0Var2 = (vq0) vh2Var;
                vq0Var2.getClass();
                vn1Var.a(uri, vq0Var2);
                return true;
            }
        }
        return this.b.a(uri);
    }

    @Override // yads.lu0
    public final boolean a(xr0 xr0Var, vh2 vh2Var, fs2 fs2Var) {
        as2 as2Var;
        return super.a(xr0Var, vh2Var, fs2Var) || ((as2Var = xr0Var.k) != null && a(xr0Var.f, (Uri) as2Var.a(fs2Var), vh2Var));
    }

    @Override // yads.lu0
    public final boolean a(r02 r02Var, vq0 vq0Var, fs2 fs2Var) {
        as2 url;
        return super.a(r02Var, vq0Var, fs2Var) || ((url = r02Var.getUrl()) != null && a(r02Var.a(), (Uri) url.a(fs2Var), vq0Var));
    }
}
