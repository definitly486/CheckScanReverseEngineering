package androidx.graphics.shapes;

import androidx.collection.MutableFloatList;
import defpackage.b36;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class DoubleMapper {
    public static final Companion Companion = new Companion(null);
    public static final DoubleMapper Identity;
    private final MutableFloatList sourceValues;
    private final MutableFloatList targetValues;

    static {
        Float fValueOf = Float.valueOf(0.0f);
        b36 b36Var = new b36(fValueOf, fValueOf);
        Float fValueOf2 = Float.valueOf(0.5f);
        Identity = new DoubleMapper(b36Var, new b36(fValueOf2, fValueOf2));
    }

    public DoubleMapper(b36<Float, Float>... b36VarArr) {
        b36VarArr.getClass();
        this.sourceValues = new MutableFloatList(b36VarArr.length);
        this.targetValues = new MutableFloatList(b36VarArr.length);
        int length = b36VarArr.length;
        int i = 0;
        while (true) {
            MutableFloatList mutableFloatList = this.sourceValues;
            if (i >= length) {
                FloatMappingKt.validateProgress(mutableFloatList);
                FloatMappingKt.validateProgress(this.targetValues);
                return;
            } else {
                mutableFloatList.add(b36VarArr[i].b.floatValue());
                this.targetValues.add(b36VarArr[i].c.floatValue());
                i++;
            }
        }
    }

    public final float map(float f) {
        return FloatMappingKt.linearMap(this.sourceValues, this.targetValues, f);
    }

    public final float mapBack(float f) {
        return FloatMappingKt.linearMap(this.targetValues, this.sourceValues, f);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
