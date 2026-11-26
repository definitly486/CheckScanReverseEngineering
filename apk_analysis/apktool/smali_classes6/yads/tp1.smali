.class public abstract Lyads/tp1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lme0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lme0;-><init>(I)V

    sput-object v0, Lyads/tp1;->a:Lyads/l66;

    return-void
.end method

.method public static final a(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
