package androidx.savedstate.serialization;

import defpackage.ca8;
import defpackage.er;
import defpackage.es0;
import defpackage.fg6;
import defpackage.kr;
import defpackage.lq2;
import defpackage.mp7;
import defpackage.rc3;
import defpackage.s74;
import defpackage.sv4;
import defpackage.w91;
import defpackage.x07;
import defpackage.z74;

/* JADX INFO: loaded from: classes5.dex */
public final class SavedStateCodecUtilsKt {
    private static final mp7 booleanArrayDescriptor;
    private static final mp7 charArrayDescriptor;
    private static final mp7 doubleArrayDescriptor;
    private static final mp7 floatArrayDescriptor;
    private static final mp7 intArrayDescriptor;
    private static final mp7 intListDescriptor;
    private static final mp7 longArrayDescriptor;
    private static final mp7 stringArrayDescriptor;
    private static final mp7 stringListDescriptor;

    static {
        z74 z74Var = z74.a;
        fg6 fg6Var = z74.b;
        fg6Var.getClass();
        intListDescriptor = new kr(fg6Var);
        ca8 ca8Var = ca8.a;
        fg6 fg6Var2 = ca8.b;
        fg6Var2.getClass();
        stringListDescriptor = new kr(fg6Var2);
        booleanArrayDescriptor = es0.c.b;
        charArrayDescriptor = w91.c.b;
        doubleArrayDescriptor = lq2.c.b;
        floatArrayDescriptor = rc3.c.b;
        intArrayDescriptor = s74.c.b;
        longArrayDescriptor = sv4.c.b;
        x07.a(String.class);
        mp7 descriptor = ca8Var.getDescriptor();
        descriptor.getClass();
        stringArrayDescriptor = new er(descriptor);
    }

    public static final mp7 getBooleanArrayDescriptor() {
        return booleanArrayDescriptor;
    }

    public static final mp7 getCharArrayDescriptor() {
        return charArrayDescriptor;
    }

    public static final mp7 getDoubleArrayDescriptor() {
        return doubleArrayDescriptor;
    }

    public static final mp7 getFloatArrayDescriptor() {
        return floatArrayDescriptor;
    }

    public static final mp7 getIntArrayDescriptor() {
        return intArrayDescriptor;
    }

    public static final mp7 getIntListDescriptor() {
        return intListDescriptor;
    }

    public static final mp7 getLongArrayDescriptor() {
        return longArrayDescriptor;
    }

    public static final mp7 getStringArrayDescriptor() {
        return stringArrayDescriptor;
    }

    public static /* synthetic */ void getStringArrayDescriptor$annotations() {
    }

    public static final mp7 getStringListDescriptor() {
        return stringListDescriptor;
    }
}
