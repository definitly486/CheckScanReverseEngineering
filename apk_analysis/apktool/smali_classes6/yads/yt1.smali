.class public abstract Lyads/yt1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/m36;

.field public static final c:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lyads/pt1;->f:Lyads/pt1;

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/yt1;->a:Lyads/xr2;

    new-instance v1, Lii5;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lii5;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/yt1;->b:Lyads/m36;

    new-instance v0, Lrz0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lrz0;-><init>(I)V

    sput-object v0, Lyads/yt1;->c:Lyads/st3;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/pt1;

    return p0
.end method

.method public static final a(Ljava/util/List;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
