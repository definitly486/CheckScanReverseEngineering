.class public abstract Lyads/y96;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lyads/z96;
    .locals 2

    .line 14
    new-instance v0, Lyads/z96;

    const-string v1, "Internal error. Failed to parse response"

    invoke-direct {v0, v1}, Lyads/z96;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lyads/z96;
    .locals 1

    if-nez p0, :cond_0

    .line 15
    const-string p0, "Ad request failed with network error"

    .line 16
    :cond_0
    new-instance v0, Lyads/z96;

    invoke-direct {v0, p0}, Lyads/z96;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lyads/fn2;)Lyads/z96;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Ad request completed successfully, but there are no ads available."

    :cond_0
    new-instance v0, Lyads/z96;

    invoke-direct {v0, p0}, Lyads/z96;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lyads/z96;
    .locals 2

    new-instance v0, Lyads/z96;

    const-string v1, "Server temporarily unavailable. Please, try again later."

    invoke-direct {v0, v1}, Lyads/z96;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lyads/z96;
    .locals 1

    .line 8
    new-instance v0, Lyads/z96;

    invoke-direct {v0, p0}, Lyads/z96;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
