.class public final Lwl9;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lk4a;",
        "Llz7<",
        "Lk4a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lfm9;


# direct methods
.method public constructor <init>(Lfm9;)V
    .locals 0

    iput-object p1, p0, Lwl9;->f:Lfm9;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lk4a;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lwl9;->f:Lfm9;

    iget-object v0, p0, Lfm9;->b:Lhia;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lhia;->a:Lsha;

    iget-object v2, p1, Lk4a;->b:Ljava/lang/String;

    iget-object v0, v0, Lhia;->b:Lc6a;

    new-instance v3, Lh5a;

    iget-object v4, p1, Lk4a;->a:Ljava/lang/String;

    iget-object v0, v0, Lc6a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v0, v5, v6}, Lh5a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxfa;

    invoke-direct {v0, v1, v3, v2}, Lxfa;-><init>(Lsha;Lh5a;Ljava/lang/String;)V

    new-instance v1, Lk08;

    invoke-direct {v1, v0}, Lk08;-><init>(Lll3;)V

    sget-object v0, Lgha;->f:Lgha;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lq08;

    invoke-direct {v2, v1, v0}, Lq08;-><init>(Llz7;Lnl3;)V

    new-instance v0, Lps5;

    invoke-direct {v0, p0}, Lps5;-><init>(Lfm9;)V

    new-instance p0, Lzz7;

    invoke-direct {p0, v2, v0}, Lzz7;-><init>(Llz7;Lnl3;)V

    new-instance v0, Lnk1;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lnk1;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lq08;

    invoke-direct {p1, p0, v0}, Lq08;-><init>(Llz7;Lnl3;)V

    return-object p1

    :cond_0
    const-string p0, "fsaEvent in null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
