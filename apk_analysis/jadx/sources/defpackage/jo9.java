package defpackage;

import java.net.CookieStore;
import java.net.HttpCookie;
import java.net.URI;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class jo9 implements CookieStore {
    @Override // java.net.CookieStore
    public final void add(URI uri, HttpCookie httpCookie) {
    }

    @Override // java.net.CookieStore
    public final List get(URI uri) {
        return Collections.EMPTY_LIST;
    }

    @Override // java.net.CookieStore
    public final List getCookies() {
        return Collections.EMPTY_LIST;
    }

    @Override // java.net.CookieStore
    public final List getURIs() {
        return Collections.EMPTY_LIST;
    }

    @Override // java.net.CookieStore
    public final boolean remove(URI uri, HttpCookie httpCookie) {
        return false;
    }

    @Override // java.net.CookieStore
    public final boolean removeAll() {
        return false;
    }
}
