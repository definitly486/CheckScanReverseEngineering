package androidx.camera.video.internal.utils;

import android.media.MediaFormat;
import defpackage.ra8;

/* JADX INFO: loaded from: classes.dex */
public final class MediaFormatExt {
    public static final MediaFormatExt INSTANCE = new MediaFormatExt();
    public static final String KEY_CSD_0 = "csd-0";
    public static final String KEY_CSD_1 = "csd-1";
    public static final String KEY_CSD_2 = "csd-2";
    public static final String KEY_TIMELAPSE_ENABLED = "time-lapse-enable";
    public static final String KEY_TIMELAPSE_FPS = "time-lapse-fps";

    private MediaFormatExt() {
    }

    public final boolean isVideo(MediaFormat mediaFormat) {
        mediaFormat.getClass();
        String string = mediaFormat.getString("mime");
        if (string != null) {
            return ra8.C(string, "video/", false);
        }
        return false;
    }
}
