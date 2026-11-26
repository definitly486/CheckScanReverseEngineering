package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavType;
import defpackage.f0;
import defpackage.jq7;
import defpackage.mp7;
import defpackage.nq7;
import defpackage.ud2;
import defpackage.vh;
import defpackage.xl2;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteDecoder extends f0 {
    private int elementIndex;
    private String elementName;
    private final jq7 serializersModule;
    private final ArgStore store;

    public RouteDecoder(Bundle bundle, Map<String, ? extends NavType<?>> map) {
        bundle.getClass();
        map.getClass();
        this.elementIndex = -1;
        this.elementName = "";
        this.serializersModule = nq7.a;
        this.store = new SavedStateArgStore(bundle, map);
    }

    public static /* synthetic */ void getSerializersModule$annotations() {
    }

    private final Object internalDecodeValue() {
        Object obj = this.store.get(this.elementName);
        if (obj != null) {
            return obj;
        }
        vh.e(this.elementName, "Unexpected null value for non-nullable argument ");
        return null;
    }

    @Override // defpackage.du1
    public int decodeElementIndex(mp7 mp7Var) {
        String strF;
        mp7Var.getClass();
        int i = this.elementIndex;
        do {
            i++;
            if (i >= mp7Var.e()) {
                return -1;
            }
            strF = mp7Var.f(i);
        } while (!this.store.contains(strF));
        this.elementIndex = i;
        this.elementName = strF;
        return i;
    }

    @Override // defpackage.f0, defpackage.ud2
    public ud2 decodeInline(mp7 mp7Var) {
        mp7Var.getClass();
        if (RouteSerializerKt.isValueClass(mp7Var)) {
            this.elementName = mp7Var.f(0);
            this.elementIndex = 0;
        }
        return super.decodeInline(mp7Var);
    }

    @Override // defpackage.f0, defpackage.ud2
    public boolean decodeNotNullMark() {
        return this.store.get(this.elementName) != null;
    }

    @Override // defpackage.f0, defpackage.ud2
    public Void decodeNull() {
        return null;
    }

    public final <T> T decodeRouteWithArgs$navigation_common_release(xl2<? extends T> xl2Var) {
        xl2Var.getClass();
        return (T) super.decodeSerializableValue(xl2Var);
    }

    @Override // defpackage.f0, defpackage.ud2
    public <T> T decodeSerializableValue(xl2<? extends T> xl2Var) {
        xl2Var.getClass();
        return (T) internalDecodeValue();
    }

    @Override // defpackage.f0
    public Object decodeValue() {
        return internalDecodeValue();
    }

    @Override // defpackage.du1
    public jq7 getSerializersModule() {
        return this.serializersModule;
    }

    public RouteDecoder(SavedStateHandle savedStateHandle, Map<String, ? extends NavType<?>> map) {
        savedStateHandle.getClass();
        map.getClass();
        this.elementIndex = -1;
        this.elementName = "";
        this.serializersModule = nq7.a;
        this.store = new SavedStateHandleArgStore(savedStateHandle, map);
    }
}
