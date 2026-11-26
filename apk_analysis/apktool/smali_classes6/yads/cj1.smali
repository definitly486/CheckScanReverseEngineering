.class public abstract Lyads/cj1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IFF)Lyads/zf3;
    .locals 2

    new-instance v0, Lyads/zf3;

    new-instance v1, Lyads/wf3;

    mul-float/2addr p1, p2

    invoke-direct {v1, p1}, Lyads/wf3;-><init>(F)V

    invoke-direct {v0, p0, v1}, Lyads/zf3;-><init>(ILyads/wf3;)V

    return-object v0
.end method
