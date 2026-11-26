.class public final Lk67$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "r"
.end annotation


# instance fields
.field public final b:Lk67$q;

.field public final synthetic c:Lk67;


# direct methods
.method public constructor <init>(Lk67;Lk67$q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$r;->c:Lk67;

    iput-object p2, p0, Lk67$r;->b:Lk67$q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk67$r;->c:Lk67;

    iget-object v1, v0, Lk67;->p:Lk67$v;

    iget v1, v1, Lk67$v;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lk67;->n(IZZ)Lk67$x;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lk67$r;->c:Lk67;

    iget-object v1, v1, Lk67;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lk67$r$a;

    invoke-direct {v2, p0, v0}, Lk67$r$a;-><init>(Lk67$r;Lk67$x;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
