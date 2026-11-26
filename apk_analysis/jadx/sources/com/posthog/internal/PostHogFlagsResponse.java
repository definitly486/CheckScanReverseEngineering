package com.posthog.internal;

import defpackage.aa4;
import defpackage.jh2;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogFlagsResponse extends PostHogRemoteConfigResponse {
    private final boolean errorsWhileComputingFlags;
    private final Long evaluatedAt;
    private final Map<String, Object> featureFlagPayloads;
    private final Map<String, Object> featureFlags;
    private final Map<String, FeatureFlag> flags;
    private final List<String> quotaLimited;
    private final String requestId;

    public /* synthetic */ PostHogFlagsResponse(boolean z, Map map, Map map2, Map map3, List list, String str, Long l, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? false : z, map, map2, (i & 8) != 0 ? null : map3, (i & 16) != 0 ? null : list, str, l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PostHogFlagsResponse copy$default(PostHogFlagsResponse postHogFlagsResponse, boolean z, Map map, Map map2, Map map3, List list, String str, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            z = postHogFlagsResponse.errorsWhileComputingFlags;
        }
        if ((i & 2) != 0) {
            map = postHogFlagsResponse.featureFlags;
        }
        if ((i & 4) != 0) {
            map2 = postHogFlagsResponse.featureFlagPayloads;
        }
        if ((i & 8) != 0) {
            map3 = postHogFlagsResponse.flags;
        }
        if ((i & 16) != 0) {
            list = postHogFlagsResponse.quotaLimited;
        }
        if ((i & 32) != 0) {
            str = postHogFlagsResponse.requestId;
        }
        if ((i & 64) != 0) {
            l = postHogFlagsResponse.evaluatedAt;
        }
        String str2 = str;
        Long l2 = l;
        List list2 = list;
        Map map4 = map2;
        return postHogFlagsResponse.copy(z, map, map4, map3, list2, str2, l2);
    }

    public final boolean component1() {
        return this.errorsWhileComputingFlags;
    }

    public final Map<String, Object> component2() {
        return this.featureFlags;
    }

    public final Map<String, Object> component3() {
        return this.featureFlagPayloads;
    }

    public final Map<String, FeatureFlag> component4() {
        return this.flags;
    }

    public final List<String> component5() {
        return this.quotaLimited;
    }

    public final String component6() {
        return this.requestId;
    }

    public final Long component7() {
        return this.evaluatedAt;
    }

    public final PostHogFlagsResponse copy(boolean z, Map<String, ? extends Object> map, Map<String, ? extends Object> map2, Map<String, FeatureFlag> map3, List<String> list, String str, Long l) {
        return new PostHogFlagsResponse(z, map, map2, map3, list, str, l);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PostHogFlagsResponse)) {
            return false;
        }
        PostHogFlagsResponse postHogFlagsResponse = (PostHogFlagsResponse) obj;
        return this.errorsWhileComputingFlags == postHogFlagsResponse.errorsWhileComputingFlags && aa4.e(this.featureFlags, postHogFlagsResponse.featureFlags) && aa4.e(this.featureFlagPayloads, postHogFlagsResponse.featureFlagPayloads) && aa4.e(this.flags, postHogFlagsResponse.flags) && aa4.e(this.quotaLimited, postHogFlagsResponse.quotaLimited) && aa4.e(this.requestId, postHogFlagsResponse.requestId) && aa4.e(this.evaluatedAt, postHogFlagsResponse.evaluatedAt);
    }

    public final boolean getErrorsWhileComputingFlags() {
        return this.errorsWhileComputingFlags;
    }

    public final Long getEvaluatedAt() {
        return this.evaluatedAt;
    }

    public final Map<String, Object> getFeatureFlagPayloads() {
        return this.featureFlagPayloads;
    }

    public final Map<String, Object> getFeatureFlags() {
        return this.featureFlags;
    }

    public final Map<String, FeatureFlag> getFlags() {
        return this.flags;
    }

    public final List<String> getQuotaLimited() {
        return this.quotaLimited;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.errorsWhileComputingFlags) * 31;
        Map<String, Object> map = this.featureFlags;
        int iHashCode2 = (iHashCode + (map == null ? 0 : map.hashCode())) * 31;
        Map<String, Object> map2 = this.featureFlagPayloads;
        int iHashCode3 = (iHashCode2 + (map2 == null ? 0 : map2.hashCode())) * 31;
        Map<String, FeatureFlag> map3 = this.flags;
        int iHashCode4 = (iHashCode3 + (map3 == null ? 0 : map3.hashCode())) * 31;
        List<String> list = this.quotaLimited;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.requestId;
        int iHashCode6 = (iHashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.evaluatedAt;
        return iHashCode6 + (l != null ? l.hashCode() : 0);
    }

    public String toString() {
        return "PostHogFlagsResponse(errorsWhileComputingFlags=" + this.errorsWhileComputingFlags + ", featureFlags=" + this.featureFlags + ", featureFlagPayloads=" + this.featureFlagPayloads + ", flags=" + this.flags + ", quotaLimited=" + this.quotaLimited + ", requestId=" + this.requestId + ", evaluatedAt=" + this.evaluatedAt + ')';
    }

    public PostHogFlagsResponse(boolean z, Map<String, ? extends Object> map, Map<String, ? extends Object> map2, Map<String, FeatureFlag> map3, List<String> list, String str, Long l) {
        super(null, null, null, null, null, 31, null);
        this.errorsWhileComputingFlags = z;
        this.featureFlags = map;
        this.featureFlagPayloads = map2;
        this.flags = map3;
        this.quotaLimited = list;
        this.requestId = str;
        this.evaluatedAt = l;
    }
}
