package io.appmetrica.analytics.impl;

import java.util.List;
import java.util.Set;
import org.json.JSONArray;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.kf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1050kf implements Nl {
    public static final String c = "kf";
    public final Va a;
    public final String b;

    public AbstractC1050kf(Va va, String str) {
        this.a = va;
        this.b = str;
    }

    public abstract /* synthetic */ int a(String str, int i);

    public abstract /* synthetic */ long a(String str, long j);

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends AbstractC1050kf> T a(String str, String[] strArr) {
        String string;
        try {
            JSONArray jSONArray = new JSONArray();
            for (String str2 : strArr) {
                jSONArray.put(str2);
            }
            string = jSONArray.toString();
        } catch (Throwable unused) {
            string = null;
        }
        this.a.a(str, string);
        return this;
    }

    public abstract /* synthetic */ String a(String str, String str2);

    public abstract /* synthetic */ boolean a(String str, boolean z);

    public abstract /* synthetic */ Nl b(String str, int i);

    public abstract /* synthetic */ Nl b(String str, long j);

    public abstract /* synthetic */ Nl b(String str, String str2);

    public abstract /* synthetic */ Nl b(String str, boolean z);

    public abstract /* synthetic */ boolean b(String str);

    public final long c(String str, long j) {
        return this.a.getLong(str, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends AbstractC1050kf> T d(String str, String str2) {
        synchronized (this) {
            this.a.a(str, str2);
        }
        return this;
    }

    public abstract /* synthetic */ Nl e(String str);

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends AbstractC1050kf> T f(String str) {
        synchronized (this) {
            this.a.remove(str);
        }
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Nl, io.appmetrica.analytics.impl.Ko
    public void flushAsync() {
        this.a.flushAsync();
    }

    public final int c(String str, int i) {
        return this.a.getInt(str, i);
    }

    public AbstractC1050kf(Va va) {
        this(va, null);
    }

    public final String c(String str, String str2) {
        return this.a.getString(str, str2);
    }

    public final boolean c(String str, boolean z) {
        return this.a.getBoolean(str, z);
    }

    public final boolean c(String str) {
        return this.a.a(str);
    }

    public Set<String> c() {
        return this.a.b();
    }

    public final C1076lf d(String str) {
        return new C1076lf(str, this.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends AbstractC1050kf> T d(String str, long j) {
        synchronized (this) {
            this.a.a(str, j);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends AbstractC1050kf> T d(String str, int i) {
        synchronized (this) {
            this.a.a(str, i);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends AbstractC1050kf> T d(String str, boolean z) {
        synchronized (this) {
            this.a.a(str, z);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends AbstractC1050kf> T a(String str, float f) {
        synchronized (this) {
            this.a.a(str, f);
        }
        return this;
    }

    public final <T extends AbstractC1050kf> T a(String str, List<String> list) {
        return (T) a(str, (String[]) list.toArray(new String[list.size()]));
    }

    public void a() {
        synchronized (this) {
            this.a.a();
        }
    }
}
