.class public abstract Lyads/z30;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/y30;Lyads/vq0;)Lyads/y30;
    .locals 2

    sget-object v0, Lyads/y30;->c:Lyads/y30;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Colors for linear gradient are not provided. Please check if \'colors\' or \'color_map\' properties are defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method
