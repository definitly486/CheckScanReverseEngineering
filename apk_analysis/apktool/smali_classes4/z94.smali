.class public final Lz94;
.super Lkd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz94$a;,
        Lz94$b;
    }
.end annotation


# instance fields
.field public h:Lz94$a;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkd0;-><init>(ILandroid/content/Context;)V

    sget-object p0, Lsh5;->a:Ljava/lang/String;

    const-string p0, "Interstitial ad created. Version - 5.52.5"

    invoke-static {p0}, Ly14;->t(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lkia;Lj8a;)V
    .locals 8

    iget-object v0, p0, Lz94;->h:Lz94$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p2, p2, Lj8a;->a:Ll6a;

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    sget-object p2, Ll6a;->o:Ll6a;

    :cond_1
    invoke-interface {v0, p2, p0}, Lz94$a;->g(Ll6a;Lz94;)V

    return-void

    :cond_2
    iget-object v0, p1, Lkia;->b:Ljava/util/ArrayList;

    iget-object v2, p1, Lvha;->a:Lfq9;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x3

    iget-object v3, p0, Lzc0;->a:Lz2a;

    if-eqz v1, :cond_5

    if-eqz v2, :cond_3

    :try_start_1
    new-instance v5, Lz94$b;

    invoke-direct {v5, p0}, Lz94$b;-><init>(Lz94;)V

    iget-object v4, p0, Lzc0;->b:Lcom/my/target/t0$a;

    new-instance v1, Lcom/my/target/x;

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/my/target/x;-><init>(Lfq9;Lz2a;Lcom/my/target/t0$a;Lz94$b;Lz94$b;)V

    iput-object v1, p0, Lkd0;->f:Lcom/my/target/b3;

    iget-object p0, p0, Lkd0;->e:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v1, Lcom/my/target/t;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Lcom/my/target/t;->b()V

    iget-object p0, v3, Lz2a;->g:Lz8a;

    invoke-virtual {p0, v7}, Lz8a;->b(I)V

    return-void

    :cond_3
    iget-object p1, p0, Lz94;->h:Lz94$a;

    if-eqz p1, :cond_8

    if-nez p2, :cond_4

    sget-object p2, Ll6a;->u:Ll6a;

    :cond_4
    invoke-interface {p1, p2, p0}, Lz94$a;->g(Ll6a;Lz94;)V

    return-void

    :cond_5
    new-instance p2, Lz94$b;

    invoke-direct {p2, p0}, Lz94$b;-><init>(Lz94;)V

    invoke-static {p0, v0, p1, p2, p2}, Lcom/my/target/r;->r(Lz94;Ljava/util/ArrayList;Lkia;Lz94$b;Lz94$b;)Lcom/my/target/r;

    move-result-object p1

    iput-object p1, p0, Lkd0;->f:Lcom/my/target/b3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Lz94;->h:Lz94$a;

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    :try_start_2
    invoke-interface {p2, p0}, Lz94$a;->d(Lz94;)V

    :cond_6
    iget-object p0, v3, Lz2a;->g:Lz8a;

    invoke-virtual {p0, v7}, Lz8a;->b(I)V

    return-void

    :cond_7
    if-eqz p2, :cond_8

    sget-object p1, Ll6a;->o:Ll6a;

    invoke-interface {p2, p1, p0}, Lz94$a;->g(Ll6a;Lz94;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "InterstitialAd: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
