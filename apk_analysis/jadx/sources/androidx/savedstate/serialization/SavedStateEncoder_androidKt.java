package androidx.savedstate.serialization;

import android.os.IBinder;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.savedstate.serialization.serializers.CharSequenceArraySerializer;
import androidx.savedstate.serialization.serializers.CharSequenceListSerializer;
import androidx.savedstate.serialization.serializers.CharSequenceSerializer;
import androidx.savedstate.serialization.serializers.DefaultJavaSerializableSerializer;
import androidx.savedstate.serialization.serializers.DefaultParcelableSerializer;
import androidx.savedstate.serialization.serializers.IBinderSerializer;
import androidx.savedstate.serialization.serializers.ParcelableArraySerializer;
import androidx.savedstate.serialization.serializers.ParcelableListSerializer;
import androidx.savedstate.serialization.serializers.SparseParcelableArraySerializer;
import defpackage.aa4;
import defpackage.mp7;
import defpackage.ux2;
import defpackage.xp7;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateEncoder_androidKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean encodeFormatSpecificTypesOnPlatform(SavedStateEncoder savedStateEncoder, xp7<? super T> xp7Var, T t) {
        savedStateEncoder.getClass();
        xp7Var.getClass();
        mp7 descriptor = xp7Var.getDescriptor();
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicCharSequenceDescriptor())) {
            CharSequenceSerializer charSequenceSerializer = CharSequenceSerializer.INSTANCE;
            t.getClass();
            charSequenceSerializer.serialize((ux2) savedStateEncoder, (CharSequence) t);
            return true;
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicParcelableDescriptor())) {
            DefaultParcelableSerializer defaultParcelableSerializer = DefaultParcelableSerializer.INSTANCE;
            t.getClass();
            defaultParcelableSerializer.serialize((ux2) savedStateEncoder, (Parcelable) t);
            return true;
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicJavaSerializableDescriptor())) {
            DefaultJavaSerializableSerializer defaultJavaSerializableSerializer = DefaultJavaSerializableSerializer.INSTANCE;
            t.getClass();
            defaultJavaSerializableSerializer.serialize((ux2) savedStateEncoder, (Serializable) t);
            return true;
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicIBinderDescriptor())) {
            IBinderSerializer iBinderSerializer = IBinderSerializer.INSTANCE;
            t.getClass();
            iBinderSerializer.serialize((ux2) savedStateEncoder, (IBinder) t);
            return true;
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getCharSequenceArrayDescriptor()) || aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicCharSequenceArrayDescriptor())) {
            CharSequenceArraySerializer charSequenceArraySerializer = CharSequenceArraySerializer.INSTANCE;
            t.getClass();
            charSequenceArraySerializer.serialize((ux2) savedStateEncoder, (CharSequence[]) t);
            return true;
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getCharSequenceListDescriptor()) || aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicCharSequenceListDescriptor())) {
            CharSequenceListSerializer charSequenceListSerializer = CharSequenceListSerializer.INSTANCE;
            t.getClass();
            charSequenceListSerializer.serialize((ux2) savedStateEncoder, (List<? extends CharSequence>) t);
            return true;
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getParcelableArrayDescriptor()) || aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicParcelableArrayDescriptor())) {
            ParcelableArraySerializer parcelableArraySerializer = ParcelableArraySerializer.INSTANCE;
            t.getClass();
            parcelableArraySerializer.serialize((ux2) savedStateEncoder, (Parcelable[]) t);
            return true;
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getParcelableListDescriptor()) || aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicParcelableListDescriptor())) {
            ParcelableListSerializer parcelableListSerializer = ParcelableListSerializer.INSTANCE;
            t.getClass();
            parcelableListSerializer.serialize((ux2) savedStateEncoder, (List<? extends Parcelable>) t);
            return true;
        }
        if (!aa4.e(descriptor, SavedStateCodecUtils_androidKt.getSparseParcelableArrayDescriptor()) && !aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicSparseParcelableArrayDescriptor()) && !aa4.e(descriptor, SavedStateCodecUtils_androidKt.getNullablePolymorphicSparseParcelableArrayDescriptor())) {
            return false;
        }
        SparseParcelableArraySerializer sparseParcelableArraySerializer = SparseParcelableArraySerializer.INSTANCE;
        t.getClass();
        sparseParcelableArraySerializer.serialize((ux2) savedStateEncoder, (SparseArray<Parcelable>) t);
        return true;
    }
}
