package androidx.camera.video.internal.config;

import defpackage.aa4;
import defpackage.fg;
import defpackage.xp;

/* JADX INFO: loaded from: classes.dex */
public final class FormatCombo {
    private final String audioMime;
    private final int container;
    private final String videoMime;

    public FormatCombo(int i, String str, String str2) {
        this.container = i;
        this.videoMime = str;
        this.audioMime = str2;
        if (str == null && str2 == null) {
            fg.c("FormatCombo must have at least one valid track. Both videoMime and audioMime cannot be null.");
            throw null;
        }
    }

    public static /* synthetic */ FormatCombo copy$default(FormatCombo formatCombo, int i, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = formatCombo.container;
        }
        if ((i2 & 2) != 0) {
            str = formatCombo.videoMime;
        }
        if ((i2 & 4) != 0) {
            str2 = formatCombo.audioMime;
        }
        return formatCombo.copy(i, str, str2);
    }

    public static /* synthetic */ void getContainer$annotations() {
    }

    public final int component1() {
        return this.container;
    }

    public final String component2() {
        return this.videoMime;
    }

    public final String component3() {
        return this.audioMime;
    }

    public final FormatCombo copy(int i, String str, String str2) {
        return new FormatCombo(i, str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormatCombo)) {
            return false;
        }
        FormatCombo formatCombo = (FormatCombo) obj;
        return this.container == formatCombo.container && aa4.e(this.videoMime, formatCombo.videoMime) && aa4.e(this.audioMime, formatCombo.audioMime);
    }

    public final String getAudioMime() {
        return this.audioMime;
    }

    public final int getContainer() {
        return this.container;
    }

    public final String getVideoMime() {
        return this.videoMime;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.container) * 31;
        String str = this.videoMime;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.audioMime;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FormatCombo(container=");
        sb.append(this.container);
        sb.append(", videoMime=");
        sb.append(this.videoMime);
        sb.append(", audioMime=");
        return xp.e(sb, this.audioMime, ')');
    }
}
