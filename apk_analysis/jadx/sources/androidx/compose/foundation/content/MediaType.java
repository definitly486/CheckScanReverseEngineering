package androidx.compose.foundation.content;

import androidx.webkit.internal.AssetHelper;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.me0;

/* JADX INFO: loaded from: classes.dex */
public final class MediaType {
    public static final int $stable = 0;
    private final String representation;
    public static final Companion Companion = new Companion(null);
    private static final MediaType Text = new MediaType("text/*");
    private static final MediaType PlainText = new MediaType(AssetHelper.DEFAULT_MIME_TYPE);
    private static final MediaType HtmlText = new MediaType("text/html");
    private static final MediaType Image = new MediaType("image/*");
    private static final MediaType All = new MediaType("*/*");

    public MediaType(String str) {
        this.representation = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MediaType) {
            return aa4.e(this.representation, ((MediaType) obj).representation);
        }
        return false;
    }

    public final String getRepresentation() {
        return this.representation;
    }

    public int hashCode() {
        return this.representation.hashCode();
    }

    public String toString() {
        return me0.d(new StringBuilder("MediaType(representation='"), this.representation, "')");
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final MediaType getAll() {
            return MediaType.All;
        }

        public final MediaType getHtmlText() {
            return MediaType.HtmlText;
        }

        public final MediaType getImage() {
            return MediaType.Image;
        }

        public final MediaType getPlainText() {
            return MediaType.PlainText;
        }

        public final MediaType getText() {
            return MediaType.Text;
        }

        private Companion() {
        }
    }
}
