package androidx.media3.common;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.j;
import com.google.common.collect.w;
import defpackage.ad2;
import defpackage.ky8;
import defpackage.o8;
import defpackage.zg;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: loaded from: classes3.dex */
public final class TrackGroup {
    private static final String FIELD_FORMATS = Util.intToStringMaxRadix(0);
    private static final String FIELD_ID = Util.intToStringMaxRadix(1);
    private static final String TAG = "TrackGroup";
    private final Format[] formats;
    private int hashCode;
    public final String id;
    public final int length;
    public final int type;

    public TrackGroup(String str, Format... formatArr) {
        o8.e(formatArr.length > 0);
        this.id = str;
        this.formats = formatArr;
        this.length = formatArr.length;
        String str2 = formatArr[0].sampleMimeType;
        this.type = TextUtils.isEmpty(str2) ? MimeTypes.getTrackType(formatArr[0].containerMimeType) : MimeTypes.getTrackType(str2);
        verifyCorrectness();
    }

    public static TrackGroup fromBundle(Bundle bundle) {
        Collection collectionFromBundleList;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_FORMATS);
        if (parcelableArrayList == null) {
            j.b bVar = j.c;
            collectionFromBundleList = w.f;
        } else {
            collectionFromBundleList = BundleCollectionUtil.fromBundleList(new ky8(), parcelableArrayList);
        }
        return new TrackGroup(bundle.getString(FIELD_ID, ""), (Format[]) collectionFromBundleList.toArray(new Format[0]));
    }

    private static void logErrorMessage(String str, String str2, String str3, int i) {
        StringBuilder sbD = ad2.d("Different ", str, " combined in one TrackGroup: '", str2, "' (track 0) and '");
        sbD.append(str3);
        sbD.append("' (track ");
        sbD.append(i);
        sbD.append(")");
        Log.e(TAG, "", new IllegalStateException(sbD.toString()));
    }

    private static String normalizeLanguage(String str) {
        return (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) ? "" : str;
    }

    private static int normalizeRoleFlags(int i) {
        return i | 16384;
    }

    private void verifyCorrectness() {
        String strNormalizeLanguage = normalizeLanguage(this.formats[0].language);
        int iNormalizeRoleFlags = normalizeRoleFlags(this.formats[0].roleFlags);
        int i = 1;
        while (true) {
            Format[] formatArr = this.formats;
            if (i >= formatArr.length) {
                return;
            }
            boolean zEquals = strNormalizeLanguage.equals(normalizeLanguage(formatArr[i].language));
            Format[] formatArr2 = this.formats;
            if (!zEquals) {
                logErrorMessage("languages", formatArr2[0].language, formatArr2[i].language, i);
                return;
            } else {
                if (iNormalizeRoleFlags != normalizeRoleFlags(formatArr2[i].roleFlags)) {
                    logErrorMessage("role flags", Integer.toBinaryString(this.formats[0].roleFlags), Integer.toBinaryString(this.formats[i].roleFlags), i);
                    return;
                }
                i++;
            }
        }
    }

    public TrackGroup copyWithId(String str) {
        return new TrackGroup(str, this.formats);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TrackGroup.class == obj.getClass()) {
            TrackGroup trackGroup = (TrackGroup) obj;
            if (this.id.equals(trackGroup.id) && Arrays.equals(this.formats, trackGroup.formats)) {
                return true;
            }
        }
        return false;
    }

    public Format getFormat(int i) {
        return this.formats[i];
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = Arrays.hashCode(this.formats) + zg.b(527, 31, this.id);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    public int indexOf(Format format) {
        int i = 0;
        while (true) {
            Format[] formatArr = this.formats;
            if (i >= formatArr.length) {
                return -1;
            }
            if (format == formatArr[i]) {
                return i;
            }
            i++;
        }
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.formats.length);
        for (Format format : this.formats) {
            arrayList.add(format.toBundle());
        }
        bundle.putParcelableArrayList(FIELD_FORMATS, arrayList);
        bundle.putString(FIELD_ID, this.id);
        return bundle;
    }

    public String toString() {
        return this.id + ": " + Arrays.toString(this.formats);
    }

    public TrackGroup(Format... formatArr) {
        this("", formatArr);
    }
}
