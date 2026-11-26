package com.google.firebase.perf;

import com.google.firebase.Firebase;
import com.google.firebase.perf.metrics.HttpMetric;
import com.google.firebase.perf.metrics.Trace;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes4.dex */
public final class PerformanceKt {
    public static final FirebasePerformance getPerformance(Firebase firebase) {
        firebase.getClass();
        FirebasePerformance firebasePerformance = FirebasePerformance.getInstance();
        firebasePerformance.getClass();
        return firebasePerformance;
    }

    public static final <T> T trace(String str, nl3<? super Trace, ? extends T> nl3Var) {
        str.getClass();
        nl3Var.getClass();
        Trace traceCreate = Trace.create(str);
        traceCreate.getClass();
        traceCreate.start();
        try {
            return nl3Var.invoke(traceCreate);
        } finally {
            traceCreate.stop();
        }
    }

    public static final <T> T trace(Trace trace, nl3<? super Trace, ? extends T> nl3Var) {
        trace.getClass();
        nl3Var.getClass();
        trace.start();
        try {
            return nl3Var.invoke(trace);
        } finally {
            trace.stop();
        }
    }

    public static final void trace(HttpMetric httpMetric, nl3<? super HttpMetric, j59> nl3Var) {
        httpMetric.getClass();
        nl3Var.getClass();
        httpMetric.start();
        try {
            nl3Var.invoke(httpMetric);
        } finally {
            httpMetric.stop();
        }
    }
}
