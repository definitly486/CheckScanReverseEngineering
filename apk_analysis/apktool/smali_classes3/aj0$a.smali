.class public final Laj0$a;
.super Lqj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public c:Ljava/lang/Exception;


# virtual methods
.method public final t0(Lbu0;J)J
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lqj3;->t0(Lbu0;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    iput-object p1, p0, Laj0$a;->c:Ljava/lang/Exception;

    throw p1
.end method
