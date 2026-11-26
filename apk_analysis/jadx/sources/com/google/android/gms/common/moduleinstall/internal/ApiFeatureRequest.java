package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.moduleinstall.ModuleInstallRequest;
import defpackage.mja;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes4.dex */
public class ApiFeatureRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApiFeatureRequest> CREATOR = new zac();
    public static final mja f = mja.b;
    public final List b;
    public final boolean c;
    public final String d;
    public final String e;

    public ApiFeatureRequest(List list, boolean z, String str, String str2) {
        Preconditions.checkNotNull(list);
        this.b = list;
        this.c = z;
        this.d = str;
        this.e = str2;
    }

    public static ApiFeatureRequest a(List list, boolean z) {
        TreeSet treeSet = new TreeSet(f);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Collections.addAll(treeSet, ((OptionalModuleApi) it.next()).getOptionalFeatures());
        }
        return new ApiFeatureRequest(new ArrayList(treeSet), z, null, null);
    }

    public static ApiFeatureRequest fromModuleInstallRequest(ModuleInstallRequest moduleInstallRequest) {
        return a(moduleInstallRequest.getApis(), true);
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ApiFeatureRequest)) {
            return false;
        }
        ApiFeatureRequest apiFeatureRequest = (ApiFeatureRequest) obj;
        return this.c == apiFeatureRequest.c && Objects.equal(this.b, apiFeatureRequest.b) && Objects.equal(this.d, apiFeatureRequest.d) && Objects.equal(this.e, apiFeatureRequest.e);
    }

    public List<Feature> getApiFeatures() {
        return this.b;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.c), this.b, this.d, this.e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, getApiFeatures(), false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.c);
        SafeParcelWriter.writeString(parcel, 3, this.d, false);
        SafeParcelWriter.writeString(parcel, 4, this.e, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
