.class public final Lez4$m$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lez4$m;->f(Lra5;Lio/grpc/b;)Lrl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lez4$m$e;

.field public final synthetic c:Lez4$m;


# direct methods
.method public constructor <init>(Lez4$m;Lez4$m$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez4$m$d;->c:Lez4$m;

    iput-object p2, p0, Lez4$m$d;->b:Lez4$m$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lez4$m$d;->c:Lez4$m;

    iget-object v1, v0, Lez4$m;->d:Lez4;

    iget-object v0, v0, Lez4$m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lez4;->g0:Lez4$a;

    iget-object p0, p0, Lez4$m$d;->b:Lez4$m$e;

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lez4;->B:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, v1, Lez4;->B:Ljava/util/LinkedHashSet;

    iget-object v0, v1, Lez4;->Y:Lez4$i;

    iget-object v2, v1, Lez4;->C:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lu1;->o(Ljava/lang/Object;Z)V

    :cond_0
    iget-object v0, v1, Lez4;->B:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lez4$m$e;->j()V

    return-void
.end method
