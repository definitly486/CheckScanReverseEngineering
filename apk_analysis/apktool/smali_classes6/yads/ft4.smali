.class public final Lyads/ft4;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final b:Lyads/ht4;

.field public final c:Lyads/rq3;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lyads/ht4;->g:Lyads/ht4;

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    iput-object v0, p0, Lyads/ft4;->b:Lyads/ht4;

    .line 28
    iput-object p3, p0, Lyads/ft4;->c:Lyads/rq3;

    .line 29
    iput-object p4, p0, Lyads/ft4;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V
    .locals 2

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p3, v1

    :cond_0
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_1

    move-object p4, v1

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    move-object p5, v1

    :cond_2
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lyads/ft4;->b:Lyads/ht4;

    iput-object p4, p0, Lyads/ft4;->c:Lyads/rq3;

    iput-object p5, p0, Lyads/ft4;->d:Ljava/lang/String;

    return-void
.end method
