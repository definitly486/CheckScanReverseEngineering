package androidx.navigation.serialization;

import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import defpackage.df4;
import defpackage.h0;
import defpackage.j2;
import defpackage.jq7;
import defpackage.me0;
import defpackage.mp7;
import defpackage.n05;
import defpackage.nq7;
import defpackage.u96;
import defpackage.ux2;
import defpackage.xp7;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteEncoder<T> extends h0 {
    private int elementIndex;
    private final Map<String, List<String>> map;
    private final df4<T> serializer;
    private final jq7 serializersModule;
    private final Map<String, NavType<Object>> typeMap;

    /* JADX WARN: Multi-variable type inference failed */
    public RouteEncoder(df4<T> df4Var, Map<String, ? extends NavType<Object>> map) {
        df4Var.getClass();
        map.getClass();
        this.serializer = df4Var;
        this.typeMap = map;
        this.serializersModule = nq7.a;
        this.map = new LinkedHashMap();
        this.elementIndex = -1;
    }

    private final void internalEncodeValue(Object obj) {
        String strF = this.serializer.getDescriptor().f(this.elementIndex);
        NavType<Object> navType = this.typeMap.get(strF);
        if (navType != null) {
            this.map.put(strF, navType instanceof CollectionNavType ? ((CollectionNavType) navType).serializeAsValues(obj) : u96.h(navType.serializeAsValue(obj)));
        } else {
            j2.d(me0.c("Cannot find NavType for argument ", strF, ". Please provide NavType through typeMap."));
        }
    }

    @Override // defpackage.h0
    public boolean encodeElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        this.elementIndex = i;
        return true;
    }

    @Override // defpackage.h0, defpackage.ux2
    public ux2 encodeInline(mp7 mp7Var) {
        mp7Var.getClass();
        if (RouteSerializerKt.isValueClass(mp7Var)) {
            this.elementIndex = 0;
        }
        return super.encodeInline(mp7Var);
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeNull() {
        internalEncodeValue(null);
    }

    @Override // defpackage.h0, defpackage.ux2
    public <T> void encodeSerializableValue(xp7<? super T> xp7Var, T t) {
        xp7Var.getClass();
        internalEncodeValue(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Map<String, List<String>> encodeToArgMap(Object obj) {
        obj.getClass();
        super.encodeSerializableValue(this.serializer, obj);
        return n05.l(this.map);
    }

    @Override // defpackage.h0
    public void encodeValue(Object obj) {
        obj.getClass();
        internalEncodeValue(obj);
    }

    @Override // defpackage.ux2
    public jq7 getSerializersModule() {
        return this.serializersModule;
    }
}
