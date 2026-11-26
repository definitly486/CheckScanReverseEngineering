.class public final Lqi2;
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
            "Le00;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lpe7;

.field public final d:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Lf13;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Leh8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lws6;Lws6;Lpe7;Lws6;Lws6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqi2;->a:Lws6;

    iput-object p2, p0, Lqi2;->b:Lws6;

    iput-object p3, p0, Lqi2;->c:Lpe7;

    iput-object p4, p0, Lqi2;->d:Lws6;

    iput-object p5, p0, Lqi2;->e:Lws6;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lqi2;->a:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lqi2;->b:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le00;

    iget-object v0, p0, Lqi2;->c:Lpe7;

    invoke-virtual {v0}, Lpe7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lpk9;

    iget-object v0, p0, Lqi2;->d:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lf13;

    iget-object p0, p0, Lqi2;->e:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Leh8;

    new-instance v1, Lpi2;

    invoke-direct/range {v1 .. v6}, Lpi2;-><init>(Ljava/util/concurrent/Executor;Le00;Lpk9;Lf13;Leh8;)V

    return-object v1
.end method
