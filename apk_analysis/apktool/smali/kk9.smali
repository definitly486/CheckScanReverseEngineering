.class public final Lkk9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lws6;"
    }
.end annotation


# instance fields
.field public final a:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Lf13;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lpe7;

.field public final d:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Leh8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lws6;Lws6;Lpe7;Lws6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkk9;->a:Lws6;

    iput-object p2, p0, Lkk9;->b:Lws6;

    iput-object p3, p0, Lkk9;->c:Lpe7;

    iput-object p4, p0, Lkk9;->d:Lws6;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkk9;->a:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lkk9;->b:Lws6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf13;

    iget-object v2, p0, Lkk9;->c:Lpe7;

    invoke-virtual {v2}, Lpe7;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpk9;

    iget-object p0, p0, Lkk9;->d:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh8;

    new-instance v3, Ljk9;

    invoke-direct {v3, v0, v1, v2, p0}, Ljk9;-><init>(Ljava/util/concurrent/Executor;Lf13;Lpk9;Leh8;)V

    return-object v3
.end method
