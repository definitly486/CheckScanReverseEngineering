package com.posthog.internal;

import defpackage.mc4;
import defpackage.me0;
import defpackage.nc4;
import defpackage.pc4;
import defpackage.qd4;
import defpackage.vd4;
import defpackage.wd4;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public final class GsonPropertyOperatorAdapter implements nc4<com.posthog.internal.a>, wd4<com.posthog.internal.a> {

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[com.posthog.internal.a.values().length];
            try {
                iArr[com.posthog.internal.a.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[com.posthog.internal.a.EXACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[com.posthog.internal.a.IS_NOT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[com.posthog.internal.a.IS_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[com.posthog.internal.a.IS_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[com.posthog.internal.a.ICONTAINS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[com.posthog.internal.a.NOT_ICONTAINS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[com.posthog.internal.a.REGEX.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[com.posthog.internal.a.NOT_REGEX.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[com.posthog.internal.a.IN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[com.posthog.internal.a.GT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[com.posthog.internal.a.GTE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[com.posthog.internal.a.LT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[com.posthog.internal.a.LTE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[com.posthog.internal.a.IS_DATE_BEFORE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[com.posthog.internal.a.IS_DATE_AFTER.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[com.posthog.internal.a.FLAG_EVALUATES_TO.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[com.posthog.internal.a.SEMVER_EQ.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[com.posthog.internal.a.SEMVER_NEQ.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[com.posthog.internal.a.SEMVER_GT.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[com.posthog.internal.a.SEMVER_GTE.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[com.posthog.internal.a.SEMVER_LT.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[com.posthog.internal.a.SEMVER_LTE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[com.posthog.internal.a.SEMVER_TILDE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[com.posthog.internal.a.SEMVER_CARET.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[com.posthog.internal.a.SEMVER_WILDCARD.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            a = iArr;
        }
    }

    @Override // defpackage.nc4
    public final com.posthog.internal.a deserialize(pc4 pc4Var, Type type, mc4 mc4Var) {
        pc4Var.getClass();
        type.getClass();
        mc4Var.getClass();
        com.posthog.internal.a.C0155a c0155a = com.posthog.internal.a.Companion;
        String strG = pc4Var.g();
        c0155a.getClass();
        return com.posthog.internal.a.C0155a.a(strG);
    }

    @Override // defpackage.wd4
    public final pc4 serialize(com.posthog.internal.a aVar, Type type, vd4 vd4Var) {
        String str;
        com.posthog.internal.a aVar2 = aVar;
        type.getClass();
        vd4Var.getClass();
        if (aVar2 == null) {
            return null;
        }
        switch (a.a[aVar2.ordinal()]) {
            case 1:
                str = "unknown";
                break;
            case 2:
                str = "exact";
                break;
            case 3:
                str = "is_not";
                break;
            case 4:
                str = "is_set";
                break;
            case 5:
                str = "is_not_set";
                break;
            case 6:
                str = "icontains";
                break;
            case 7:
                str = "not_icontains";
                break;
            case 8:
                str = "regex";
                break;
            case 9:
                str = "not_regex";
                break;
            case 10:
                str = "in";
                break;
            case 11:
                str = "gt";
                break;
            case 12:
                str = "gte";
                break;
            case 13:
                str = "lt";
                break;
            case 14:
                str = "lte";
                break;
            case 15:
                str = "is_date_before";
                break;
            case 16:
                str = "is_date_after";
                break;
            case 17:
                str = "flag_evaluates_to";
                break;
            case 18:
                str = "semver_eq";
                break;
            case 19:
                str = "semver_neq";
                break;
            case 20:
                str = "semver_gt";
                break;
            case 21:
                str = "semver_gte";
                break;
            case 22:
                str = "semver_lt";
                break;
            case 23:
                str = "semver_lte";
                break;
            case 24:
                str = "semver_tilde";
                break;
            case 25:
                str = "semver_caret";
                break;
            case 26:
                str = "semver_wildcard";
                break;
            default:
                me0.e();
                return null;
        }
        return new qd4(str);
    }
}
