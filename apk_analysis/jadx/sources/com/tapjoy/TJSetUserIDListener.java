package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public interface TJSetUserIDListener {
    default void onSetUserIDFailure(int i, String str) {
    }

    @Deprecated
    default void onSetUserIDFailure(String str) {
    }

    default void onSetUserIDSuccess() {
    }
}
