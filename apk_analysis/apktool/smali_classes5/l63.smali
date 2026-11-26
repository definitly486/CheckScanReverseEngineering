.class public final Ll63;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GRPC_ENABLE_RFC3986_URIS"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ll63;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ll63;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {v0}, Li13;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_2
    invoke-static {v0}, Li13;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
