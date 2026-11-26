.class public final synthetic Lt67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lu67;

.field public final synthetic b:Lua3;


# direct methods
.method public synthetic constructor <init>(Lu67;Lua3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt67;->a:Lu67;

    iput-object p2, p0, Lt67;->b:Lua3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lt67;->a:Lu67;

    iget-object v0, v0, Lu67;->a:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object p0, p0, Lt67;->b:Lua3;

    invoke-virtual {p0}, Lua3;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/analytics/ParametersBuilder;

    invoke-direct {v2}, Lcom/google/firebase/analytics/ParametersBuilder;-><init>()V

    invoke-virtual {p0}, Lua3;->b()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua3$a;

    invoke-virtual {v4}, Lua3$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lua3$a;->b()Lqd4;

    move-result-object v4

    iget-object v6, v4, Lqd4;->b:Ljava/io/Serializable;

    instance-of v7, v6, Ljava/lang/Number;

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lqd4;->i()D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/google/firebase/analytics/ParametersBuilder;->param(Ljava/lang/String;D)V

    goto :goto_0

    :cond_1
    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lqd4;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v5, v4}, Lcom/google/firebase/analytics/ParametersBuilder;->param(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/firebase/analytics/ParametersBuilder;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "FirebaseRevenue"

    invoke-virtual {p0}, Lua3;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
