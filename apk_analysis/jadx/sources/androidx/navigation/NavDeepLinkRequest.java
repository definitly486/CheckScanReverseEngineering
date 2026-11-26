package androidx.navigation;

import android.net.Uri;
import defpackage.c9;
import defpackage.fg;
import defpackage.jh2;
import defpackage.me0;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class NavDeepLinkRequest {
    private final String action;
    private final String mimeType;
    private final Uri uri;

    public NavDeepLinkRequest(Uri uri, String str, String str2) {
        this.uri = uri;
        this.action = str;
        this.mimeType = str2;
    }

    public String getAction() {
        return this.action;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public Uri getUri() {
        return this.uri;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NavDeepLinkRequest{");
        if (getUri() != null) {
            sb.append(" uri=");
            sb.append(String.valueOf(getUri()));
        }
        if (getAction() != null) {
            sb.append(" action=");
            sb.append(getAction());
        }
        if (getMimeType() != null) {
            sb.append(" mimetype=");
            sb.append(getMimeType());
        }
        sb.append(" }");
        return sb.toString();
    }

    public static final class Builder {
        public static final Companion Companion = new Companion(null);
        private String action;
        private String mimeType;
        private Uri uri;

        public /* synthetic */ Builder(jh2 jh2Var) {
            this();
        }

        public static final Builder fromAction(String str) {
            return Companion.fromAction(str);
        }

        public static final Builder fromMimeType(String str) {
            return Companion.fromMimeType(str);
        }

        public static final Builder fromUri(Uri uri) {
            return Companion.fromUri(uri);
        }

        public final NavDeepLinkRequest build() {
            return new NavDeepLinkRequest(this.uri, this.action, this.mimeType);
        }

        public final Builder setAction(String str) {
            str.getClass();
            if (str.length() > 0) {
                this.action = str;
                return this;
            }
            fg.c("The NavDeepLinkRequest cannot have an empty action.");
            return null;
        }

        public final Builder setMimeType(String str) {
            str.getClass();
            Pattern patternCompile = Pattern.compile("^[-\\w*.]+/[-\\w+*.]+$");
            patternCompile.getClass();
            if (patternCompile.matcher(str).matches()) {
                this.mimeType = str;
                return this;
            }
            c9.f(me0.c("The given mimeType ", str, " does not match to required \"type/subtype\" format"));
            return null;
        }

        public final Builder setUri(Uri uri) {
            uri.getClass();
            this.uri = uri;
            return this;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final Builder fromAction(String str) {
                str.getClass();
                jh2 jh2Var = null;
                if (str.length() <= 0) {
                    fg.c("The NavDeepLinkRequest cannot have an empty action.");
                    return null;
                }
                Builder builder = new Builder(jh2Var);
                builder.setAction(str);
                return builder;
            }

            public final Builder fromMimeType(String str) {
                str.getClass();
                Builder builder = new Builder(null);
                builder.setMimeType(str);
                return builder;
            }

            public final Builder fromUri(Uri uri) {
                uri.getClass();
                Builder builder = new Builder(null);
                builder.setUri(uri);
                return builder;
            }

            private Companion() {
            }
        }

        private Builder() {
        }
    }
}
