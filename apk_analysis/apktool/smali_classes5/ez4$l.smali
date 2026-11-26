.class public final Lez4$l;
.super Lio/grpc/l$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation


# instance fields
.field public final a:Lez4$k;

.field public final b:Lio/grpc/l;

.field public final synthetic c:Lez4;


# direct methods
.method public constructor <init>(Lez4;Lez4$k;Lnj3;)V
    .locals 0

    iput-object p1, p0, Lez4$l;->c:Lez4;

    invoke-direct {p0}, Lio/grpc/l$d;-><init>()V

    iput-object p2, p0, Lez4$l;->a:Lez4$k;

    const-string p1, "resolver"

    invoke-static {p3, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lez4$l;->b:Lio/grpc/l;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/l$e;)Lh88;
    .locals 11

    sget-object v0, Lio/grpc/g;->a:Lio/grpc/a$b;

    iget-object v1, p0, Lez4$l;->c:Lez4;

    iget-object v1, v1, Lez4;->n:Lch8;

    invoke-virtual {v1}, Lch8;->d()V

    iget-object v1, p0, Lez4$l;->c:Lez4;

    iget-object v1, v1, Lez4;->w:Lnj3;

    iget-object v2, p0, Lez4$l;->b:Lio/grpc/l;

    if-eq v1, v2, :cond_0

    sget-object p0, Lh88;->e:Lh88;

    return-object p0

    :cond_0
    iget-object v1, p1, Lio/grpc/l$e;->a:Ln88;

    invoke-virtual {v1}, Ln88;->a()Z

    move-result v2

    iget-object v3, v1, Ln88;->a:Lh88;

    if-nez v2, :cond_3

    if-nez v3, :cond_1

    sget-object v3, Lh88;->e:Lh88;

    :cond_1
    invoke-virtual {p0, v3}, Lez4$l;->b(Lh88;)V

    iget-object p0, v1, Ln88;->a:Lh88;

    if-nez p0, :cond_2

    sget-object p0, Lh88;->e:Lh88;

    :cond_2
    return-object p0

    :cond_3
    const-string v2, "No value present."

    const/4 v4, 0x0

    if-nez v3, :cond_15

    iget-object v3, v1, Ln88;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v5, p0, Lez4$l;->c:Lez4;

    iget-object v5, v5, Lez4;->M:Lo91;

    sget-object v6, Ln91$a;->DEBUG:Ln91$a;

    iget-object v7, p1, Lio/grpc/l$e;->b:Lio/grpc/a;

    filled-new-array {v3, v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Resolved address: {0}, config={1}"

    invoke-virtual {v5, v6, v8, v7}, Lo91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lez4$l;->c:Lez4;

    iget-object v7, v5, Lez4;->P:Lez4$n;

    sget-object v8, Lez4$n;->SUCCESS:Lez4$n;

    if-eq v7, v8, :cond_4

    iget-object v5, v5, Lez4;->M:Lo91;

    sget-object v7, Ln91$a;->INFO:Ln91$a;

    const-string v9, "Address resolved: {0}"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v7, v9, v3}, Lo91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lez4$l;->c:Lez4;

    iput-object v8, v3, Lez4;->P:Lez4$n;

    :cond_4
    iget-object v3, p1, Lio/grpc/l$e;->c:Lio/grpc/l$b;

    iget-object v5, p1, Lio/grpc/l$e;->b:Lio/grpc/a;

    iget-object v5, v5, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/g;

    if-eqz v3, :cond_5

    iget-object v7, v3, Lio/grpc/l$b;->b:Ljava/lang/Object;

    if-eqz v7, :cond_5

    check-cast v7, Lmz4;

    goto :goto_0

    :cond_5
    move-object v7, v4

    :goto_0
    if-eqz v3, :cond_6

    iget-object v8, v3, Lio/grpc/l$b;->a:Lh88;

    goto :goto_1

    :cond_6
    move-object v8, v4

    :goto_1
    iget-object v9, p0, Lez4$l;->c:Lez4;

    iget-boolean v10, v9, Lez4;->S:Z

    if-nez v10, :cond_9

    if-eqz v7, :cond_7

    iget-object v3, v9, Lez4;->M:Lo91;

    sget-object v6, Ln91$a;->INFO:Ln91$a;

    const-string v7, "Service config from name resolver discarded by channel settings"

    invoke-virtual {v3, v6, v7}, Lo91;->a(Ln91$a;Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lez4$l;->c:Lez4;

    sget-object v6, Lez4;->f0:Lmz4;

    if-eqz v5, :cond_8

    iget-object v3, v3, Lez4;->M:Lo91;

    sget-object v5, Ln91$a;->INFO:Ln91$a;

    const-string v7, "Config selector from name resolver discarded by channel settings"

    invoke-virtual {v3, v5, v7}, Lo91;->a(Ln91$a;Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lez4$l;->c:Lez4;

    iget-object v3, v3, Lez4;->O:Lez4$m;

    invoke-virtual {v6}, Lmz4;->b()Lmz4$b;

    move-result-object v5

    invoke-virtual {v3, v5}, Lez4$m;->h(Lio/grpc/g;)V

    goto/16 :goto_5

    :cond_9
    const/4 v10, 0x1

    if-eqz v7, :cond_b

    iget-object v3, v9, Lez4;->O:Lez4$m;

    if-eqz v5, :cond_a

    invoke-virtual {v3, v5}, Lez4$m;->h(Lio/grpc/g;)V

    invoke-virtual {v7}, Lmz4;->b()Lmz4$b;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lez4$l;->c:Lez4;

    iget-object v3, v3, Lez4;->M:Lo91;

    const-string v5, "Method configs in service config will be discarded due to presence ofconfig-selector"

    invoke-virtual {v3, v6, v5}, Lo91;->a(Ln91$a;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-virtual {v7}, Lmz4;->b()Lmz4$b;

    move-result-object v5

    invoke-virtual {v3, v5}, Lez4$m;->h(Lio/grpc/g;)V

    goto :goto_2

    :cond_b
    if-eqz v8, :cond_d

    iget-boolean v5, v9, Lez4;->R:Z

    if-nez v5, :cond_c

    iget-object p1, v9, Lez4;->M:Lo91;

    sget-object v0, Ln91$a;->INFO:Ln91$a;

    const-string v1, "Fallback to error due to invalid first service config without default config"

    invoke-virtual {p1, v0, v1}, Lo91;->a(Ln91$a;Ljava/lang/String;)V

    iget-object p1, v3, Lio/grpc/l$b;->a:Lh88;

    invoke-virtual {p1}, Lh88;->f()Z

    move-result v0

    xor-int/2addr v0, v10

    const-string v1, "the error status must not be OK"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    iget-object v0, p0, Lez4$l;->c:Lez4;

    iget-object v0, v0, Lez4;->n:Lch8;

    new-instance v1, Lez4$l$1a;

    invoke-direct {v1, p0, p1}, Lez4$l$1a;-><init>(Lez4$l;Lh88;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v3, Lio/grpc/l$b;->a:Lh88;

    return-object p0

    :cond_c
    iget-object v7, v9, Lez4;->Q:Lmz4;

    goto :goto_2

    :cond_d
    sget-object v7, Lez4;->f0:Lmz4;

    iget-object v3, v9, Lez4;->O:Lez4$m;

    invoke-virtual {v3, v4}, Lez4$m;->h(Lio/grpc/g;)V

    :cond_e
    :goto_2
    iget-object v3, p0, Lez4$l;->c:Lez4;

    iget-object v3, v3, Lez4;->Q:Lmz4;

    invoke-virtual {v7, v3}, Lmz4;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lez4$l;->c:Lez4;

    iget-object v3, v3, Lez4;->M:Lo91;

    sget-object v5, Ln91$a;->INFO:Ln91$a;

    sget-object v6, Lez4;->f0:Lmz4;

    if-ne v7, v6, :cond_f

    const-string v6, " to empty"

    goto :goto_3

    :cond_f
    const-string v6, ""

    :goto_3
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "Service config changed{0}"

    invoke-virtual {v3, v5, v8, v6}, Lo91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lez4$l;->c:Lez4;

    iput-object v7, v3, Lez4;->Q:Lmz4;

    iget-object v3, v3, Lez4;->Z:Lez4$e;

    iget-object v5, v7, Lmz4;->d:Lk67$y;

    iput-object v5, v3, Lez4$e;->a:Lk67$y;

    :cond_10
    :try_start_0
    iget-object v3, p0, Lez4$l;->c:Lez4;

    iput-boolean v10, v3, Lez4;->R:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    sget-object v5, Lez4;->c0:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lez4$l;->c:Lez4;

    iget-object v9, v9, Lez4;->a:Lm94;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "] Unexpected exception from parsing service config"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    move-object v6, v7

    :goto_5
    iget-object p1, p1, Lio/grpc/l$e;->b:Lio/grpc/a;

    iget-object v3, p0, Lez4$l;->a:Lez4$k;

    iget-object v5, p0, Lez4$l;->c:Lez4;

    iget-object v5, v5, Lez4;->y:Lez4$k;

    if-ne v3, v5, :cond_14

    new-instance v3, Lio/grpc/a$a;

    invoke-direct {v3, p1}, Lio/grpc/a$a;-><init>(Lio/grpc/a;)V

    iget-object p1, p1, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Lio/grpc/a$a;->b(I)Ljava/util/IdentityHashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget-object p1, v6, Lmz4;->f:Ljava/util/Map;

    if-eqz p1, :cond_12

    sget-object v0, Lio/grpc/h;->a:Lio/grpc/a$b;

    invoke-virtual {v3, v0, p1}, Lio/grpc/a$a;->c(Lio/grpc/a$b;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lio/grpc/a$a;->a()Lio/grpc/a;

    :cond_12
    invoke-virtual {v3}, Lio/grpc/a$a;->a()Lio/grpc/a;

    move-result-object p1

    sget-object v0, Lio/grpc/a;->b:Lio/grpc/a;

    iget-object v0, v1, Ln88;->a:Lh88;

    if-nez v0, :cond_13

    iget-object v0, v1, Ln88;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, v6, Lmz4;->e:Ljava/lang/Object;

    iget-object p0, p0, Lez4$l;->a:Lez4$k;

    iget-object p0, p0, Lez4$k;->a:Lgy$a;

    new-instance v2, Lio/grpc/h$i;

    invoke-direct {v2, v0, p1, v1}, Lio/grpc/h$i;-><init>(Ljava/util/List;Lio/grpc/a;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lgy$a;->a(Lio/grpc/h$i;)Lh88;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-static {v2}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_14
    sget-object p0, Lh88;->e:Lh88;

    return-object p0

    :cond_15
    invoke-static {v2}, Lah;->f(Ljava/lang/String;)V

    return-object v4
.end method

.method public final b(Lh88;)V
    .locals 6

    sget-object v0, Lez4;->c0:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v2, p0, Lez4$l;->c:Lez4;

    iget-object v3, v2, Lez4;->a:Lm94;

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "[{0}] Failed to resolve name. status={1}"

    invoke-virtual {v0, v1, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lez4;->O:Lez4$m;

    iget-object v1, v0, Lez4$m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lez4;->g0:Lez4$a;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lez4$m;->h(Lio/grpc/g;)V

    :cond_0
    iget-object v0, v2, Lez4;->P:Lez4$n;

    sget-object v1, Lez4$n;->ERROR:Lez4$n;

    if-eq v0, v1, :cond_1

    iget-object v0, v2, Lez4;->M:Lo91;

    sget-object v3, Ln91$a;->WARNING:Ln91$a;

    const-string v4, "Failed to resolve name: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lo91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, v2, Lez4;->P:Lez4$n;

    :cond_1
    iget-object v0, v2, Lez4;->y:Lez4$k;

    iget-object p0, p0, Lez4$l;->a:Lez4$k;

    if-eq p0, v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lez4$k;->a:Lgy$a;

    invoke-virtual {p0, p1}, Lgy$a;->b(Lh88;)V

    return-void
.end method
