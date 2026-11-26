package com.google.android.gms.dynamic;

import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.ag;
import defpackage.cc;
import defpackage.fg;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes4.dex */
public final class ObjectWrapper<T> extends IObjectWrapper.Stub {
    public final Object a;

    public ObjectWrapper(Object obj) {
        this.a = obj;
    }

    public static <T> T unwrap(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper instanceof ObjectWrapper) {
            return (T) ((ObjectWrapper) iObjectWrapper).a;
        }
        IBinder iBinderAsBinder = iObjectWrapper.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i != 1) {
            int length = declaredFields.length;
            fg.c(ag.d(new StringBuilder(String.valueOf(length).length() + 53), "Unexpected number of IObjectWrapper declared fields: ", length));
            return null;
        }
        Preconditions.checkNotNull(field);
        if (field.isAccessible()) {
            fg.c("IObjectWrapper declared field not private!");
            return null;
        }
        field.setAccessible(true);
        try {
            return (T) field.get(iBinderAsBinder);
        } catch (IllegalAccessException e) {
            cc.e("Could not access the field in remoteBinder.", e);
            return null;
        } catch (NullPointerException e2) {
            cc.e("Binder object is null.", e2);
            return null;
        }
    }

    public static <T> IObjectWrapper wrap(T t) {
        return new ObjectWrapper(t);
    }
}
