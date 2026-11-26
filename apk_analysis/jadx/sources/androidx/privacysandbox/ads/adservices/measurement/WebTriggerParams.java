package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import defpackage.aa4;
import defpackage.dh;
import defpackage.jh2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class WebTriggerParams {
    public static final Companion Companion = new Companion(null);
    private final boolean debugKeyAllowed;
    private final Uri registrationUri;

    public WebTriggerParams(Uri uri, boolean z) {
        uri.getClass();
        this.registrationUri = uri;
        this.debugKeyAllowed = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebTriggerParams)) {
            return false;
        }
        WebTriggerParams webTriggerParams = (WebTriggerParams) obj;
        return aa4.e(this.registrationUri, webTriggerParams.registrationUri) && this.debugKeyAllowed == webTriggerParams.debugKeyAllowed;
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
        StringBuilder sb = new StringBuilder("WebTriggerParams { RegistrationUri=");
        sb.append(this.registrationUri);
        sb.append(", DebugKeyAllowed=");
        return dh.e(sb, this.debugKeyAllowed, " }");
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final List<android.adservices.measurement.WebTriggerParams> convertWebTriggerParams$ads_adservices_release(List<WebTriggerParams> list) {
            list.getClass();
            ArrayList arrayList = new ArrayList();
            for (WebTriggerParams webTriggerParams : list) {
                android.adservices.measurement.WebTriggerParams webTriggerParamsBuild = new android.adservices.measurement.WebTriggerParams.Builder(webTriggerParams.getRegistrationUri()).setDebugKeyAllowed(webTriggerParams.getDebugKeyAllowed()).build();
                webTriggerParamsBuild.getClass();
                arrayList.add(webTriggerParamsBuild);
            }
            return arrayList;
        }

        private Companion() {
        }
    }
}
