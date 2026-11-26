package androidx.compose.runtime.snapshots;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.u71;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotStateList$Companion$CREATOR$1 implements Parcelable.ClassLoaderCreator<SnapshotStateList<Object>> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Object createFromParcel$lambda$0(Parcel parcel, ClassLoader classLoader, int i) {
        return parcel.readValue(classLoader);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.ClassLoaderCreator
    public SnapshotStateList<Object> createFromParcel(Parcel parcel, ClassLoader classLoader) {
        if (classLoader == null) {
            classLoader = SnapshotStateList$Companion$CREATOR$1.class.getClassLoader();
        }
        return SnapshotStateListKt.SnapshotStateList(parcel.readInt(), new u71(2, parcel, classLoader));
    }

    @Override // android.os.Parcelable.Creator
    public SnapshotStateList<Object>[] newArray(int i) {
        return new SnapshotStateList[i];
    }

    @Override // android.os.Parcelable.Creator
    public SnapshotStateList<Object> createFromParcel(Parcel parcel) {
        return createFromParcel(parcel, (ClassLoader) null);
    }
}
