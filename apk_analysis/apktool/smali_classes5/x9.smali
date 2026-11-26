.class public final Lx9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Laa;

.field public final b:Ljf6;

.field public final c:Lbm0;


# direct methods
.method public constructor <init>(Laa;Ljf6;Lbm0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9;->a:Laa;

    iput-object p2, p0, Lx9;->b:Ljf6;

    iput-object p3, p0, Lx9;->c:Lbm0;

    return-void
.end method

.method public static a(Lvx5;)Lux5;
    .locals 3

    new-instance v0, Lux5;

    invoke-virtual {p0}, Lvx5;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {p0}, Lvx5;->b()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-direct {v0, v1, v2}, Lux5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
