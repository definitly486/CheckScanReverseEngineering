package androidx.media3.extractor.metadata.dvbsi;

import androidx.media3.common.Metadata;
import defpackage.me0;

/* JADX INFO: loaded from: classes3.dex */
public final class AppInfoTable implements Metadata.Entry {
    public static final int CONTROL_CODE_AUTOSTART = 1;
    public static final int CONTROL_CODE_PRESENT = 2;
    public final int controlCode;
    public final String url;

    public AppInfoTable(int i, String str) {
        this.controlCode = i;
        this.url = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Ait(controlCode=");
        sb.append(this.controlCode);
        sb.append(",url=");
        return me0.d(sb, this.url, ")");
    }
}
