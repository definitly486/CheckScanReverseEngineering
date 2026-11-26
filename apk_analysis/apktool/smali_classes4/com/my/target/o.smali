.class public final Lcom/my/target/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/h0$a;


# instance fields
.field public final a:Lcom/my/target/q;

.field public final b:Lcom/my/target/j;

.field public c:Lcom/my/target/l2;

.field public d:Ljava/util/HashMap;

.field public e:Lgv9;

.field public f:Lve1;

.field public final g:Li1a;

.field public final h:Le2a;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/my/target/q;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/o;->a:Lcom/my/target/q;

    iput-object p2, p0, Lcom/my/target/o;->i:Ljava/lang/String;

    new-instance p2, Lcom/my/target/j;

    invoke-direct {p2, p3, p0}, Lcom/my/target/j;-><init>(Landroid/content/Context;Lcom/my/target/o;)V

    iput-object p2, p0, Lcom/my/target/o;->b:Lcom/my/target/j;

    iget-object p2, p1, Lcom/my/target/q;->f:Li1a;

    iput-object p2, p0, Lcom/my/target/o;->g:Li1a;

    iget-object p1, p1, Lcom/my/target/q;->g:Le2a;

    iput-object p1, p0, Lcom/my/target/o;->h:Le2a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/my/target/o;->a:Lcom/my/target/q;

    iget-object v2, v1, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/my/target/o;->d:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/my/target/o;->d:Ljava/util/HashMap;

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v1, v1, Lcom/my/target/q;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/q$a;

    iget-object v3, v2, Lcom/my/target/q$a;->e:Ls95;

    iget-object v4, v3, Ls95;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/my/target/o;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final b()V
    .locals 8

    iget-object v0, p0, Lcom/my/target/o;->a:Lcom/my/target/q;

    iget-object v1, v0, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/my/target/o;->d:Ljava/util/HashMap;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/my/target/o;->d:Ljava/util/HashMap;

    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "complain"

    const-string v4, "hide"

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/q$a;

    iget-object v5, v2, Lcom/my/target/q$a;->e:Ls95;

    iget-object v6, v5, Ls95;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/my/target/o;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v1, Ls95;

    const-string v2, "self::hide_options"

    const-string v5, "\u042d\u0442\u043e \u043d\u0435 \u0438\u043d\u0442\u0435\u0440\u0435\u0441\u043d\u043e"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6, v2, v4}, Ls95;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ls95;

    const-string v2, "\u0416\u0430\u043b\u043e\u0431\u0430"

    const-string v4, "self::complain_options"

    invoke-direct {v1, v2, v6, v4, v3}, Ls95;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    return-void

    :cond_5
    iget-object v4, v0, Lcom/my/target/q;->e:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/my/target/o;->b:Lcom/my/target/j;

    iget-object v3, p0, Lcom/my/target/o;->i:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/my/target/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final c(Ls95;)V
    .locals 11

    iget-object v0, p0, Lcom/my/target/o;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/q$a;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/my/target/q$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v2, Lcom/my/target/m1$a;->a:Lcom/my/target/z2;

    new-instance v6, Ly7a;

    invoke-direct {v6, v2, v1, v3, v4}, Ly7a;-><init>(Lcom/my/target/m1$a;Ljava/lang/String;J)V

    iget-object v1, v5, Lcom/my/target/z2;->e:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p1, p1, Ls95;->b:Ljava/lang/String;

    const-string v1, "self::hide_options"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/my/target/o;->b:Lcom/my/target/j;

    if-eqz v1, :cond_2

    new-instance p1, Lcom/my/target/m5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/my/target/l2;-><init>(Landroid/content/Context;Lcom/my/target/o;)V

    iput-object p1, p0, Lcom/my/target/o;->c:Lcom/my/target/l2;

    const-string p1, "hide"

    invoke-virtual {p0, p1}, Lcom/my/target/o;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/my/target/o;->g:Li1a;

    if-eqz p1, :cond_b

    iget-object v3, p0, Lcom/my/target/o;->c:Lcom/my/target/l2;

    iget-object p0, p1, Li1a;->b:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    iget-object p0, p1, Li1a;->c:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    iget-object p0, p1, Li1a;->d:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    iget-object p0, p1, Li1a;->e:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lcom/my/target/h0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/my/target/j;->dismiss()V

    goto/16 :goto_2

    :cond_2
    const-string v1, "self::complain_options"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iget-object v3, p0, Lcom/my/target/o;->h:Le2a;

    const-string v4, "complain"

    if-eqz v1, :cond_3

    new-instance p1, Lcom/my/target/n3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/my/target/l2;-><init>(Landroid/content/Context;Lcom/my/target/o;)V

    iput-object p1, p0, Lcom/my/target/o;->c:Lcom/my/target/l2;

    invoke-virtual {p0, v4}, Lcom/my/target/o;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    if-eqz v3, :cond_b

    iget-object v5, p0, Lcom/my/target/o;->c:Lcom/my/target/l2;

    iget-object v6, v3, Le2a;->a:Ljava/lang/String;

    iget-object v8, v3, Le2a;->b:Ljava/lang/String;

    iget-object v9, v3, Le2a;->c:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/my/target/h0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/my/target/j;->dismiss()V

    goto/16 :goto_2

    :cond_3
    const-string v1, "copy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/my/target/o;->d:Ljava/util/HashMap;

    if-eqz p1, :cond_6

    if-eqz v1, :cond_b

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, v0, Lcom/my/target/q$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "copied id"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_5
    iget-object p0, p0, Lcom/my/target/o;->f:Lve1;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lve1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/w1;

    invoke-virtual {p0}, Lcom/my/target/w1;->resume()V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_b

    if-nez v0, :cond_7

    :goto_0
    return-void

    :cond_7
    iget-object p1, v0, Lcom/my/target/q$a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, p1, v5, v5, v5}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    :cond_8
    iget-object p1, v0, Lcom/my/target/q$a;->e:Ls95;

    iget-object p1, p1, Ls95;->b:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance v4, Lcom/my/target/lf;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1, p0}, Lcom/my/target/lf;-><init>(Landroid/content/Context;Lcom/my/target/o;)V

    if-eqz v3, :cond_a

    iget-object v5, v3, Le2a;->a:Ljava/lang/String;

    iget-object v6, v3, Le2a;->e:Ljava/lang/String;

    iget-object v7, v3, Le2a;->d:Ljava/lang/String;

    iget-object v8, v3, Le2a;->f:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/my/target/lf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_9
    iget-boolean p1, v0, Lcom/my/target/q$a;->d:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/my/target/o;->e:Lgv9;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lgv9;->b()V

    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/my/target/o;->c:Lcom/my/target/l2;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/my/target/h0;->dismiss()V

    :cond_b
    :goto_2
    invoke-virtual {v2}, Lcom/my/target/j;->dismiss()V

    return-void
.end method
