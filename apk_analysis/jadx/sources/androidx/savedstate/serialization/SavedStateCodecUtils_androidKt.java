package androidx.savedstate.serialization;

import android.os.IBinder;
import android.os.Parcelable;
import androidx.savedstate.serialization.serializers.CharSequenceSerializer;
import androidx.savedstate.serialization.serializers.DefaultParcelableSerializer;
import androidx.savedstate.serialization.serializers.SparseArraySerializer;
import defpackage.da6;
import defpackage.er;
import defpackage.ev0;
import defpackage.kr;
import defpackage.mp7;
import defpackage.x07;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateCodecUtils_androidKt {
    private static final mp7 charSequenceArrayDescriptor;
    private static final mp7 charSequenceListDescriptor;
    private static final mp7 nullablePolymorphicSparseParcelableArrayDescriptor;
    private static final mp7 parcelableArrayDescriptor;
    private static final mp7 parcelableListDescriptor;
    private static final mp7 polymorphicCharSequenceArrayDescriptor;
    private static final mp7 polymorphicCharSequenceListDescriptor;
    private static final mp7 polymorphicParcelableArrayDescriptor;
    private static final mp7 polymorphicParcelableListDescriptor;
    private static final mp7 polymorphicSparseParcelableArrayDescriptor;
    private static final mp7 sparseParcelableArrayDescriptor;
    private static final mp7 polymorphicCharSequenceDescriptor = new da6(x07.a(CharSequence.class)).getDescriptor();
    private static final mp7 polymorphicParcelableDescriptor = new da6(x07.a(Parcelable.class)).getDescriptor();
    private static final mp7 polymorphicJavaSerializableDescriptor = new da6(x07.a(Serializable.class)).getDescriptor();
    private static final mp7 polymorphicIBinderDescriptor = new da6(x07.a(IBinder.class)).getDescriptor();

    static {
        DefaultParcelableSerializer defaultParcelableSerializer = DefaultParcelableSerializer.INSTANCE;
        x07.a(Parcelable.class);
        defaultParcelableSerializer.getClass();
        mp7 descriptor = defaultParcelableSerializer.getDescriptor();
        descriptor.getClass();
        parcelableArrayDescriptor = new er(descriptor);
        da6 da6Var = new da6(x07.a(Parcelable.class));
        x07.a(Parcelable.class);
        mp7 descriptor2 = da6Var.getDescriptor();
        descriptor2.getClass();
        polymorphicParcelableArrayDescriptor = new er(descriptor2);
        mp7 descriptor3 = defaultParcelableSerializer.getDescriptor();
        descriptor3.getClass();
        parcelableListDescriptor = new kr(descriptor3);
        mp7 descriptor4 = new da6(x07.a(Parcelable.class)).getDescriptor();
        descriptor4.getClass();
        polymorphicParcelableListDescriptor = new kr(descriptor4);
        CharSequenceSerializer charSequenceSerializer = CharSequenceSerializer.INSTANCE;
        x07.a(CharSequence.class);
        charSequenceSerializer.getClass();
        mp7 descriptor5 = charSequenceSerializer.getDescriptor();
        descriptor5.getClass();
        charSequenceArrayDescriptor = new er(descriptor5);
        da6 da6Var2 = new da6(x07.a(CharSequence.class));
        x07.a(CharSequence.class);
        mp7 descriptor6 = da6Var2.getDescriptor();
        descriptor6.getClass();
        polymorphicCharSequenceArrayDescriptor = new er(descriptor6);
        mp7 descriptor7 = charSequenceSerializer.getDescriptor();
        descriptor7.getClass();
        charSequenceListDescriptor = new kr(descriptor7);
        mp7 descriptor8 = new da6(x07.a(CharSequence.class)).getDescriptor();
        descriptor8.getClass();
        polymorphicCharSequenceListDescriptor = new kr(descriptor8);
        sparseParcelableArrayDescriptor = new SparseArraySerializer(defaultParcelableSerializer).getDescriptor();
        polymorphicSparseParcelableArrayDescriptor = new SparseArraySerializer(new da6(x07.a(Parcelable.class))).getDescriptor();
        nullablePolymorphicSparseParcelableArrayDescriptor = new SparseArraySerializer(ev0.a(new da6(x07.a(Parcelable.class)))).getDescriptor();
    }

    public static final mp7 getCharSequenceArrayDescriptor() {
        return charSequenceArrayDescriptor;
    }

    public static /* synthetic */ void getCharSequenceArrayDescriptor$annotations() {
    }

    public static final mp7 getCharSequenceListDescriptor() {
        return charSequenceListDescriptor;
    }

    public static final mp7 getNullablePolymorphicSparseParcelableArrayDescriptor() {
        return nullablePolymorphicSparseParcelableArrayDescriptor;
    }

    public static final mp7 getParcelableArrayDescriptor() {
        return parcelableArrayDescriptor;
    }

    public static /* synthetic */ void getParcelableArrayDescriptor$annotations() {
    }

    public static final mp7 getParcelableListDescriptor() {
        return parcelableListDescriptor;
    }

    public static final mp7 getPolymorphicCharSequenceArrayDescriptor() {
        return polymorphicCharSequenceArrayDescriptor;
    }

    public static /* synthetic */ void getPolymorphicCharSequenceArrayDescriptor$annotations() {
    }

    public static final mp7 getPolymorphicCharSequenceDescriptor() {
        return polymorphicCharSequenceDescriptor;
    }

    public static final mp7 getPolymorphicCharSequenceListDescriptor() {
        return polymorphicCharSequenceListDescriptor;
    }

    public static final mp7 getPolymorphicIBinderDescriptor() {
        return polymorphicIBinderDescriptor;
    }

    public static final mp7 getPolymorphicJavaSerializableDescriptor() {
        return polymorphicJavaSerializableDescriptor;
    }

    public static final mp7 getPolymorphicParcelableArrayDescriptor() {
        return polymorphicParcelableArrayDescriptor;
    }

    public static /* synthetic */ void getPolymorphicParcelableArrayDescriptor$annotations() {
    }

    public static final mp7 getPolymorphicParcelableDescriptor() {
        return polymorphicParcelableDescriptor;
    }

    public static final mp7 getPolymorphicParcelableListDescriptor() {
        return polymorphicParcelableListDescriptor;
    }

    public static final mp7 getPolymorphicSparseParcelableArrayDescriptor() {
        return polymorphicSparseParcelableArrayDescriptor;
    }

    public static final mp7 getSparseParcelableArrayDescriptor() {
        return sparseParcelableArrayDescriptor;
    }
}
