package com.google.gson.internal.sql;

import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import defpackage.t39;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static final t39 a;
    public static final t39 b;
    public static final t39 c;
    public static final List<t39> d;

    /* JADX INFO: renamed from: com.google.gson.internal.sql.a$a, reason: collision with other inner class name */
    public class C0143a extends DefaultDateTypeAdapter.a<Date> {
        @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.a
        public final java.util.Date a(java.util.Date date) {
            return new Date(date.getTime());
        }
    }

    public class b extends DefaultDateTypeAdapter.a<Timestamp> {
        @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.a
        public final java.util.Date a(java.util.Date date) {
            return new Timestamp(date.getTime());
        }
    }

    static {
        boolean z;
        try {
            Class.forName("java.sql.Date");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        if (!z) {
            d = Collections.EMPTY_LIST;
            return;
        }
        new C0143a(Date.class);
        new b(Timestamp.class);
        t39 t39Var = SqlDateTypeAdapter.b;
        a = t39Var;
        t39 t39Var2 = SqlTimeTypeAdapter.b;
        b = t39Var2;
        t39 t39Var3 = SqlTimestampTypeAdapter.b;
        c = t39Var3;
        d = Collections.unmodifiableList(Arrays.asList(t39Var2, t39Var, t39Var3));
    }
}
