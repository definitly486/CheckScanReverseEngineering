.class public final synthetic Lgp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lgp0;->b:I

    iput-object p2, p0, Lgp0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lgp0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lgp0;->b:I

    iget-object v1, p0, Lgp0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lgp0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    check-cast v1, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    invoke-static {p0, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->b(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Ljava/lang/Void;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Llp0;

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Llp0;->f:Lhi0;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liq6;

    invoke-virtual {v2}, Liq6;->a()Ler6;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lx68$a;

    invoke-direct {v1, v0}, Lx68$a;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lhi0;->onNext(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
