package yads;

import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes6.dex */
public enum y14 {
    WEB_VIEW("webview"),
    VIDEO(MimeTypes.BASE_TYPE_VIDEO),
    MULTIBANNER("multibanner"),
    IMAGE("image"),
    MEDIATION("mediation");

    public final String b;

    y14(String str) {
        this.b = str;
    }
}
