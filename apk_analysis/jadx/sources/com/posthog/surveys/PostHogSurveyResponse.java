package com.posthog.surveys;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.me0;
import defpackage.qg;
import defpackage.sg;
import defpackage.xp;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PostHogSurveyResponse {

    public static final class Link extends PostHogSurveyResponse {
        private final boolean clicked;

        public Link(boolean z) {
            super(null);
            this.clicked = z;
        }

        public static /* synthetic */ Link copy$default(Link link, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = link.clicked;
            }
            return link.copy(z);
        }

        public final boolean component1() {
            return this.clicked;
        }

        public final Link copy(boolean z) {
            return new Link(z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Link) && this.clicked == ((Link) obj).clicked;
        }

        public final boolean getClicked() {
            return this.clicked;
        }

        public int hashCode() {
            return Boolean.hashCode(this.clicked);
        }

        public String toString() {
            return sg.d(new StringBuilder("Link(clicked="), this.clicked, ')');
        }
    }

    public static final class MultipleChoice extends PostHogSurveyResponse {
        private final List<String> selectedChoices;

        public MultipleChoice(List<String> list) {
            super(null);
            this.selectedChoices = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ MultipleChoice copy$default(MultipleChoice multipleChoice, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = multipleChoice.selectedChoices;
            }
            return multipleChoice.copy(list);
        }

        public final List<String> component1() {
            return this.selectedChoices;
        }

        public final MultipleChoice copy(List<String> list) {
            return new MultipleChoice(list);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MultipleChoice) && aa4.e(this.selectedChoices, ((MultipleChoice) obj).selectedChoices);
        }

        public final List<String> getSelectedChoices() {
            return this.selectedChoices;
        }

        public int hashCode() {
            List<String> list = this.selectedChoices;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        public String toString() {
            return qg.f(new StringBuilder("MultipleChoice(selectedChoices="), this.selectedChoices, ')');
        }
    }

    public static final class Rating extends PostHogSurveyResponse {
        private final Integer rating;

        public Rating(Integer num) {
            super(null);
            this.rating = num;
        }

        public static /* synthetic */ Rating copy$default(Rating rating, Integer num, int i, Object obj) {
            if ((i & 1) != 0) {
                num = rating.rating;
            }
            return rating.copy(num);
        }

        public final Integer component1() {
            return this.rating;
        }

        public final Rating copy(Integer num) {
            return new Rating(num);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Rating) && aa4.e(this.rating, ((Rating) obj).rating);
        }

        public final Integer getRating() {
            return this.rating;
        }

        public int hashCode() {
            Integer num = this.rating;
            if (num == null) {
                return 0;
            }
            return num.hashCode();
        }

        public String toString() {
            return "Rating(rating=" + this.rating + ')';
        }
    }

    public static final class SingleChoice extends PostHogSurveyResponse {
        private final String selectedChoice;

        public SingleChoice(String str) {
            super(null);
            this.selectedChoice = str;
        }

        public static /* synthetic */ SingleChoice copy$default(SingleChoice singleChoice, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = singleChoice.selectedChoice;
            }
            return singleChoice.copy(str);
        }

        public final String component1() {
            return this.selectedChoice;
        }

        public final SingleChoice copy(String str) {
            return new SingleChoice(str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SingleChoice) && aa4.e(this.selectedChoice, ((SingleChoice) obj).selectedChoice);
        }

        public final String getSelectedChoice() {
            return this.selectedChoice;
        }

        public int hashCode() {
            String str = this.selectedChoice;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return xp.e(new StringBuilder("SingleChoice(selectedChoice="), this.selectedChoice, ')');
        }
    }

    public static final class Text extends PostHogSurveyResponse {
        private final String text;

        public Text(String str) {
            super(null);
            this.text = str;
        }

        public static /* synthetic */ Text copy$default(Text text, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = text.text;
            }
            return text.copy(str);
        }

        public final String component1() {
            return this.text;
        }

        public final Text copy(String str) {
            return new Text(str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Text) && aa4.e(this.text, ((Text) obj).text);
        }

        public final String getText() {
            return this.text;
        }

        public int hashCode() {
            String str = this.text;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return xp.e(new StringBuilder("Text(text="), this.text, ')');
        }
    }

    public /* synthetic */ PostHogSurveyResponse(jh2 jh2Var) {
        this();
    }

    public final Object toResponseValue() {
        if (this instanceof Text) {
            return ((Text) this).getText();
        }
        if (this instanceof SingleChoice) {
            return ((SingleChoice) this).getSelectedChoice();
        }
        if (this instanceof MultipleChoice) {
            return ((MultipleChoice) this).getSelectedChoices();
        }
        if (this instanceof Rating) {
            Integer rating = ((Rating) this).getRating();
            if (rating != null) {
                return rating.toString();
            }
            return null;
        }
        if (!(this instanceof Link)) {
            me0.e();
            return null;
        }
        if (((Link) this).getClicked()) {
            return "link clicked";
        }
        return null;
    }

    private PostHogSurveyResponse() {
    }
}
