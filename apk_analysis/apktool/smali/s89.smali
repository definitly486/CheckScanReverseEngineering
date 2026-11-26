.class public final Ls89;
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
            "Landroid/content/Context;",
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

.field public final c:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Lf13;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lpe7;

.field public final e:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Leh8;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Lvl1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lws6;Lws6;Lws6;Lpe7;Lws6;Lws6;Lws6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls89;->a:Lws6;

    iput-object p2, p0, Ls89;->b:Lws6;

    iput-object p3, p0, Ls89;->c:Lws6;

    iput-object p4, p0, Ls89;->d:Lpe7;

    iput-object p5, p0, Ls89;->e:Lws6;

    iput-object p6, p0, Ls89;->f:Lws6;

    iput-object p7, p0, Ls89;->g:Lws6;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Ls89;->a:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Ls89;->b:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le00;

    iget-object v0, p0, Ls89;->c:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lf13;

    iget-object v0, p0, Ls89;->d:Lpe7;

    invoke-virtual {v0}, Lpe7;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lpk9;

    iget-object v0, p0, Ls89;->e:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ls89;->f:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Leh8;

    new-instance v8, Lvp2;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lc84;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Ls89;->g:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lvl1;

    new-instance v1, Lr89;

    invoke-direct/range {v1 .. v10}, Lr89;-><init>(Landroid/content/Context;Le00;Lf13;Lpk9;Ljava/util/concurrent/Executor;Leh8;Lhm1;Lhm1;Lvl1;)V

    return-object v1
.end method
