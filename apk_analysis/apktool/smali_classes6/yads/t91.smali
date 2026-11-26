.class public abstract Lyads/t91;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/l66;

.field public static final b:Lyads/l66;

.field public static final c:Lyads/l66;

.field public static final d:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfh;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lfh;-><init>(I)V

    sput-object v0, Lyads/t91;->a:Lyads/l66;

    new-instance v0, Lih;

    invoke-direct {v0, v1}, Lih;-><init>(I)V

    sput-object v0, Lyads/t91;->b:Lyads/l66;

    new-instance v0, Ljh;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljh;-><init>(I)V

    sput-object v0, Lyads/t91;->c:Lyads/l66;

    new-instance v0, Lkh;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lkh;-><init>(I)V

    sput-object v0, Lyads/t91;->d:Lyads/l66;

    return-void
.end method

.method public static final a(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final c(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final d(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
