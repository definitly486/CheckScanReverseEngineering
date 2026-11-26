.class public final Lt94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh88;

.field public final synthetic c:Lp94;


# direct methods
.method public constructor <init>(Lp94;Lh88;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt94;->c:Lp94;

    iput-object p2, p0, Lt94;->b:Lh88;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lt94;->c:Lp94;

    iget-object v0, v0, Lp94;->y:Ldx1;

    iget-object v0, v0, Ldx1;->a:Lcx1;

    sget-object v1, Lcx1;->SHUTDOWN:Lcx1;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt94;->c:Lp94;

    iget-object v2, p0, Lt94;->b:Lh88;

    iput-object v2, v0, Lp94;->z:Lh88;

    iget-object v0, v0, Lp94;->x:Lp94$c;

    iget-object v2, p0, Lt94;->c:Lp94;

    iget-object v3, v2, Lp94;->w:Lp94$c;

    const/4 v4, 0x0

    iput-object v4, v2, Lp94;->x:Lp94$c;

    iget-object v2, p0, Lt94;->c:Lp94;

    iput-object v4, v2, Lp94;->w:Lp94$c;

    invoke-virtual {v2, v1}, Lp94;->f(Lcx1;)V

    iget-object v1, p0, Lt94;->c:Lp94;

    iget-object v1, v1, Lp94;->n:Lp94$e;

    invoke-virtual {v1}, Lp94$e;->b()V

    iget-object v1, p0, Lt94;->c:Lp94;

    iget-object v1, v1, Lp94;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt94;->c:Lp94;

    iget-object v2, v1, Lp94;->m:Lch8;

    new-instance v5, Lu94;

    invoke-direct {v5, v1}, Lu94;-><init>(Lp94;)V

    invoke-virtual {v2, v5}, Lch8;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v1, p0, Lt94;->c:Lp94;

    iget-object v2, v1, Lp94;->m:Lch8;

    invoke-virtual {v2}, Lch8;->d()V

    iget-object v2, v1, Lp94;->r:Lch8$c;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lch8$c;->a()V

    iput-object v4, v1, Lp94;->r:Lch8$c;

    iput-object v4, v1, Lp94;->p:Lw33;

    :cond_2
    iget-object v1, p0, Lt94;->c:Lp94;

    iget-object v1, v1, Lp94;->s:Lch8$c;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lch8$c;->a()V

    iget-object v1, p0, Lt94;->c:Lp94;

    iget-object v1, v1, Lp94;->t:Lnz4;

    iget-object v2, p0, Lt94;->b:Lh88;

    invoke-interface {v1, v2}, Lnz4;->e(Lh88;)V

    iget-object v1, p0, Lt94;->c:Lp94;

    iput-object v4, v1, Lp94;->s:Lch8$c;

    iput-object v4, v1, Lp94;->t:Lnz4;

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lt94;->b:Lh88;

    invoke-virtual {v0, v1}, Ldj3;->e(Lh88;)V

    :cond_4
    if-eqz v3, :cond_5

    iget-object p0, p0, Lt94;->b:Lh88;

    invoke-virtual {v3, p0}, Ldj3;->e(Lh88;)V

    :cond_5
    :goto_0
    return-void
.end method
