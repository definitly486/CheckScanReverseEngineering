package com.posthog.internal;

import defpackage.g03;
import defpackage.i03;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ b[] $VALUES;
    public static final b COHORT;
    public static final a Companion;
    public static final b FLAG;
    public static final b PERSON;

    public static final class a {
        public static b a(String str) {
            if (str == null) {
                return null;
            }
            b.Companion.getClass();
            int iHashCode = str.hashCode();
            if (iHashCode != -1354961931) {
                if (iHashCode != -991716523) {
                    if (iHashCode == 3145580 && str.equals("flag")) {
                        return b.FLAG;
                    }
                } else if (str.equals("person")) {
                    return b.PERSON;
                }
            } else if (str.equals("cohort")) {
                return b.COHORT;
            }
            return b.PERSON;
        }
    }

    static {
        b bVar = new b("COHORT", 0);
        COHORT = bVar;
        b bVar2 = new b("FLAG", 1);
        FLAG = bVar2;
        b bVar3 = new b("PERSON", 2);
        PERSON = bVar3;
        b[] bVarArr = {bVar, bVar2, bVar3};
        $VALUES = bVarArr;
        $ENTRIES = new i03(bVarArr);
        Companion = new a();
    }

    public b() {
        throw null;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) $VALUES.clone();
    }
}
