.class public abstract Lcom/my/target/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/t$b;,
        Lcom/my/target/t$a;
    }
.end annotation


# instance fields
.field public final a:Lz2a;

.field public final b:Lcom/my/target/t0$a;

.field public final c:Lfq9;

.field public d:Ll95;

.field public e:Ljava/lang/ref/WeakReference;

.field public f:Ld9a;

.field public g:Lcom/my/target/t$b;

.field public h:Ljava/lang/String;

.field public i:Lcom/my/target/t0;


# direct methods
.method public constructor <init>(Lfq9;Lz2a;Lcom/my/target/t0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/t;->c:Lfq9;

    iput-object p2, p0, Lcom/my/target/t;->a:Lz2a;

    iput-object p3, p0, Lcom/my/target/t;->b:Lcom/my/target/t0$a;

    return-void
.end method


# virtual methods
.method public final a(Let9;Z)V
    .locals 7

    iget-object v0, p0, Lcom/my/target/t;->g:Lcom/my/target/t$b;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/my/target/t$b;->b:Let9;

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/my/target/t;->e:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    iget-object v2, p0, Lcom/my/target/t;->i:Lcom/my/target/t0;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget v0, v2, Lcom/my/target/t0;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/my/target/t0;->c:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v0, v3, v4}, Lcom/my/target/t0;->a(IJ)V

    iget-object v0, p0, Lcom/my/target/t;->i:Lcom/my/target/t0;

    invoke-virtual {v0}, Lcom/my/target/t0;->b()V

    :cond_2
    iget-object v0, p0, Lcom/my/target/t;->f:Ld9a;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/my/target/t;->g:Lcom/my/target/t$b;

    invoke-virtual {v0, v2}, Ld9a;->e(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/my/target/t;->f:Ld9a;

    invoke-virtual {v0}, Ld9a;->close()V

    iput-object v1, p0, Lcom/my/target/t;->f:Ld9a;

    :cond_3
    iput-object v1, p0, Lcom/my/target/t;->g:Lcom/my/target/t$b;

    if-eqz p2, :cond_4

    iget-object p2, p1, Let9;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/my/target/t;->h:Ljava/lang/String;

    iget-object p0, p1, Let9;->d:Ln4a;

    const/16 p1, 0x3e7

    const-string p2, "networkFilled"

    invoke-static {p0, p2, p1, v1}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/my/target/t;->b()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 12

    iget-object v0, p0, Lcom/my/target/t;->d:Ll95;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ll95;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediationEngine: Error - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/my/target/t;->d:Ll95;

    :cond_0
    iget-object v0, p0, Lcom/my/target/t;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_2

    const-string p0, "MediationEngine: Can\'t configure next ad network, context is null"

    invoke-static {v1, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/my/target/t;->c:Lfq9;

    iget-object v0, v0, Lfq9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move-object v3, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Let9;

    move-object v3, v0

    :goto_2
    if-nez v3, :cond_4

    const-string v0, "MediationEngine: No ad networks available"

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lcom/my/target/x;

    sget-object v0, Ll6a;->u:Ll6a;

    iget-object p0, p0, Lcom/my/target/x;->j:Lz94$b;

    iget-object p0, p0, Lz94$b;->b:Lz94;

    iget-object v1, p0, Lz94;->h:Lz94$a;

    if-eqz v1, :cond_d

    invoke-interface {v1, v0, p0}, Lz94$a;->g(Ll6a;Lz94;)V

    goto/16 :goto_8

    :cond_4
    iget-object v5, v3, Let9;->a:Ljava/lang/String;

    iget-object v6, v3, Let9;->d:Ln4a;

    iget-object v7, v3, Let9;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "MediationEngine: Prepare adapter for "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ad network"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "myTarget"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lph5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_3

    :cond_5
    :try_start_1
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll95;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MediationEngine: Error \u2013 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/my/target/t;->d:Ll95;

    const/16 v8, 0x3e7

    if-eqz v0, :cond_e

    instance-of v0, v0, Lm95;

    if-nez v0, :cond_6

    goto/16 :goto_9

    :cond_6
    const-string v0, "MediationEngine: Adapter created"

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v3, Let9;->i:F

    new-instance v7, Lcom/my/target/t0;

    iget-object v9, p0, Lcom/my/target/t;->b:Lcom/my/target/t0$a;

    iget v10, v9, Lcom/my/target/t0$a;->a:I

    const/4 v11, 0x5

    invoke-direct {v7, v10, v5, v11}, Lcom/my/target/t0;-><init>(ILjava/lang/String;I)V

    iget-boolean v5, v9, Lcom/my/target/t0$a;->b:Z

    iput-boolean v5, v7, Lcom/my/target/t0;->e:Z

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v5, "priority"

    iget-object v9, v7, Lcom/my/target/t0;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v7, p0, Lcom/my/target/t;->i:Lcom/my/target/t0;

    iget-object v0, p0, Lcom/my/target/t;->f:Ld9a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ld9a;->close()V

    :cond_7
    iget v0, v3, Let9;->h:I

    if-lez v0, :cond_8

    new-instance v5, Lcom/my/target/t$b;

    invoke-direct {v5, p0, v3}, Lcom/my/target/t$b;-><init>(Lcom/my/target/t;Let9;)V

    iput-object v5, p0, Lcom/my/target/t;->g:Lcom/my/target/t$b;

    invoke-static {v0}, Ld9a;->a(I)Ld9a;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/t;->f:Ld9a;

    iget-object v5, p0, Lcom/my/target/t;->g:Lcom/my/target/t$b;

    invoke-virtual {v0, v5}, Ld9a;->b(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_8
    iput-object v1, p0, Lcom/my/target/t;->g:Lcom/my/target/t$b;

    :goto_4
    const-string v0, "networkRequested"

    invoke-static {v6, v0, v8, v1}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    iget-object v0, p0, Lcom/my/target/t;->d:Ll95;

    check-cast p0, Lcom/my/target/x;

    check-cast v0, Lm95;

    iget-object v6, v3, Let9;->b:Ljava/lang/String;

    iget-object v7, v3, Let9;->f:Ljava/lang/String;

    new-instance v8, Ljava/util/HashMap;

    iget-object v5, v3, Let9;->e:Ljava/util/HashMap;

    invoke-direct {v8, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v5, p0, Lcom/my/target/t;->a:Lz2a;

    iget-object v9, v5, Lz2a;->a:Lf72;

    const-string v10, "ea"

    invoke-virtual {v9, v10}, Lf72;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_9

    goto :goto_5

    :cond_9
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :goto_5
    const-string v10, "eg"

    invoke-virtual {v9, v10}, Lf72;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :goto_6
    iget-object v9, p0, Lcom/my/target/t;->h:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v11, v1

    goto :goto_7

    :cond_b
    iget-object v9, p0, Lcom/my/target/t;->h:Ljava/lang/String;

    iget-object v5, v5, Lz2a;->b:Ljava/util/Map;

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb8;

    move-object v11, v5

    :goto_7
    new-instance v5, Lcom/my/target/t$a;

    move v9, v4

    invoke-direct/range {v5 .. v11}, Lcom/my/target/t$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;IILb8;)V

    instance-of v4, v0, Lph5;

    if-eqz v4, :cond_c

    iget-object v4, v3, Let9;->g:Lkia;

    if-eqz v4, :cond_c

    move-object v6, v0

    check-cast v6, Lph5;

    iput-object v4, v6, Lph5;->a:Lkia;

    :cond_c
    :try_start_4
    new-instance v4, Lcom/my/target/x$a;

    invoke-direct {v4, p0, v3}, Lcom/my/target/x$a;-><init>(Lcom/my/target/x;Let9;)V

    invoke-interface {v0, v5, v4, v2}, Lm95;->a(Lcom/my/target/t$a;Lcom/my/target/x$a;Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MediationInterstitialAdEngine: Error - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_8
    return-void

    :cond_e
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MediationEngine: Can\'t create adapter, class "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found or invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "networkAdapterInvalid"

    invoke-static {v6, v0, v8, v1}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    invoke-virtual {p0}, Lcom/my/target/t;->b()V

    return-void
.end method
