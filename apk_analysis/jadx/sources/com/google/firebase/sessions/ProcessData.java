package com.google.firebase.sessions;

import defpackage.aa4;
import defpackage.df4;
import defpackage.gu1;
import defpackage.jh2;
import defpackage.mp7;
import defpackage.r96;
import defpackage.up7;
import defpackage.wp7;
import defpackage.xp;

/* JADX INFO: loaded from: classes4.dex */
@up7
public final class ProcessData {
    public static final Companion Companion = new Companion(null);
    private final int pid;
    private final String uuid;

    public /* synthetic */ ProcessData(int i, int i2, String str, wp7 wp7Var) {
        if (3 != (i & 3)) {
            r96.f(ProcessData$$serializer.INSTANCE.getDescriptor(), i, 3);
            throw null;
        }
        this.pid = i2;
        this.uuid = str;
    }

    public static /* synthetic */ ProcessData copy$default(ProcessData processData, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = processData.pid;
        }
        if ((i2 & 2) != 0) {
            str = processData.uuid;
        }
        return processData.copy(i, str);
    }

    public static final /* synthetic */ void write$Self$com_google_firebase_firebase_sessions(ProcessData processData, gu1 gu1Var, mp7 mp7Var) {
        gu1Var.encodeIntElement(mp7Var, 0, processData.pid);
        gu1Var.encodeStringElement(mp7Var, 1, processData.uuid);
    }

    public final int component1() {
        return this.pid;
    }

    public final String component2() {
        return this.uuid;
    }

    public final ProcessData copy(int i, String str) {
        str.getClass();
        return new ProcessData(i, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProcessData)) {
            return false;
        }
        ProcessData processData = (ProcessData) obj;
        return this.pid == processData.pid && aa4.e(this.uuid, processData.uuid);
    }

    public final int getPid() {
        return this.pid;
    }

    public final String getUuid() {
        return this.uuid;
    }

    public int hashCode() {
        return this.uuid.hashCode() + (Integer.hashCode(this.pid) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ProcessData(pid=");
        sb.append(this.pid);
        sb.append(", uuid=");
        return xp.e(sb, this.uuid, ')');
    }

    public static final class Companion {
        private Companion() {
        }

        public final df4<ProcessData> serializer() {
            return ProcessData$$serializer.INSTANCE;
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }
    }

    public ProcessData(int i, String str) {
        str.getClass();
        this.pid = i;
        this.uuid = str;
    }
}
