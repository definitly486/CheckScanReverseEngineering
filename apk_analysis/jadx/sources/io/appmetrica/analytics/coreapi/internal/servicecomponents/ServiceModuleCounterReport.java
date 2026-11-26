package io.appmetrica.analytics.coreapi.internal.servicecomponents;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.rg;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class ServiceModuleCounterReport {
    public static final Companion Companion = new Companion(null);
    private final String a;
    private final String b;
    private final byte[] c;
    private final int d;

    public static final class Builder {
        private String a;
        private String b;
        private byte[] c;
        private int d;

        public final ServiceModuleCounterReport build() {
            return new ServiceModuleCounterReport(this.a, this.b, this.c, this.d);
        }

        public final Builder withName(String str) {
            this.a = str;
            return this;
        }

        public final Builder withType(int i) {
            this.d = i;
            return this;
        }

        public final Builder withValue(String str) {
            this.b = str;
            return this;
        }

        public final Builder withValueBytes(byte[] bArr) {
            this.c = bArr;
            return this;
        }
    }

    public ServiceModuleCounterReport(String str, String str2, byte[] bArr, int i) {
        this.a = str;
        this.b = str2;
        this.c = bArr;
        this.d = i;
    }

    public static /* synthetic */ ServiceModuleCounterReport copy$default(ServiceModuleCounterReport serviceModuleCounterReport, String str, String str2, byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = serviceModuleCounterReport.a;
        }
        if ((i2 & 2) != 0) {
            str2 = serviceModuleCounterReport.b;
        }
        if ((i2 & 4) != 0) {
            bArr = serviceModuleCounterReport.c;
        }
        if ((i2 & 8) != 0) {
            i = serviceModuleCounterReport.d;
        }
        return serviceModuleCounterReport.copy(str, str2, bArr, i);
    }

    public final String component1() {
        return this.a;
    }

    public final String component2() {
        return this.b;
    }

    public final byte[] component3() {
        return this.c;
    }

    public final int component4() {
        return this.d;
    }

    public final ServiceModuleCounterReport copy(String str, String str2, byte[] bArr, int i) {
        return new ServiceModuleCounterReport(str, str2, bArr, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServiceModuleCounterReport)) {
            return false;
        }
        ServiceModuleCounterReport serviceModuleCounterReport = (ServiceModuleCounterReport) obj;
        return this.d == serviceModuleCounterReport.d && aa4.e(this.a, serviceModuleCounterReport.a) && aa4.e(this.b, serviceModuleCounterReport.b) && Arrays.equals(this.c, serviceModuleCounterReport.c);
    }

    public final String getName() {
        return this.a;
    }

    public final int getType() {
        return this.d;
    }

    public final String getValue() {
        return this.b;
    }

    public final byte[] getValueBytes() {
        return this.c;
    }

    public int hashCode() {
        int i = this.d * 31;
        String str = this.a;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        byte[] bArr = this.c;
        return iHashCode2 + (bArr != null ? Arrays.hashCode(bArr) : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ServiceModuleCounterReport(name=");
        sb.append(this.a);
        sb.append(", value=");
        sb.append(this.b);
        sb.append(", valueBytes=");
        sb.append(Arrays.toString(this.c));
        sb.append(", type=");
        return rg.h(sb, this.d, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Builder newBuilder() {
            return new Builder();
        }

        private Companion() {
        }
    }
}
