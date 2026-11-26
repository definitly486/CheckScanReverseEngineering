package com.posthog.internal;

import defpackage.aa4;

/* JADX INFO: loaded from: classes4.dex */
public final class EvaluationReason {
    private final String code;
    private final Integer condition_index;
    private final String description;

    public EvaluationReason(String str, String str2, Integer num) {
        this.code = str;
        this.description = str2;
        this.condition_index = num;
    }

    public static /* synthetic */ EvaluationReason copy$default(EvaluationReason evaluationReason, String str, String str2, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            str = evaluationReason.code;
        }
        if ((i & 2) != 0) {
            str2 = evaluationReason.description;
        }
        if ((i & 4) != 0) {
            num = evaluationReason.condition_index;
        }
        return evaluationReason.copy(str, str2, num);
    }

    public final String component1() {
        return this.code;
    }

    public final String component2() {
        return this.description;
    }

    public final Integer component3() {
        return this.condition_index;
    }

    public final EvaluationReason copy(String str, String str2, Integer num) {
        return new EvaluationReason(str, str2, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EvaluationReason)) {
            return false;
        }
        EvaluationReason evaluationReason = (EvaluationReason) obj;
        return aa4.e(this.code, evaluationReason.code) && aa4.e(this.description, evaluationReason.description) && aa4.e(this.condition_index, evaluationReason.condition_index);
    }

    public final String getCode() {
        return this.code;
    }

    public final Integer getCondition_index() {
        return this.condition_index;
    }

    public final String getDescription() {
        return this.description;
    }

    public int hashCode() {
        String str = this.code;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.description;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.condition_index;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "EvaluationReason(code=" + this.code + ", description=" + this.description + ", condition_index=" + this.condition_index + ')';
    }
}
