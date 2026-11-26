package androidx.media3.extractor.text;

import android.os.Bundle;
import android.os.Parcel;
import androidx.media3.common.util.BundleCollectionUtil;
import defpackage.t62;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class CueDecoder {
    static final String BUNDLE_FIELD_CUES = "c";
    static final String BUNDLE_FIELD_DURATION_US = "d";

    public CuesWithTiming decode(long j, byte[] bArr, int i, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, i, i2);
        parcelObtain.setDataPosition(0);
        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
        parcelObtain.recycle();
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(BUNDLE_FIELD_CUES);
        parcelableArrayList.getClass();
        return new CuesWithTiming(BundleCollectionUtil.fromBundleList(new t62(), parcelableArrayList), j, bundle.getLong("d"));
    }
}
