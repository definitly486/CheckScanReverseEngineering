package androidx.savedstate.serialization;

import android.os.Parcelable;
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
import defpackage.d31;
import defpackage.mp7;
import defpackage.ne4;
import defpackage.ud2;
import defpackage.x07;
import defpackage.xl2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateDecoder_androidKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T decodeFormatSpecificTypesOnPlatform(SavedStateDecoder savedStateDecoder, xl2<? extends T> xl2Var) {
        savedStateDecoder.getClass();
        xl2Var.getClass();
        mp7 descriptor = xl2Var.getDescriptor();
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicCharSequenceDescriptor())) {
            return (T) CharSequenceSerializer.INSTANCE.deserialize((ud2) savedStateDecoder);
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicParcelableDescriptor())) {
            return (T) DefaultParcelableSerializer.INSTANCE.deserialize((ud2) savedStateDecoder);
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicJavaSerializableDescriptor())) {
            return (T) DefaultJavaSerializableSerializer.INSTANCE.deserialize((ud2) savedStateDecoder);
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicIBinderDescriptor())) {
            return (T) IBinderSerializer.INSTANCE.deserialize((ud2) savedStateDecoder);
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getCharSequenceArrayDescriptor()) || aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicCharSequenceArrayDescriptor())) {
            return (T) CharSequenceArraySerializer.INSTANCE.deserialize((ud2) savedStateDecoder);
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getCharSequenceListDescriptor()) || aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicCharSequenceListDescriptor())) {
            return (T) CharSequenceListSerializer.INSTANCE.deserialize((ud2) savedStateDecoder);
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getParcelableArrayDescriptor())) {
            Parcelable[] parcelableArrDeserialize = ParcelableArraySerializer.INSTANCE.deserialize((ud2) savedStateDecoder);
            return (T) Arrays.copyOf(parcelableArrDeserialize, parcelableArrDeserialize.length, d31.n(getArrayKClass(xl2Var)));
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicParcelableArrayDescriptor())) {
            return (T) ParcelableArraySerializer.INSTANCE.deserialize((ud2) savedStateDecoder);
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getParcelableListDescriptor()) || aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicParcelableListDescriptor())) {
            return (T) ParcelableListSerializer.INSTANCE.deserialize((ud2) savedStateDecoder);
        }
        if (aa4.e(descriptor, SavedStateCodecUtils_androidKt.getSparseParcelableArrayDescriptor()) || aa4.e(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicSparseParcelableArrayDescriptor()) || aa4.e(descriptor, SavedStateCodecUtils_androidKt.getNullablePolymorphicSparseParcelableArrayDescriptor())) {
            return (T) SparseParcelableArraySerializer.INSTANCE.deserialize((ud2) savedStateDecoder);
        }
        return null;
    }

    private static final ne4<Object[]> getArrayKClass(xl2<?> xl2Var) {
        Object objDeserialize = xl2Var.deserialize(EmptyArrayDecoder.INSTANCE);
        objDeserialize.getClass();
        return x07.a(objDeserialize.getClass());
    }
}
