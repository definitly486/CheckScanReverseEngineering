.class public final Lzz7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls08;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzz7;->a(Ls08;)V
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
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lzz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzz7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls08;Lzz7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls08<",
            "TT;>;",
            "Lzz7<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzz7$a;->a:Ls08;

    iput-object p2, p0, Lzz7$a;->b:Lzz7;

    return-void
.end method


# virtual methods
.method public final a(Ldp2;)V
    .locals 0

    iget-object p0, p0, Lzz7$a;->a:Ls08;

    invoke-interface {p0, p1}, Ls08;->a(Ldp2;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lzz7$a;->a:Ls08;

    invoke-interface {p0, p1}, Ls08;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lzz7$a;->b:Lzz7;

    :try_start_0
    iget-object v0, v0, Lzz7;->b:Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    nop

    instance-of v1, v0, Lk57$a;

    iget-object p0, p0, Lzz7$a;->a:Ls08;

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lj59;

    invoke-interface {p0, p1}, Ls08;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Ls08;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
