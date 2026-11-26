package androidx.core.backported.fixes;

import defpackage.jh2;
import defpackage.ll3;
import defpackage.ox2;
import defpackage.r01;
import defpackage.vu1;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class KnownIssue {
    private final Integer alias;
    private final long id;
    private final Set<String> manuallyTestedFingerprints;
    private final ll3<Boolean> precondition;
    private final String url;

    public KnownIssue(long j, Integer num, Set<String> set, ll3<Boolean> ll3Var) {
        set.getClass();
        ll3Var.getClass();
        this.id = j;
        this.alias = num;
        this.manuallyTestedFingerprints = set;
        this.precondition = ll3Var;
        this.url = r01.c(j, "https://issuetracker.google.com/issues/");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0() {
        return true;
    }

    public boolean equals(Object obj) {
        return (obj instanceof KnownIssue) && this.id == ((KnownIssue) obj).id;
    }

    public final Integer getAlias$core_backported_fixes() {
        return this.alias;
    }

    public final long getId() {
        return this.id;
    }

    public final Set<String> getManuallyTestedFingerprints$core_backported_fixes() {
        return this.manuallyTestedFingerprints;
    }

    public final ll3<Boolean> getPrecondition$core_backported_fixes() {
        return this.precondition;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return Long.hashCode(this.id);
    }

    public String toString() {
        Integer num = this.alias;
        long j = this.id;
        if (num == null) {
            return j + " without alias";
        }
        return j + " with alias " + this.alias.intValue();
    }

    public /* synthetic */ KnownIssue(long j, Integer num, Set set, ll3 ll3Var, int i, jh2 jh2Var) {
        this(j, num, (i & 4) != 0 ? ox2.b : set, (i & 8) != 0 ? new vu1(2) : ll3Var);
    }
}
