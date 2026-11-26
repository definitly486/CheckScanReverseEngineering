package com.posthog.surveys;

import defpackage.aa4;
import defpackage.xp;

/* JADX INFO: loaded from: classes4.dex */
public final class LinkSurveyQuestion extends SurveyQuestion {
    private final String link;

    public LinkSurveyQuestion(String str) {
        this.link = str;
    }

    public static /* synthetic */ LinkSurveyQuestion copy$default(LinkSurveyQuestion linkSurveyQuestion, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = linkSurveyQuestion.link;
        }
        return linkSurveyQuestion.copy(str);
    }

    public final String component1() {
        return this.link;
    }

    public final LinkSurveyQuestion copy(String str) {
        return new LinkSurveyQuestion(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LinkSurveyQuestion) && aa4.e(this.link, ((LinkSurveyQuestion) obj).link);
    }

    public final String getLink() {
        return this.link;
    }

    public int hashCode() {
        String str = this.link;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return xp.e(new StringBuilder("LinkSurveyQuestion(link="), this.link, ')');
    }
}
