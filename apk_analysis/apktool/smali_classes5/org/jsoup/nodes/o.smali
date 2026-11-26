.class public final Lorg/jsoup/nodes/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/jsoup/nodes/n;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lorg/jsoup/nodes/n;

.field public c:Lorg/jsoup/nodes/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:Lorg/jsoup/nodes/n;

.field public e:Lorg/jsoup/nodes/n;

.field public f:Lorg/jsoup/nodes/n;

.field public final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/n;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/n;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jsoup/nodes/o;->g:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/jsoup/nodes/o;->c:Lorg/jsoup/nodes/n;

    :cond_0
    iput-object p1, p0, Lorg/jsoup/nodes/o;->d:Lorg/jsoup/nodes/n;

    iput-object p1, p0, Lorg/jsoup/nodes/o;->e:Lorg/jsoup/nodes/n;

    iput-object p1, p0, Lorg/jsoup/nodes/o;->b:Lorg/jsoup/nodes/n;

    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->A()Lorg/jsoup/nodes/h;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/o;->f:Lorg/jsoup/nodes/n;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lorg/jsoup/nodes/o;->c:Lorg/jsoup/nodes/n;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/o;->f:Lorg/jsoup/nodes/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/o;->d:Lorg/jsoup/nodes/n;

    iget-object v0, v0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/nodes/o;->e:Lorg/jsoup/nodes/n;

    iput-object v0, p0, Lorg/jsoup/nodes/o;->d:Lorg/jsoup/nodes/n;

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/jsoup/nodes/o;->d:Lorg/jsoup/nodes/n;

    :cond_3
    invoke-virtual {v0}, Lorg/jsoup/nodes/n;->j()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/jsoup/nodes/n;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/n;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/jsoup/nodes/o;->b:Lorg/jsoup/nodes/n;

    if-ne v1, v0, :cond_5

    move-object v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lorg/jsoup/nodes/n;->A()Lorg/jsoup/nodes/h;

    move-result-object v0

    if-eqz v0, :cond_9

    if-ne v1, v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lorg/jsoup/nodes/o;->g:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v2, v0

    :cond_9
    :goto_2
    iput-object v2, p0, Lorg/jsoup/nodes/o;->c:Lorg/jsoup/nodes/n;

    return-void
.end method

.method public final hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/o;->a()V

    iget-object p0, p0, Lorg/jsoup/nodes/o;->c:Lorg/jsoup/nodes/n;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/jsoup/nodes/o;->a()V

    iget-object v0, p0, Lorg/jsoup/nodes/o;->c:Lorg/jsoup/nodes/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/jsoup/nodes/o;->d:Lorg/jsoup/nodes/n;

    iput-object v2, p0, Lorg/jsoup/nodes/o;->e:Lorg/jsoup/nodes/n;

    iput-object v0, p0, Lorg/jsoup/nodes/o;->d:Lorg/jsoup/nodes/n;

    invoke-virtual {v0}, Lorg/jsoup/nodes/n;->A()Lorg/jsoup/nodes/h;

    move-result-object v2

    iput-object v2, p0, Lorg/jsoup/nodes/o;->f:Lorg/jsoup/nodes/n;

    iput-object v1, p0, Lorg/jsoup/nodes/o;->c:Lorg/jsoup/nodes/n;

    return-object v0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    return-object v1
.end method

.method public final remove()V
    .locals 1

    iget-object p0, p0, Lorg/jsoup/nodes/o;->d:Lorg/jsoup/nodes/n;

    iget-object v0, p0, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/n;->C(Lorg/jsoup/nodes/n;)V

    :cond_0
    return-void
.end method
