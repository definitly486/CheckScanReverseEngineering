.class public final Lcx7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvw;

.field public final b:Le89;

.field public final c:Lto7;

.field public final d:Lc89;

.field public final e:Ljf6;

.field public final f:Lg6;


# direct methods
.method public constructor <init>(Lvw;Le89;Lto7;Lc89;Ljf6;Lg6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcx7;->a:Lvw;

    iput-object p2, p0, Lcx7;->b:Le89;

    iput-object p3, p0, Lcx7;->c:Lto7;

    iput-object p4, p0, Lcx7;->d:Lc89;

    iput-object p5, p0, Lcx7;->e:Ljf6;

    iput-object p6, p0, Lcx7;->f:Lg6;

    return-void
.end method

.method public static a(Lcx7;Ljava/lang/String;Lam2;Ljava/lang/String;I)Lde3;
    .locals 8

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lbx7;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lbx7;-><init>(Lcx7;Ljava/lang/String;Lam2;Ljava/lang/String;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p0

    return-object p0
.end method
