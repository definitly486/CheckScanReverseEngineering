.class public abstract Lyads/sr0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/lr0;

.field public static final d:Lyads/m36;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lyads/jr0;->e:Lyads/jr0;

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/sr0;->a:Lyads/xr2;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Lyads/xr2;

    invoke-direct {v2, v1}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lyads/sr0;->b:Lyads/xr2;

    sget-object v1, Lyads/lr0;->p:Lyads/lr0;

    sput-object v1, Lyads/sr0;->c:Lyads/lr0;

    new-instance v1, Luf;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Luf;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/sr0;->d:Lyads/m36;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/jr0;

    return p0
.end method
