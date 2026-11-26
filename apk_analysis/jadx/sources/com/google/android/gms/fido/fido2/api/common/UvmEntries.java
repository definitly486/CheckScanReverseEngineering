package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.ud;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class UvmEntries extends AbstractSafeParcelable {
    public static final Parcelable.Creator<UvmEntries> CREATOR = new zzaz();
    public final List b;

    public static final class Builder {
        public final ArrayList a = new ArrayList();

        public Builder addAll(List<UvmEntry> list) {
            ArrayList arrayList = this.a;
            com.google.android.gms.internal.fido.zzam.zzc(list.size() + arrayList.size() <= 3);
            arrayList.addAll(list);
            return this;
        }

        public Builder addUvmEntry(UvmEntry uvmEntry) {
            ArrayList arrayList = this.a;
            if (arrayList.size() < 3) {
                arrayList.add(uvmEntry);
                return this;
            }
            ud.g();
            return null;
        }

        public UvmEntries build() {
            return new UvmEntries(this.a);
        }
    }

    public UvmEntries(ArrayList arrayList) {
        this.b = arrayList;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof UvmEntries)) {
            return false;
        }
        List list = ((UvmEntries) obj).b;
        List list2 = this.b;
        if (list2 == null && list == null) {
            return true;
        }
        return list2 != null && list != null && list2.containsAll(list) && list.containsAll(list2);
    }

    public List<UvmEntry> getUvmEntryList() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(new HashSet(this.b));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, getUvmEntryList(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
