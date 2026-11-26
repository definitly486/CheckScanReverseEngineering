package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.s7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1249s7 implements Converter {
    public final C1172p7 a;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C1249s7(C1172p7 c1172p7, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new C1172p7(null, 1, 0 == true ? 1 : 0) : c1172p7);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ContentValues fromModel(C1223r7 c1223r7) {
        ContentValues contentValues = new ContentValues();
        Long l = c1223r7.a;
        if (l != null) {
            contentValues.put("session_id", Long.valueOf(l.longValue()));
        }
        EnumC1160ol enumC1160ol = c1223r7.b;
        if (enumC1160ol != null) {
            contentValues.put("session_type", Integer.valueOf(enumC1160ol.a));
        }
        Long l2 = c1223r7.c;
        if (l2 != null) {
            contentValues.put("number_in_session", Long.valueOf(l2.longValue()));
        }
        EnumC1176pb enumC1176pb = c1223r7.d;
        if (enumC1176pb != null) {
            contentValues.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, Integer.valueOf(enumC1176pb.a));
        }
        Long l3 = c1223r7.e;
        if (l3 != null) {
            contentValues.put("global_number", Long.valueOf(l3.longValue()));
        }
        Long l4 = c1223r7.f;
        if (l4 != null) {
            contentValues.put("time", Long.valueOf(l4.longValue()));
        }
        C1172p7 c1172p7 = this.a;
        contentValues.put("event_description", MessageNano.toByteArray(c1172p7.a.fromModel(c1223r7.g)));
        return contentValues;
    }

    public C1249s7(C1172p7 c1172p7) {
        this.a = c1172p7;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1249s7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1223r7 toModel(ContentValues contentValues) {
        EnumC1160ol enumC1160ol;
        Long asLong = contentValues.getAsLong("session_id");
        Integer asInteger = contentValues.getAsInteger("session_type");
        if (asInteger != null) {
            int iIntValue = asInteger.intValue();
            enumC1160ol = EnumC1160ol.FOREGROUND;
            if (iIntValue != 0 && iIntValue == 1) {
                enumC1160ol = EnumC1160ol.BACKGROUND;
            }
        } else {
            enumC1160ol = null;
        }
        Long asLong2 = contentValues.getAsLong("number_in_session");
        Integer asInteger2 = contentValues.getAsInteger(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        return new C1223r7(asLong, enumC1160ol, asLong2, asInteger2 != null ? EnumC1176pb.a(asInteger2.intValue()) : null, contentValues.getAsLong("global_number"), contentValues.getAsLong("time"), this.a.toModel(contentValues.getAsByteArray("event_description")));
    }
}
