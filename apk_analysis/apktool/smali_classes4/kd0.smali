.class public abstract Lkd0;
.super Lzc0;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public f:Lcom/my/target/b3;

.field public g:Lcom/my/target/t0;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lzc0;-><init>(ILandroid/content/Context;)V

    iput-object p2, p0, Lkd0;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a(Lkia;Lj8a;)V
.end method

.method public final b()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lzc0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    iget-object v3, v0, Lzc0;->a:Lz2a;

    const/4 v9, 0x0

    if-nez v1, :cond_0

    const-string v1, "BaseInterstitialAd: Interstitial/Rewarded doesn\'t support multiple load"

    invoke-static {v9, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lz2a;->g:Lz8a;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    sget-object v1, Ll6a;->t:Ll6a;

    new-instance v2, Lj8a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lj8a;->a:Ll6a;

    invoke-virtual {v0, v9, v2}, Lkd0;->a(Lkia;Lj8a;)V

    return-void

    :cond_0
    iget v1, v3, Lz2a;->e:I

    sget-object v16, Ll4a;->a:Ll5a;

    new-instance v10, Lz8a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v12, 0x0

    const/4 v15, 0x0

    iget-object v11, v0, Lzc0;->d:Ljava/lang/String;

    const/4 v14, 0x3

    invoke-direct/range {v10 .. v16}, Lz8a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILj5a;)V

    iput-object v10, v3, Lz2a;->g:Lz8a;

    iput v2, v10, Lz8a;->g:I

    invoke-virtual {v10, v2}, Lz8a;->b(I)V

    new-instance v1, Lcom/my/target/t0;

    iget-object v4, v0, Lzc0;->b:Lcom/my/target/t0$a;

    iget v5, v4, Lcom/my/target/t0$a;->a:I

    const-string v6, "myTarget"

    invoke-direct {v1, v5, v6, v2}, Lcom/my/target/t0;-><init>(ILjava/lang/String;I)V

    iget-boolean v2, v4, Lcom/my/target/t0$a;->b:Z

    iput-boolean v2, v1, Lcom/my/target/t0;->e:Z

    new-instance v2, Lcom/my/target/u;

    invoke-direct {v2, v3, v4, v9}, Lcom/my/target/u;-><init>(Lz2a;Lcom/my/target/t0$a;Lkia;)V

    new-instance v3, Lu20;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lu20;-><init>(Ljava/lang/Object;I)V

    iput-object v3, v2, Lcom/my/target/b1;->c:Lcom/my/target/b1$a;

    iget-object v0, v0, Lkd0;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lrh5;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lrh5;->a(Landroid/content/Context;)V

    :cond_1
    new-instance v0, Lnr1;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2, v1}, Lnr1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lw4a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lkd0;->f:Lcom/my/target/b3;

    if-nez v0, :cond_0

    const-string p0, "Base interstitial ad show - no ad"

    invoke-static {p0}, Ly14;->t(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lkd0;->e:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/my/target/b3;->a(Landroid/content/Context;)V

    return-void
.end method
