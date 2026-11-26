package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes6.dex */
public enum ob4 {
    /* JADX INFO: Fake field, exist only in values array */
    AD_VIDEO_COMPLETE("advideocomplete"),
    /* JADX INFO: Fake field, exist only in values array */
    IMPRESSION_TRACKING_START("impressionTrackingStart"),
    /* JADX INFO: Fake field, exist only in values array */
    IMPRESSION_TRACKING_SUCCESS("impressionTrackingSuccess"),
    /* JADX INFO: Fake field, exist only in values array */
    CLOSE(TJAdUnitConstants.String.CLOSE),
    /* JADX INFO: Fake field, exist only in values array */
    OPEN(TtmlNode.TEXT_EMPHASIS_MARK_OPEN),
    /* JADX INFO: Fake field, exist only in values array */
    REWARDED_AD_COMPLETE("rewardedAdComplete"),
    /* JADX INFO: Fake field, exist only in values array */
    USE_CUSTOM_CLOSE("usecustomclose"),
    UNSPECIFIED(""),
    /* JADX INFO: Fake field, exist only in values array */
    AD_RENDERED("adRendered");

    public static final nb4 c = new nb4();
    public final String b;

    ob4(String str) {
        this.b = str;
    }

    public final String a() {
        return this.b;
    }
}
