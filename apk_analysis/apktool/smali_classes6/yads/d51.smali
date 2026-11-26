.class public abstract Lyads/d51;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lil1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lil1;-><init>(I)V

    sput-object v0, Lyads/d51;->a:Lyads/l66;

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
