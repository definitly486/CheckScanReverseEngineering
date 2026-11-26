.class public final Lk08;
.super Llz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llz7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Llz7;-><init>()V

    iput-object p1, p0, Lk08;->a:Lll3;

    return-void
.end method


# virtual methods
.method public final a(Ls08;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls08<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Ldz7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ls08;->a(Ldp2;)V

    iget-boolean v1, v0, Ldz7;->a:Z

    if-nez v1, :cond_1

    :try_start_0
    iget-object p0, p0, Lk08;->a:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Lk57$a;

    invoke-direct {v1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :goto_0
    nop

    instance-of v1, p0, Lk57$a;

    if-nez v1, :cond_0

    iget-boolean v1, v0, Ldz7;->a:Z

    if-nez v1, :cond_0

    invoke-interface {p1, p0}, Ls08;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean v0, v0, Ldz7;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Ls08;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
