.class public final synthetic Lx7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/target/m1$a;

.field public final synthetic c:Ls5a;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:J

.field public final synthetic f:Li7a;

.field public final synthetic g:Lcom/my/target/m1$b;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/m1$a;Ls5a;Ljava/util/Map;JLi7a;Lcom/my/target/m1$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7a;->b:Lcom/my/target/m1$a;

    iput-object p2, p0, Lx7a;->c:Ls5a;

    iput-object p3, p0, Lx7a;->d:Ljava/util/Map;

    iput-wide p4, p0, Lx7a;->e:J

    iput-object p6, p0, Lx7a;->f:Li7a;

    iput-object p7, p0, Lx7a;->g:Lcom/my/target/m1$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lx7a;->f:Li7a;

    iget-object v1, v0, Li7a;->b:Lpp9;

    iget-object v7, p0, Lx7a;->c:Ls5a;

    iget-object v2, v7, Ls5a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2a;

    iget-object v11, v2, Lm2a;->a:Ljava/lang/String;

    iget-object v3, v2, Lm2a;->b:Ljava/lang/String;

    const-string v4, "statType="

    const-string v5, ", needDecode="

    invoke-static {v4, v11, v5}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lm2a;->e:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", statUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v5, v2, Lk8a;

    const/4 v6, 0x0

    const-string v9, ", url - "

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Lk8a;

    iget v5, v5, Lk8a;->f:F

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "StatResolver: Tracking progress stat value - "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lm2a;->b:Ljava/lang/String;

    invoke-static {v10, v5, v6}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v5, v2, Lht9;

    if-eqz v5, :cond_1

    move-object v5, v2

    check-cast v5, Lht9;

    iget v10, v5, Lo2a;->f:I

    iget v12, v5, Lht9;->i:F

    iget-boolean v5, v5, Lht9;->h:Z

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "StatResolver: Tracking ovv stat percent - "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", value - "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", ovv - "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lm2a;->b:Ljava/lang/String;

    invoke-static {v13, v5, v6}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v5, v2, Lsna;

    if-eqz v5, :cond_2

    move-object v5, v2

    check-cast v5, Lsna;

    iget v10, v5, Lo2a;->f:I

    iget v5, v5, Lsna;->h:F

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "StatResolver: Tracking mrc stat percent - , percent - "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", duration - "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lm2a;->b:Ljava/lang/String;

    invoke-static {v12, v5, v6}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "StatResolver: Tracking stat type - "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v5, v7, Ls5a;->a:Lik0;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v9, p0, Lx7a;->d:Ljava/util/Map;

    if-eqz v9, :cond_3

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_3
    iget-boolean v9, v2, Lm2a;->e:Z

    if-eqz v9, :cond_4

    invoke-static {v3}, Ly14;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    move-object v9, v3

    :goto_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    if-eqz v5, :cond_5

    iget-object v12, v2, Lm2a;->c:Ljava/lang/String;

    iget-object v5, v5, Lik0;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_5

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_5
    sget-object v5, Lcom/my/target/m1$a;->c:Ljava/util/regex/Pattern;

    const/4 v12, 0x0

    if-eqz v5, :cond_6

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    goto :goto_3

    :cond_6
    move v5, v12

    :goto_3
    if-eqz v5, :cond_7

    sget-object v5, Lcom/my/target/m1$a;->b:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    move v5, v12

    :goto_4
    sget-object v13, Lcom/my/target/m1$a;->d:Ljava/util/regex/Pattern;

    if-eqz v13, :cond_8

    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    :cond_8
    iget-wide v13, p0, Lx7a;->e:J

    if-nez v5, :cond_9

    if-eqz v12, :cond_a

    :cond_9
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v9, "client_timestamp"

    invoke-virtual {v10, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-boolean v5, v2, Lm2a;->e:Z

    invoke-static {v3, v6, v5}, Lcom/my/target/m1;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_c

    const-string v2, "url is null for "

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Li7a;->c:I

    const/16 v5, 0x2328

    if-eqz v1, :cond_b

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v9, v0, Li7a;->a:Lz8a;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v10, v2

    move v11, v3

    move v13, v5

    invoke-virtual/range {v9 .. v14}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lx7a;->g:Lcom/my/target/m1$b;

    if-eqz v3, :cond_d

    iget-boolean v2, v2, Lm2a;->d:Z

    if-eqz v2, :cond_d

    invoke-interface {v3}, Lcom/my/target/m1$b;->a()V

    :cond_d
    iget-object v2, p0, Lx7a;->b:Lcom/my/target/m1$a;

    iget-object v9, v2, Lcom/my/target/m1$a;->a:Lcom/my/target/z2;

    move-wide v12, v13

    new-instance v14, Li7a;

    iget-object v2, v0, Li7a;->a:Lz8a;

    iget v3, v0, Li7a;->c:I

    invoke-direct {v14, v2, v1, v3, v4}, Li7a;-><init>(Lz8a;Lpp9;ILjava/lang/String;)V

    invoke-virtual/range {v9 .. v14}, Lcom/my/target/z2;->a(Ljava/lang/String;Ljava/lang/String;JLi7a;)V

    goto/16 :goto_0

    :cond_e
    return-void
.end method
