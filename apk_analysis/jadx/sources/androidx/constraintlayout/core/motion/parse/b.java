package androidx.constraintlayout.core.motion.parse;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements KeyParser.DataType {
    @Override // androidx.constraintlayout.core.motion.parse.KeyParser.DataType
    public final int get(int i) {
        return TypedValues.AttributesType.getType(i);
    }
}
