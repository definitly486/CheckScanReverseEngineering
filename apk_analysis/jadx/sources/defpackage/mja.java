package defpackage;

import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.moduleinstall.internal.ApiFeatureRequest;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mja implements Comparator {
    public static final /* synthetic */ mja b = new mja();

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        Feature feature = (Feature) obj2;
        Feature feature2 = (Feature) obj;
        Parcelable.Creator<ApiFeatureRequest> creator = ApiFeatureRequest.CREATOR;
        return !feature2.getName().equals(feature.getName()) ? feature2.getName().compareTo(feature.getName()) : Long.compare(feature2.getVersion(), feature.getVersion());
    }
}
