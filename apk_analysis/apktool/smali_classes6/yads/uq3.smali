.class public abstract Lyads/uq3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/l66;

.field public static final b:Lnl3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lng;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lng;-><init>(I)V

    sput-object v0, Lyads/uq3;->a:Lyads/l66;

    new-instance v0, Lsc7;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lsc7;-><init>(I)V

    sput-object v0, Lyads/uq3;->b:Lnl3;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
