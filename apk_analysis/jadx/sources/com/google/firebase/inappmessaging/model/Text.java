package com.google.firebase.inappmessaging.model;

import android.text.TextUtils;
import com.google.firebase.inappmessaging.MessagesProto;
import defpackage.fg;

/* JADX INFO: loaded from: classes4.dex */
public class Text {
    private final String hexColor;
    private final String text;

    private Text(String str, String str2) {
        this.text = str;
        this.hexColor = str2;
    }

    public static Builder builder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Text)) {
            return false;
        }
        Text text = (Text) obj;
        if (hashCode() != text.hashCode()) {
            return false;
        }
        String str = this.text;
        return (str != null || text.text == null) && (str == null || str.equals(text.text)) && this.hexColor.equals(text.hexColor);
    }

    public String getHexColor() {
        return this.hexColor;
    }

    public String getText() {
        return this.text;
    }

    public int hashCode() {
        String str = this.text;
        if (str == null) {
            return this.hexColor.hashCode();
        }
        return this.hexColor.hashCode() + str.hashCode();
    }

    public static class Builder {
        private String hexColor;
        private String text;

        public Text build() {
            if (!TextUtils.isEmpty(this.hexColor)) {
                return new Text(this.text, this.hexColor);
            }
            fg.c("Text model must have a color");
            return null;
        }

        public Builder setHexColor(String str) {
            this.hexColor = str;
            return this;
        }

        public Builder setText(MessagesProto.Text text) {
            setText(text.getText());
            setHexColor(text.getHexColor());
            return this;
        }

        public Builder setText(String str) {
            this.text = str;
            return this;
        }
    }
}
