.class public final Lyads/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/b4;


# instance fields
.field public final synthetic a:Lyads/r6;


# direct methods
.method public constructor <init>(Lyads/r6;)V
    .locals 0

    iput-object p1, p0, Lyads/q6;->a:Lyads/r6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lyads/q6;->a:Lyads/r6;

    invoke-virtual {p0}, Lyads/r6;->b()V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lyads/q6;->a:Lyads/r6;

    iget v1, v0, Lyads/r6;->m:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v3, v0, Lyads/r6;->d:Lyads/n6;

    iget v3, v3, Lyads/n6;->c:I

    if-ne v1, v3, :cond_0

    iget-boolean v3, v0, Lyads/r6;->n:Z

    if-nez v3, :cond_0

    iput-boolean v2, v0, Lyads/r6;->n:Z

    iget-object v0, v0, Lyads/r6;->b:Lyads/a3;

    invoke-interface {v0}, Lyads/a3;->b()V

    :cond_0
    iget-object v0, p0, Lyads/q6;->a:Lyads/r6;

    iget-object v0, v0, Lyads/r6;->k:Ljava/util/List;

    invoke-static {v1, v0}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/u6;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lyads/u6;->c:Lyads/w6;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lyads/w6;->c:Lyads/w6;

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lyads/u6;->b:Lyads/v6;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object p0, p0, Lyads/q6;->a:Lyads/r6;

    invoke-virtual {p0}, Lyads/r6;->b()V

    return-void
.end method
