package com.posthog.internal;

import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import defpackage.g03;
import defpackage.i03;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ a[] $VALUES;
    public static final C0155a Companion;
    public static final a EXACT;
    public static final a FLAG_EVALUATES_TO;
    public static final a GT;
    public static final a GTE;
    public static final a ICONTAINS;
    public static final a IN;
    public static final a IS_DATE_AFTER;
    public static final a IS_DATE_BEFORE;
    public static final a IS_NOT;
    public static final a IS_NOT_SET;
    public static final a IS_SET;
    public static final a LT;
    public static final a LTE;
    public static final a NOT_ICONTAINS;
    public static final a NOT_REGEX;
    public static final a REGEX;
    public static final a SEMVER_CARET;
    public static final a SEMVER_EQ;
    public static final a SEMVER_GT;
    public static final a SEMVER_GTE;
    public static final a SEMVER_LT;
    public static final a SEMVER_LTE;
    public static final a SEMVER_NEQ;
    public static final a SEMVER_TILDE;
    public static final a SEMVER_WILDCARD;
    public static final a UNKNOWN;

    /* JADX INFO: renamed from: com.posthog.internal.a$a, reason: collision with other inner class name */
    public static final class C0155a {
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public static a a(String str) {
            if (str == null) {
                return null;
            }
            a.Companion.getClass();
            switch (str.hashCode()) {
                case -1949715007:
                    if (str.equals("semver_gte")) {
                        return a.SEMVER_GTE;
                    }
                    break;
                case -1949710202:
                    if (str.equals("semver_lte")) {
                        return a.SEMVER_LTE;
                    }
                    break;
                case -1949708733:
                    if (str.equals("semver_neq")) {
                        return a.SEMVER_NEQ;
                    }
                    break;
                case -1619757284:
                    if (str.equals("not_icontains")) {
                        return a.NOT_ICONTAINS;
                    }
                    break;
                case -1371603576:
                    if (str.equals("icontains")) {
                        return a.ICONTAINS;
                    }
                    break;
                case -1179762114:
                    if (str.equals("is_not")) {
                        return a.IS_NOT;
                    }
                    break;
                case -1179757619:
                    if (str.equals("is_set")) {
                        return a.IS_SET;
                    }
                    break;
                case -1131894720:
                    if (str.equals("is_date_after")) {
                        return a.IS_DATE_AFTER;
                    }
                    break;
                case -1074625044:
                    if (str.equals("semver_caret")) {
                        return a.SEMVER_CARET;
                    }
                    break;
                case -1058692671:
                    if (str.equals("semver_tilde")) {
                        return a.SEMVER_TILDE;
                    }
                    break;
                case -733525037:
                    if (str.equals("flag_evaluates_to")) {
                        return a.FLAG_EVALUATES_TO;
                    }
                    break;
                case -701699685:
                    if (str.equals("is_date_before")) {
                        return a.IS_DATE_BEFORE;
                    }
                    break;
                case -665592095:
                    if (str.equals("is_not_set")) {
                        return a.IS_NOT_SET;
                    }
                    break;
                case -635006255:
                    if (str.equals("semver_wildcard")) {
                        return a.SEMVER_WILDCARD;
                    }
                    break;
                case -339988765:
                    if (str.equals("semver_eq")) {
                        return a.SEMVER_EQ;
                    }
                    break;
                case -339988700:
                    if (str.equals("semver_gt")) {
                        return a.SEMVER_GT;
                    }
                    break;
                case -339988545:
                    if (str.equals("semver_lt")) {
                        return a.SEMVER_LT;
                    }
                    break;
                case 3309:
                    if (str.equals("gt")) {
                        return a.GT;
                    }
                    break;
                case 3365:
                    if (str.equals("in")) {
                        return a.IN;
                    }
                    break;
                case 3464:
                    if (str.equals("lt")) {
                        return a.LT;
                    }
                    break;
                case 102680:
                    if (str.equals("gte")) {
                        return a.GTE;
                    }
                    break;
                case 107485:
                    if (str.equals("lte")) {
                        return a.LTE;
                    }
                    break;
                case 96946943:
                    if (str.equals("exact")) {
                        return a.EXACT;
                    }
                    break;
                case 108392519:
                    if (str.equals("regex")) {
                        return a.REGEX;
                    }
                    break;
                case 1626297307:
                    if (str.equals("not_regex")) {
                        return a.NOT_REGEX;
                    }
                    break;
            }
            return a.UNKNOWN;
        }
    }

    static {
        a aVar = new a("UNKNOWN", 0);
        UNKNOWN = aVar;
        a aVar2 = new a("EXACT", 1);
        EXACT = aVar2;
        a aVar3 = new a("IS_NOT", 2);
        IS_NOT = aVar3;
        a aVar4 = new a("IS_SET", 3);
        IS_SET = aVar4;
        a aVar5 = new a("IS_NOT_SET", 4);
        IS_NOT_SET = aVar5;
        a aVar6 = new a("ICONTAINS", 5);
        ICONTAINS = aVar6;
        a aVar7 = new a("NOT_ICONTAINS", 6);
        NOT_ICONTAINS = aVar7;
        a aVar8 = new a("REGEX", 7);
        REGEX = aVar8;
        a aVar9 = new a("NOT_REGEX", 8);
        NOT_REGEX = aVar9;
        a aVar10 = new a(HlsMediaPlaylist.Interstitial.SNAP_TYPE_IN, 9);
        IN = aVar10;
        a aVar11 = new a("GT", 10);
        GT = aVar11;
        a aVar12 = new a("GTE", 11);
        GTE = aVar12;
        a aVar13 = new a("LT", 12);
        LT = aVar13;
        a aVar14 = new a("LTE", 13);
        LTE = aVar14;
        a aVar15 = new a("IS_DATE_BEFORE", 14);
        IS_DATE_BEFORE = aVar15;
        a aVar16 = new a("IS_DATE_AFTER", 15);
        IS_DATE_AFTER = aVar16;
        a aVar17 = new a("FLAG_EVALUATES_TO", 16);
        FLAG_EVALUATES_TO = aVar17;
        a aVar18 = new a("SEMVER_EQ", 17);
        SEMVER_EQ = aVar18;
        a aVar19 = new a("SEMVER_NEQ", 18);
        SEMVER_NEQ = aVar19;
        a aVar20 = new a("SEMVER_GT", 19);
        SEMVER_GT = aVar20;
        a aVar21 = new a("SEMVER_GTE", 20);
        SEMVER_GTE = aVar21;
        a aVar22 = new a("SEMVER_LT", 21);
        SEMVER_LT = aVar22;
        a aVar23 = new a("SEMVER_LTE", 22);
        SEMVER_LTE = aVar23;
        a aVar24 = new a("SEMVER_TILDE", 23);
        SEMVER_TILDE = aVar24;
        a aVar25 = new a("SEMVER_CARET", 24);
        SEMVER_CARET = aVar25;
        a aVar26 = new a("SEMVER_WILDCARD", 25);
        SEMVER_WILDCARD = aVar26;
        a[] aVarArr = {aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9, aVar10, aVar11, aVar12, aVar13, aVar14, aVar15, aVar16, aVar17, aVar18, aVar19, aVar20, aVar21, aVar22, aVar23, aVar24, aVar25, aVar26};
        $VALUES = aVarArr;
        $ENTRIES = new i03(aVarArr);
        Companion = new C0155a();
    }

    public a() {
        throw null;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) $VALUES.clone();
    }
}
