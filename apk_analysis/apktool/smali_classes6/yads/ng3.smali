.class public final Lyads/ng3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lyads/aw3;
    .locals 3

    new-instance v0, Lyads/aw3;

    new-instance v1, Lyads/bw3;

    invoke-direct {v1}, Lyads/bw3;-><init>()V

    new-instance v2, Lyads/rw5;

    invoke-direct {v2}, Lyads/rw5;-><init>()V

    invoke-direct {v0, v1, v2}, Lyads/aw3;-><init>(Lyads/bw3;Lyads/rw5;)V

    return-object v0
.end method
