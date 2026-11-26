.class public abstract Lyads/mb2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/l66;

.field public static final c:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/mb2;->a:Lyads/xr2;

    new-instance v0, Lti0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lti0;-><init>(I)V

    sput-object v0, Lyads/mb2;->b:Lyads/l66;

    new-instance v0, Ld;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ld;-><init>(I)V

    sput-object v0, Lyads/mb2;->c:Lyads/l66;

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

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
