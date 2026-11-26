package com.tapjoy;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class TJPlacementData implements Serializable {
    public String a;
    public String b;
    public String c;
    public long d;
    public String e;
    public boolean f;
    public String g;
    public boolean h;
    public String i;
    public boolean k;
    public boolean j = false;
    public boolean l = false;
    public boolean m = false;

    public TJPlacementData(String str, String str2, String str3, String str4, String str5) {
        setBaseURL(str);
        this.a = str2;
        this.e = str3;
        this.b = str4;
        this.i = str5;
    }

    public String getBaseURL() {
        String str = this.c;
        if (str == null || str.isEmpty()) {
            return "";
        }
        String str2 = this.c;
        return str2.substring(0, str2.indexOf(47, str2.indexOf("//") + 3));
    }

    public String getContentViewId() {
        return this.i;
    }

    public String getHttpResponse() {
        return this.b;
    }

    public String getKey() {
        return this.a;
    }

    public String getPlacementName() {
        return this.e;
    }

    public String getRedirectURL() {
        return this.g;
    }

    public Long getRequestExpiration() {
        return Long.valueOf(this.d);
    }

    public boolean hasProgressSpinner() {
        return this.f;
    }

    public boolean isDidIncrementCache() {
        return this.l;
    }

    public boolean isDidIncrementPreRender() {
        return this.m;
    }

    public boolean isPreloadDisabled() {
        return this.j;
    }

    public boolean isPrerenderingRequested() {
        return this.h;
    }

    public void setBaseURL(String str) {
        this.c = str;
    }

    public void setContentViewId(String str) {
        this.i = str;
    }

    public void setDidIncrementCache(boolean z) {
        this.l = z;
    }

    public void setDidIncrementPreRender(boolean z) {
        this.m = z;
    }

    public void setHandleDismissOnPause(boolean z) {
        this.k = z;
    }

    public void setHasProgressSpinner(boolean z) {
        this.f = z;
    }

    public void setHttpResponse(String str) {
        this.b = str;
    }

    public void setKey(String str) {
        this.a = str;
    }

    public void setPlacementName(String str) {
        this.e = str;
    }

    public void setPreloadDisabled(boolean z) {
        this.j = z;
    }

    public void setPrerenderingRequested(boolean z) {
        this.h = z;
    }

    public void setRedirectURL(String str) {
        this.g = str;
    }

    public void setRequestExpiration(Long l) {
        this.d = l.longValue();
    }

    public boolean shouldHandleDismissOnPause() {
        return this.k;
    }

    public TJPlacementData(String str, String str2) {
        this.a = str;
        this.c = str2;
    }

    public TJPlacementData() {
    }
}
