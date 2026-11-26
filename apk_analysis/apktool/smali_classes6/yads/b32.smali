.class public final Lyads/b32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/i36;


# instance fields
.field public final synthetic a:Lyads/k32;

.field public final synthetic b:Lyads/z22;

.field public final synthetic c:Lyads/n32;

.field public final synthetic d:Lyads/tt;


# direct methods
.method public constructor <init>(Lyads/k32;Lyads/z22;Lyads/n32;Lyads/tt;)V
    .locals 0

    iput-object p1, p0, Lyads/b32;->a:Lyads/k32;

    iput-object p2, p0, Lyads/b32;->b:Lyads/z22;

    iput-object p3, p0, Lyads/b32;->c:Lyads/n32;

    iput-object p4, p0, Lyads/b32;->d:Lyads/tt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lyads/b32;->a:Lyads/k32;

    invoke-virtual {v0}, Lyads/k32;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyads/b32;->a:Lyads/k32;

    invoke-virtual {v0}, Lyads/k32;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lyads/b32;->b:Lyads/z22;

    iget-object v0, v0, Lyads/z22;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lyads/y22;

    iget-object v2, v2, Lyads/y22;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lyads/y22;

    iget-object v0, p0, Lyads/b32;->c:Lyads/n32;

    iget-object v2, p0, Lyads/b32;->b:Lyads/z22;

    iget-object v3, v2, Lyads/z22;->p:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v2, Lyads/z22;->x:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    invoke-virtual {v0, v3, v1, p1}, Lyads/n32;->a(Ljava/lang/String;Lyads/y22;Ljava/lang/String;)Lyads/n32;

    move-result-object p1

    iget-object p0, p0, Lyads/b32;->d:Lyads/tt;

    iget-object p0, p0, Lyads/tt;->a:Lyads/vq0;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lyads/vq0;->a(Lyads/n32;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lnl3;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lyads/b32;->a:Lyads/k32;

    invoke-virtual {p0, p1}, Lyads/k32;->setVariableUpdater(Lnl3;)V

    return-void
.end method
