package io.appmetrica.analytics.modulesapi.internal.common;

import defpackage.g03;
import defpackage.i03;
import defpackage.jh2;
import defpackage.qg;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class InternalModuleEvent {
    public static final Companion Companion = new Companion(null);
    private final int a;
    private final String b;
    private final String c;
    private final Integer d;
    private final Category e;
    private final List f;
    private final List g;
    private final List h;

    public static final class Builder {
        private final int a;
        private String b;
        private String c;
        private Integer d;
        private Category e;
        private Map f;
        private Map g;
        private Map h;

        public Builder(int i) {
            this.a = i;
        }

        public InternalModuleEvent build() {
            return new InternalModuleEvent(this, null);
        }

        public final Map<String, Object> getAttributes() {
            return this.h;
        }

        public final Category getCategory() {
            return this.e;
        }

        public final Map<String, Object> getEnvironment() {
            return this.f;
        }

        public final Map<String, byte[]> getExtras() {
            return this.g;
        }

        public final String getName() {
            return this.b;
        }

        public final Integer getServiceDataReporterType() {
            return this.d;
        }

        public final int getType$modules_api_release() {
            return this.a;
        }

        public final String getValue() {
            return this.c;
        }

        public final void setAttributes(Map<String, ? extends Object> map) {
            this.h = map;
        }

        public final void setCategory(Category category) {
            this.e = category;
        }

        public final void setEnvironment(Map<String, ? extends Object> map) {
            this.f = map;
        }

        public final void setExtras(Map<String, byte[]> map) {
            this.g = map;
        }

        public final void setName(String str) {
            this.b = str;
        }

        public final void setServiceDataReporterType(Integer num) {
            this.d = num;
        }

        public final void setValue(String str) {
            this.c = str;
        }

        public final Builder withAttributes(Map<String, ? extends Object> map) {
            if (map != null) {
                this.h = new HashMap(map);
            }
            return this;
        }

        public final Builder withCategory(Category category) {
            this.e = category;
            return this;
        }

        public final Builder withEnvironment(Map<String, ? extends Object> map) {
            if (map != null) {
                this.f = new HashMap(map);
            }
            return this;
        }

        public final Builder withExtras(Map<String, byte[]> map) {
            if (map != null) {
                this.g = new HashMap(map);
            }
            return this;
        }

        public final Builder withName(String str) {
            this.b = str;
            return this;
        }

        public final Builder withServiceDataReporterType(int i) {
            this.d = Integer.valueOf(i);
            return this;
        }

        public final Builder withValue(String str) {
            this.c = str;
            return this;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 io.appmetrica.analytics.modulesapi.internal.common.InternalModuleEvent$Category[], still in use, count: 1, list:
      (r0v1 io.appmetrica.analytics.modulesapi.internal.common.InternalModuleEvent$Category[]) from 0x001c: CONSTRUCTOR (r0v1 io.appmetrica.analytics.modulesapi.internal.common.InternalModuleEvent$Category[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class Category {
        GENERAL,
        SYSTEM;

        private static final /* synthetic */ g03 b;

        static {
            b = new i03(categoryArr);
        }

        private Category() {
            super(str, i);
        }

        public static g03<Category> getEntries() {
            return b;
        }

        public static Category valueOf(String str) {
            return (Category) Enum.valueOf(Category.class, str);
        }

        public static Category[] values() {
            return (Category[]) a.clone();
        }
    }

    private InternalModuleEvent(Builder builder) {
        this.a = builder.getType$modules_api_release();
        this.b = builder.getName();
        this.c = builder.getValue();
        this.d = builder.getServiceDataReporterType();
        this.e = builder.getCategory();
        this.f = CollectionUtils.getListFromMap(builder.getEnvironment());
        this.g = CollectionUtils.getListFromMap(builder.getExtras());
        this.h = CollectionUtils.getListFromMap(builder.getAttributes());
    }

    public static final Builder newBuilder(int i) {
        return Companion.newBuilder(i);
    }

    public final Map<String, Object> getAttributes() {
        return CollectionUtils.getMapFromListOrNull(this.h);
    }

    public final Category getCategory() {
        return this.e;
    }

    public final Map<String, Object> getEnvironment() {
        return CollectionUtils.getMapFromListOrNull(this.f);
    }

    public final Map<String, byte[]> getExtras() {
        return CollectionUtils.getMapFromListOrNull(this.g);
    }

    public final String getName() {
        return this.b;
    }

    public final Integer getServiceDataReporterType() {
        return this.d;
    }

    public final int getType() {
        return this.a;
    }

    public final String getValue() {
        return this.c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ModuleEvent{type=");
        sb.append(this.a);
        sb.append(", name='");
        sb.append(this.b);
        sb.append("', value='");
        sb.append(this.c);
        sb.append("', serviceDataReporterType=");
        sb.append(this.d);
        sb.append(", category=");
        sb.append(this.e);
        sb.append(", environment=");
        sb.append(this.f);
        sb.append(", extras=");
        sb.append(this.g);
        sb.append(", attributes=");
        return qg.f(sb, this.h, '}');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Builder newBuilder(int i) {
            return new Builder(i);
        }

        private Companion() {
        }
    }

    public /* synthetic */ InternalModuleEvent(Builder builder, jh2 jh2Var) {
        this(builder);
    }
}
