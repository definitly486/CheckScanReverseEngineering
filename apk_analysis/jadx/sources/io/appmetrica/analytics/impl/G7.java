package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: loaded from: classes5.dex */
public final class G7 implements Converter {
    public final D7 a;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ G7(D7 d7, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new D7(null, 1, 0 == true ? 1 : 0) : d7);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ContentValues fromModel(F7 f7) {
        ContentValues contentValues = new ContentValues();
        Long l = f7.a;
        if (l != null) {
            contentValues.put(TtmlNode.ATTR_ID, Long.valueOf(l.longValue()));
        }
        EnumC1160ol enumC1160ol = f7.b;
        if (enumC1160ol != null) {
            contentValues.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, Integer.valueOf(enumC1160ol.a));
        }
        String str = f7.c;
        if (str != null) {
            contentValues.put("report_request_parameters", str);
        }
        D7 d7 = this.a;
        contentValues.put("session_description", MessageNano.toByteArray(d7.a.fromModel(f7.d)));
        return contentValues;
    }

    public G7(D7 d7) {
        this.a = d7;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public G7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final F7 toModel(ContentValues contentValues) {
        EnumC1160ol enumC1160ol;
        Long asLong = contentValues.getAsLong(TtmlNode.ATTR_ID);
        Integer asInteger = contentValues.getAsInteger(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        if (asInteger != null) {
            int iIntValue = asInteger.intValue();
            enumC1160ol = EnumC1160ol.FOREGROUND;
            if (iIntValue != 0 && iIntValue == 1) {
                enumC1160ol = EnumC1160ol.BACKGROUND;
            }
        } else {
            enumC1160ol = null;
        }
        return new F7(asLong, enumC1160ol, contentValues.getAsString("report_request_parameters"), this.a.toModel(contentValues.getAsByteArray("session_description")));
    }
}
