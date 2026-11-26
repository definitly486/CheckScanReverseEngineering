package com.posthog.surveys;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes4.dex */
public enum PostHogDisplaySurveyTextContentType {
    HTML(0),
    TEXT(1);

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    private final int value;

    PostHogDisplaySurveyTextContentType(int i) {
        this.value = i;
    }

    public static g03<PostHogDisplaySurveyTextContentType> getEntries() {
        return $ENTRIES;
    }

    public final int getValue() {
        return this.value;
    }
}
