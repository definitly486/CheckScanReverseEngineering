package androidx.savedstate.serialization.serializers;

import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import defpackage.cl4;
import defpackage.df4;
import defpackage.dp3;
import defpackage.du1;
import defpackage.gu1;
import defpackage.mp7;
import defpackage.mr;
import defpackage.pg;
import defpackage.s96;
import defpackage.ud2;
import defpackage.ul2;
import defpackage.ux2;
import defpackage.xl2;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@ul2
public final /* synthetic */ class SparseArraySerializer$SparseArraySurrogate$$serializer<T> implements dp3<SparseArraySerializer.SparseArraySurrogate<T>> {
    private final mp7 descriptor;
    private final /* synthetic */ df4<?> typeSerial0;

    private SparseArraySerializer$SparseArraySurrogate$$serializer() {
        s96 s96Var = new s96("androidx.savedstate.serialization.serializers.SparseArraySerializer.SparseArraySurrogate", this, 2);
        s96Var.j(UserMetadata.KEYDATA_FILENAME, false);
        s96Var.j("values", false);
        this.descriptor = s96Var;
    }

    private final /* synthetic */ df4 getTypeSerial0() {
        return this.typeSerial0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dp3
    public final df4<?>[] childSerializers() {
        return new df4[]{SparseArraySerializer.SparseArraySurrogate.$childSerializers[0].getValue(), new mr(this.typeSerial0)};
    }

    @Override // defpackage.xl2
    public final SparseArraySerializer.SparseArraySurrogate<T> deserialize(ud2 ud2Var) {
        List list;
        List list2;
        int i;
        ud2Var.getClass();
        mp7 mp7Var = this.descriptor;
        du1 du1VarBeginStructure = ud2Var.beginStructure(mp7Var);
        cl4[] cl4VarArr = SparseArraySerializer.SparseArraySurrogate.$childSerializers;
        if (du1VarBeginStructure.decodeSequentially()) {
            list2 = (List) du1VarBeginStructure.decodeSerializableElement(mp7Var, 0, (xl2) cl4VarArr[0].getValue(), null);
            list = (List) du1VarBeginStructure.decodeSerializableElement(mp7Var, 1, new mr(this.typeSerial0), null);
            i = 3;
        } else {
            boolean z = true;
            int i2 = 0;
            List list3 = null;
            List list4 = null;
            while (z) {
                int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(mp7Var);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    list4 = (List) du1VarBeginStructure.decodeSerializableElement(mp7Var, 0, (xl2) cl4VarArr[0].getValue(), list4);
                    i2 |= 1;
                } else {
                    if (iDecodeElementIndex != 1) {
                        pg.h(iDecodeElementIndex);
                        return null;
                    }
                    list3 = (List) du1VarBeginStructure.decodeSerializableElement(mp7Var, 1, new mr(this.typeSerial0), list3);
                    i2 |= 2;
                }
            }
            list = list3;
            list2 = list4;
            i = i2;
        }
        du1VarBeginStructure.endStructure(mp7Var);
        return new SparseArraySerializer.SparseArraySurrogate<>(i, list2, list, null);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return this.descriptor;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, SparseArraySerializer.SparseArraySurrogate<T> sparseArraySurrogate) {
        ux2Var.getClass();
        sparseArraySurrogate.getClass();
        mp7 mp7Var = this.descriptor;
        gu1 gu1VarBeginStructure = ux2Var.beginStructure(mp7Var);
        SparseArraySerializer.SparseArraySurrogate.write$Self$savedstate(sparseArraySurrogate, gu1VarBeginStructure, mp7Var, this.typeSerial0);
        gu1VarBeginStructure.endStructure(mp7Var);
    }

    @Override // defpackage.dp3
    public final df4<?>[] typeParametersSerializers() {
        return new df4[]{this.typeSerial0};
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SparseArraySerializer$SparseArraySurrogate$$serializer(df4<T> df4Var) {
        this();
        df4Var.getClass();
        this.typeSerial0 = df4Var;
    }
}
