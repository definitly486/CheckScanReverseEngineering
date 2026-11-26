package androidx.compose.ui.text;

import defpackage.aa4;
import defpackage.ul2;
import defpackage.xp;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public final class UrlAnnotation implements AnnotatedString.Annotation {
    public static final int $stable = 0;
    private final String url;

    public UrlAnnotation(String str) {
        this.url = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UrlAnnotation) && aa4.e(this.url, ((UrlAnnotation) obj).url);
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String toString() {
        return xp.e(new StringBuilder("UrlAnnotation(url="), this.url, ')');
    }
}
