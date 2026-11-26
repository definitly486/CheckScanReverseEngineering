package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import androidx.webkit.ProxyConfig;
import java.net.CookieStore;
import java.net.HttpCookie;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class gq9 implements CookieStore {
    public final SQLiteDatabase a;
    public final SQLiteStatement b;
    public final SQLiteStatement c;
    public final SQLiteStatement d;
    public final zv9 e;
    public final HashMap f;

    public gq9(SQLiteDatabase sQLiteDatabase) {
        String string;
        String string2;
        HttpCookie httpCookieB;
        HashMap map = new HashMap();
        this.f = map;
        this.a = sQLiteDatabase;
        this.e = new zv9();
        this.b = sQLiteDatabase.compileStatement("INSERT OR IGNORE INTO table_url_resolver_cookie( uri_key, uri, cookie_json) values (?,?,?)");
        this.c = sQLiteDatabase.compileStatement("DELETE FROM table_url_resolver_cookie where uri_key=?");
        this.d = sQLiteDatabase.compileStatement("DELETE FROM table_url_resolver_cookie");
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT  uri, cookie_json FROM table_url_resolver_cookie", null);
            while (cursorRawQuery.moveToNext()) {
                try {
                    try {
                        string = cursorRawQuery.getString(0);
                    } catch (Throwable unused) {
                        string = null;
                    }
                    try {
                        string2 = cursorRawQuery.getString(1);
                    } catch (Throwable unused2) {
                        string2 = null;
                    }
                    if (string2 != null) {
                        this.e.getClass();
                        httpCookieB = zv9.b(string2);
                    } else {
                        httpCookieB = null;
                    }
                    if (httpCookieB != null && string != null) {
                        URI uri = new URI(string);
                        Set hashSet = (Set) map.get(uri);
                        if (hashSet == null) {
                            hashSet = new HashSet();
                            map.put(uri, hashSet);
                        }
                        hashSet.add(httpCookieB);
                    }
                } catch (Throwable th) {
                    if (cursorRawQuery != null) {
                        try {
                            cursorRawQuery.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            cursorRawQuery.close();
        } catch (Throwable unused3) {
        }
    }

    public static URI a(URI uri, HttpCookie httpCookie) {
        if (httpCookie.getDomain() != null) {
            String domain = httpCookie.getDomain();
            if (domain.charAt(0) == '.') {
                domain = domain.substring(1);
            }
            try {
                return new URI(uri.getScheme() == null ? ProxyConfig.MATCH_HTTP : uri.getScheme(), domain, httpCookie.getPath() == null ? "/" : httpCookie.getPath(), null);
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("MyTargetCookieStore: Error - "), th);
            }
        }
        return uri;
    }

    @Override // java.net.CookieStore
    public final synchronized void add(URI uri, HttpCookie httpCookie) {
        try {
            URI uriA = a(uri, httpCookie);
            Set hashSet = (Set) this.f.get(uriA);
            if (hashSet == null) {
                hashSet = new HashSet();
                this.f.put(uriA, hashSet);
            }
            hashSet.remove(httpCookie);
            hashSet.add(httpCookie);
            d(uriA, httpCookie);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final ArrayList b(URI uri) {
        SQLiteDatabase sQLiteDatabase;
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : this.f.entrySet()) {
            URI uri2 = (URI) entry.getKey();
            String host = uri2.getHost();
            String host2 = uri.getHost();
            if (!host2.equals(host)) {
                if (host2.endsWith("." + host)) {
                }
            }
            String path = uri2.getPath();
            String path2 = uri.getPath();
            if (path2.equals(path) || ((path2.startsWith(path) && path.charAt(path.length() - 1) == '/') || (path2.startsWith(path) && path2.substring(path.length()).charAt(0) == '/'))) {
                hashSet.addAll((Collection) entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            HttpCookie httpCookie = (HttpCookie) it.next();
            if (httpCookie.hasExpired()) {
                arrayList.add(httpCookie);
                it.remove();
            }
        }
        if (!arrayList.isEmpty()) {
            synchronized (this) {
                this.a.beginTransaction();
                try {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        c(uri, (HttpCookie) it2.next());
                    }
                    this.a.setTransactionSuccessful();
                    sQLiteDatabase = this.a;
                } catch (Throwable unused) {
                    sQLiteDatabase = this.a;
                }
                sQLiteDatabase.endTransaction();
            }
        }
        return new ArrayList(hashSet);
    }

    public final synchronized void c(URI uri, HttpCookie httpCookie) {
        try {
            this.c.bindString(1, uri + "|" + httpCookie.getName());
            this.c.executeUpdateDelete();
            this.c.clearBindings();
        } catch (Throwable th) {
            this.c.clearBindings();
            throw th;
        }
    }

    public final synchronized void d(URI uri, HttpCookie httpCookie) {
        this.a.beginTransaction();
        try {
            c(uri, httpCookie);
            String string = uri.toString();
            String str = string + "|" + httpCookie.getName();
            this.e.getClass();
            String strA = zv9.a(httpCookie);
            this.b.bindString(1, str);
            this.b.bindString(2, string);
            this.b.bindString(3, strA);
            this.b.executeInsert();
            this.a.setTransactionSuccessful();
            this.a.endTransaction();
            this.b.clearBindings();
        } catch (Throwable th) {
            try {
                y14.r(null, "DB insertCookie error: " + th);
            } finally {
                this.a.endTransaction();
                this.b.clearBindings();
            }
        }
    }

    @Override // java.net.CookieStore
    public final synchronized List get(URI uri) {
        return b(uri);
    }

    @Override // java.net.CookieStore
    public final synchronized List getCookies() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f.keySet().iterator();
        while (it.hasNext()) {
            arrayList.addAll(b((URI) it.next()));
        }
        return arrayList;
    }

    @Override // java.net.CookieStore
    public final synchronized List getURIs() {
        return new ArrayList(this.f.keySet());
    }

    @Override // java.net.CookieStore
    public final synchronized boolean remove(URI uri, HttpCookie httpCookie) {
        try {
            Set set = (Set) this.f.get(uri);
            boolean z = set != null && set.remove(httpCookie);
            if (!z) {
                return z;
            }
            c(uri, httpCookie);
            return z;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.net.CookieStore
    public final synchronized boolean removeAll() {
        this.f.clear();
        synchronized (this) {
            try {
                this.d.executeUpdateDelete();
                this.d.clearBindings();
            } catch (Throwable th) {
                this.d.clearBindings();
                throw th;
            }
        }
        return true;
        return true;
    }
}
