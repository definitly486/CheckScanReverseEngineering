package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import defpackage.aa4;
import defpackage.dh;
import defpackage.jh2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class WebSourceParams {
    public static final Companion Companion = new Companion(null);
    private final boolean debugKeyAllowed;
    private final Uri registrationUri;

    public WebSourceParams(Uri uri, boolean z) {
        uri.getClass();
        this.registrationUri = uri;
        this.debugKeyAllowed = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSourceParams)) {
            return false;
        }
        WebSourceParams webSourceParams = (WebSourceParams) obj;
        return aa4.e(this.registrationUri, webSourceParams.registrationUri) && this.debugKeyAllowed == webSourceParams.debugKeyAllowed;
    }

    public final boolean getDebugKeyAllowed() {
        return this.debugKeyAllowed;
    }

    public final Uri getRegistrationUri() {
        return this.registrationUri;
    }

    public int hashCode() {
        return Boolean.hashCode(this.debugKeyAllowed) + (this.registrationUri.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("WebSourceParams { RegistrationUri=");
        sb.append(this.registrationUri);
        sb.append(", DebugKeyAllowed=");
        return dh.e(sb, this.debugKeyAllowed, " }");
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final List<android.adservices.measurement.WebSourceParams> convertWebSourceParams$ads_adservices_release(List<WebSourceParams> list) {
            list.getClass();
            ArrayList arrayList = new ArrayList();
            for (WebSourceParams webSourceParams : list) {
                android.adservices.measurement.WebSourceParams webSourceParamsBuild = new android.adservices.measurement.WebSourceParams.Builder(webSourceParams.getRegistrationUri()).setDebugKeyAllowed(webSourceParams.getDebugKeyAllowed()).build();
                webSourceParamsBuild.getClass();
                arrayList.add(webSourceParamsBuild);
            }
            return arrayList;
        }

        private Companion() {
        }
    }
}
