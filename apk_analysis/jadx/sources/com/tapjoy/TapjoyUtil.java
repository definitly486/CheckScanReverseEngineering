package com.tapjoy;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import defpackage.ad2;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.xml.parsers.DocumentBuilderFactory;
import org.json.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyUtil {
    public static final AtomicInteger a = new AtomicInteger(1);

    public static String SHA1(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
        messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
        return convertToHex(messageDigest.digest());
    }

    public static String SHA256(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
        return convertToHex(messageDigest.digest());
    }

    public static Document buildDocument(String str) {
        try {
            return DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(str.getBytes("UTF-8")));
        } catch (Exception e) {
            TapjoyLog.d("buildDocument exception: " + e);
            return null;
        }
    }

    public static String convertToHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            int i2 = (bArr[i] >>> 4) & 15;
            int i3 = 0;
            while (true) {
                if (i2 < 0 || i2 > 9) {
                    stringBuffer.append((char) (i2 + 87));
                } else {
                    stringBuffer.append((char) (i2 + 48));
                }
                i2 = bArr[i] & 15;
                int i4 = i3 + 1;
                if (i3 >= 1) {
                    break;
                }
                i3 = i4;
            }
        }
        return stringBuffer.toString();
    }

    public static Bitmap createBitmapFromView(View view) {
        Bitmap bitmapCreateBitmap = null;
        if (view != null && view.getLayoutParams().width > 0 && view.getLayoutParams().height > 0) {
            try {
                bitmapCreateBitmap = Bitmap.createBitmap(view.getLayoutParams().width, view.getLayoutParams().height, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                view.layout(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                view.draw(canvas);
                return bitmapCreateBitmap;
            } catch (Exception e) {
                TapjoyLog.d("Error creating bitmap: " + e);
            }
        }
        return bitmapCreateBitmap;
    }

    public static int generateViewId() {
        AtomicInteger atomicInteger;
        int i;
        int i2;
        do {
            atomicInteger = a;
            i = atomicInteger.get();
            i2 = i + 1;
            if (i2 > 16777215) {
                i2 = 1;
            }
        } while (!atomicInteger.compareAndSet(i, i2));
        return i;
    }

    public static String getFileContents(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (!z) {
            String line = bufferedReader.readLine();
            boolean z2 = line == null;
            if (line != null) {
                sb.append(line);
            }
            z = z2;
        }
        bufferedReader.close();
        fileInputStream.close();
        return sb.toString();
    }

    public static String getNodeTrimValue(NodeList nodeList) {
        Element element = (Element) nodeList.item(0);
        if (element != null) {
            NodeList childNodes = element.getChildNodes();
            int length = childNodes.getLength();
            String string = "";
            for (int i = 0; i < length; i++) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem != null) {
                    StringBuilder sbC = ad2.c(string);
                    sbC.append(nodeItem.getNodeValue());
                    string = sbC.toString();
                }
            }
            if (!string.equals("")) {
                return string.trim();
            }
        }
        return null;
    }

    public static String getRedirectDomain(String str) {
        return str != null ? str.substring(str.indexOf("//") + 2, str.lastIndexOf("/")) : "";
    }

    public static Map<String, String> jsonToStringMap(JSONObject jSONObject) {
        return jSONObject != JSONObject.NULL ? toStringMap(jSONObject) : new HashMap();
    }

    public static void runOnMainThread(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    public static void safePut(Map<String, String> map, String str, String str2, boolean z) {
        if (str == null || str.length() <= 0 || str2 == null || str2.length() <= 0) {
            return;
        }
        if (z) {
            map.put(Uri.encode(str), Uri.encode(str2));
        } else {
            map.put(str, str2);
        }
    }

    public static View scaleDisplayAd(View view, int i) {
        int i2 = view.getLayoutParams().width;
        int i3 = view.getLayoutParams().height;
        TapjoyLog.d("wxh: " + i2 + "x" + i3);
        if (i2 > i) {
            int iIntValue = Double.valueOf((((double) i) / ((double) i2)) * 100.0d).intValue();
            WebView webView = (WebView) view;
            webView.getSettings().setSupportZoom(true);
            webView.setPadding(0, 0, 0, 0);
            webView.setVerticalScrollBarEnabled(false);
            webView.setHorizontalScrollBarEnabled(false);
            webView.setInitialScale(iIntValue);
            view.setLayoutParams(new ViewGroup.LayoutParams(i, (i3 * i) / i2));
        }
        return view;
    }

    public static Map<String, String> toStringMap(JSONObject jSONObject) {
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, jSONObject.get(next).toString());
        }
        return map;
    }

    public static void safePut(Map<String, String> map, String str, Number number) {
        if (str == null || str.length() <= 0 || number == null) {
            return;
        }
        map.put(str, number.toString());
    }
}
