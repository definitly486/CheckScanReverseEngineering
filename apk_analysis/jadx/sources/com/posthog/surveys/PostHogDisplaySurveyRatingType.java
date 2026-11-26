package com.posthog.surveys;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes4.dex */
public enum PostHogDisplaySurveyRatingType {
    NUMBER(0),
    EMOJI(1);

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    private final int value;

    PostHogDisplaySurveyRatingType(int i) {
        this.value = i;
    }

    public static g03<PostHogDisplaySurveyRatingType> getEntries() {
        return $ENTRIES;
    }

    public final int getValue() {
        return this.value;
    }
}
