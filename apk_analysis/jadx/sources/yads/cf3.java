package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class cf3 {
    public static final bf3 a = new bf3(e75.DSP_IMPRESSION_TRACKING_SUCCESS, e75.DSP_IMPRESSION_TRACKING_START, e75.DSP_IMPRESSION_TRACKING_FAILURE, e75.DSP_FORCED_IMPRESSION_TRACKING_FAILURE);
    public static final bf3 b = new bf3(e75.IMPRESSION_TRACKING_SUCCESS, e75.IMPRESSION_TRACKING_START, e75.IMPRESSION_TRACKING_FAILURE, e75.FORCED_IMPRESSION_TRACKING_FAILURE);

    public static bf3 a(ba baVar) {
        int iOrdinal = baVar.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            return a;
        }
        if (iOrdinal == 2) {
            return b;
        }
        defpackage.me0.e();
        return null;
    }
}
