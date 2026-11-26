package androidx.savedstate.serialization.serializers;

import android.util.SparseArray;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import defpackage.cl4;
import defpackage.df4;
import defpackage.fg;
import defpackage.gu1;
import defpackage.jh2;
import defpackage.mp7;
import defpackage.mr;
import defpackage.nm4;
import defpackage.po4;
import defpackage.r96;
import defpackage.s96;
import defpackage.ud2;
import defpackage.up7;
import defpackage.ux2;
import defpackage.wp7;
import defpackage.z74;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SparseArraySerializer<T> implements df4<SparseArray<T>> {
    private final mp7 descriptor;
    private final df4<SparseArraySurrogate<T>> surrogateSerializer;

    public SparseArraySerializer(df4<T> df4Var) {
        df4Var.getClass();
        df4<SparseArraySurrogate<T>> df4VarSerializer = SparseArraySurrogate.Companion.serializer(df4Var);
        this.surrogateSerializer = df4VarSerializer;
        this.descriptor = df4VarSerializer.getDescriptor();
    }

    @Override // defpackage.xl2
    public SparseArray<T> deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        SparseArraySurrogate sparseArraySurrogate = (SparseArraySurrogate) ud2Var.decodeSerializableValue(this.surrogateSerializer);
        if (sparseArraySurrogate.getKeys().size() != sparseArraySurrogate.getValues().size()) {
            fg.c("Failed requirement.");
            return null;
        }
        SparseArray<T> sparseArray = new SparseArray<>(sparseArraySurrogate.getKeys().size());
        int size = sparseArraySurrogate.getKeys().size();
        for (int i = 0; i < size; i++) {
            sparseArray.append(sparseArraySurrogate.getKeys().get(i).intValue(), sparseArraySurrogate.getValues().get(i));
        }
        return sparseArray;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public mp7 getDescriptor() {
        return this.descriptor;
    }

    @Override // defpackage.xp7
    public void serialize(ux2 ux2Var, SparseArray<T> sparseArray) {
        ux2Var.getClass();
        sparseArray.getClass();
        int size = sparseArray.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(Integer.valueOf(sparseArray.keyAt(i)));
        }
        int size2 = sparseArray.size();
        ArrayList arrayList2 = new ArrayList(size2);
        for (int i2 = 0; i2 < size2; i2++) {
            arrayList2.add(sparseArray.valueAt(i2));
        }
        ux2Var.encodeSerializableValue(this.surrogateSerializer, new SparseArraySurrogate(arrayList, arrayList2));
    }

    @up7
    public static final class SparseArraySurrogate<T> {
        private static final mp7 $cachedDescriptor;
        private final List<Integer> keys;
        private final List<T> values;
        public static final Companion Companion = new Companion(null);
        private static final cl4<df4<Object>>[] $childSerializers = {nm4.a(po4.PUBLICATION, new a()), null};

        static {
            s96 s96Var = new s96("androidx.savedstate.serialization.serializers.SparseArraySerializer.SparseArraySurrogate", null, 2);
            s96Var.j(UserMetadata.KEYDATA_FILENAME, false);
            s96Var.j("values", false);
            $cachedDescriptor = s96Var;
        }

        public /* synthetic */ SparseArraySurrogate(int i, List list, List list2, wp7 wp7Var) {
            if (3 != (i & 3)) {
                r96.f($cachedDescriptor, i, 3);
                throw null;
            }
            this.keys = list;
            this.values = list2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ df4 _childSerializers$_anonymous_() {
            return new mr(z74.a);
        }

        public static final /* synthetic */ void write$Self$savedstate(SparseArraySurrogate sparseArraySurrogate, gu1 gu1Var, mp7 mp7Var, df4 df4Var) {
            gu1Var.encodeSerializableElement(mp7Var, 0, $childSerializers[0].getValue(), sparseArraySurrogate.keys);
            gu1Var.encodeSerializableElement(mp7Var, 1, new mr(df4Var), sparseArraySurrogate.values);
        }

        public final List<Integer> getKeys() {
            return this.keys;
        }

        public final List<T> getValues() {
            return this.values;
        }

        public static final class Companion {
            private Companion() {
            }

            public final <T> df4<SparseArraySurrogate<T>> serializer(df4<T> df4Var) {
                df4Var.getClass();
                return new SparseArraySerializer$SparseArraySurrogate$$serializer(df4Var);
            }

            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SparseArraySurrogate(List<Integer> list, List<? extends T> list2) {
            list.getClass();
            list2.getClass();
            this.keys = list;
            this.values = list2;
        }
    }
}
