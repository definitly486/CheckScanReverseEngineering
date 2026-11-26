package defpackage;

import com.google.gson.JsonIOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumMap;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class kl0 implements xl3, li0, mq5 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kl0(ts5 ts5Var, ms5 ms5Var) {
        this.b = 4;
        this.c = ms5Var;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (c18) ((rb) obj2).invoke(obj);
            case 1:
            default:
                Throwable th = (Throwable) obj;
                th.getClass();
                return ts5.e((ms5) obj2, a57.a(418, ts5.d(th.getMessage())));
            case 2:
                return ((de1) obj2).invoke(obj);
        }
    }

    @Override // defpackage.mq5
    public Object c() {
        Type type = (Type) this.c;
        if (!(type instanceof ParameterizedType)) {
            throw new JsonIOException("Invalid EnumMap type: " + type);
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return new EnumMap((Class) type2);
        }
        throw new JsonIOException("Invalid EnumMap type: " + type);
    }

    public /* synthetic */ kl0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.li0
    public Object apply(Object obj, Object obj2) {
        return (b36) ((bm3) this.c).invoke(obj, obj2);
    }
}
