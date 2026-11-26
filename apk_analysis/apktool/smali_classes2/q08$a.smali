.class public final Lq08$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls08;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq08;->a(Ls08;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls08<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls08<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lq08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq08<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls08;Lq08;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls08<",
            "TR;>;",
            "Lq08<",
            "TT;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq08$a;->a:Ls08;

    iput-object p2, p0, Lq08$a;->b:Lq08;

    return-void
.end method


# virtual methods
.method public final a(Ldp2;)V
    .locals 0

    iget-object p0, p0, Lq08$a;->a:Ls08;

    invoke-interface {p0, p1}, Ls08;->a(Ldp2;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lq08$a;->a:Ls08;

    invoke-interface {p0, p1}, Ls08;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lq08$a;->b:Lq08;

    :try_start_0
    iget-object v0, v0, Lq08;->b:Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    nop

    instance-of v0, p1, Lk57$a;

    iget-object p0, p0, Lq08$a;->a:Ls08;

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ls08;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Ls08;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
