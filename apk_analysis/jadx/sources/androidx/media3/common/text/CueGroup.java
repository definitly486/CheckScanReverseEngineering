package androidx.media3.common.text;

import android.os.Bundle;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.Util;
import com.google.common.collect.j;
import com.google.common.collect.w;
import defpackage.f06;
import defpackage.hi5;
import defpackage.lw0;
import defpackage.s62;
import defpackage.t62;
import defpackage.u62;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class CueGroup {
    private static final f06<Cue> CUES_PRIORITY_COMPARATOR;
    public static final CueGroup EMPTY_TIME_ZERO;
    private static final String FIELD_CUES;
    private static final String FIELD_PRESENTATION_TIME_US;
    public final j<Cue> cues;
    public final long presentationTimeUs;

    static {
        hi5 hi5Var = hi5.b;
        s62 s62Var = new s62();
        hi5Var.getClass();
        CUES_PRIORITY_COMPARATOR = new lw0(s62Var, hi5Var);
        j.b bVar = j.c;
        EMPTY_TIME_ZERO = new CueGroup(w.f, 0L);
        FIELD_CUES = Util.intToStringMaxRadix(0);
        FIELD_PRESENTATION_TIME_US = Util.intToStringMaxRadix(1);
    }

    public CueGroup(List<Cue> list, long j) {
        this.cues = j.x(CUES_PRIORITY_COMPARATOR, list);
        this.presentationTimeUs = j;
    }

    private static j<Cue> filterOutBitmapCues(List<Cue> list) {
        j.b bVar = j.c;
        j.a aVar = new j.a();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).bitmap == null) {
                aVar.c(list.get(i));
            }
        }
        return aVar.g();
    }

    public static CueGroup fromBundle(Bundle bundle) {
        List listFromBundleList;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_CUES);
        if (parcelableArrayList == null) {
            j.b bVar = j.c;
            listFromBundleList = w.f;
        } else {
            listFromBundleList = BundleCollectionUtil.fromBundleList(new t62(), parcelableArrayList);
        }
        return new CueGroup(listFromBundleList, bundle.getLong(FIELD_PRESENTATION_TIME_US));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$static$0(Cue cue) {
        return Integer.valueOf(cue.zIndex);
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_CUES, BundleCollectionUtil.toBundleArrayList(filterOutBitmapCues(this.cues), new u62()));
        bundle.putLong(FIELD_PRESENTATION_TIME_US, this.presentationTimeUs);
        return bundle;
    }
}
