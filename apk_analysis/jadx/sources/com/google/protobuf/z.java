package com.google.protobuf;

import defpackage.ej0;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class z implements y {
    @Override // com.google.protobuf.y
    public final x a() {
        return x.c.j();
    }

    @Override // com.google.protobuf.y
    public final x forMapData(Object obj) {
        return (x) obj;
    }

    @Override // com.google.protobuf.y
    public final w.a<?, ?> forMapMetadata(Object obj) {
        return ((w) obj).a;
    }

    @Override // com.google.protobuf.y
    public final x forMutableMapData(Object obj) {
        return (x) obj;
    }

    @Override // com.google.protobuf.y
    public final int getSerializedSize(int i, Object obj, Object obj2) {
        x xVar = (x) obj;
        w wVar = (w) obj2;
        int iC = 0;
        if (xVar.isEmpty()) {
            return 0;
        }
        for (Map.Entry entry : xVar.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            wVar.getClass();
            int iY = CodedOutputStream.Y(i);
            int iA = w.a(wVar.a, key, value);
            iC = ej0.c(iA, iA, iY, iC);
        }
        return iC;
    }

    @Override // com.google.protobuf.y
    public final boolean isImmutable(Object obj) {
        return !((x) obj).b;
    }

    @Override // com.google.protobuf.y
    public final x mergeFrom(Object obj, Object obj2) {
        x xVarJ = (x) obj;
        x xVar = (x) obj2;
        if (!xVar.isEmpty()) {
            if (!xVarJ.b) {
                xVarJ = xVarJ.j();
            }
            xVarJ.e();
            if (!xVar.isEmpty()) {
                xVarJ.putAll(xVar);
            }
        }
        return xVarJ;
    }

    @Override // com.google.protobuf.y
    public final Object toImmutable(Object obj) {
        ((x) obj).b = false;
        return obj;
    }
}
