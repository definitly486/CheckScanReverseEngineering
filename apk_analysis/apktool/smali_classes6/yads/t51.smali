.class public final Lyads/t51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/s51;


# instance fields
.field public a:Lyads/l51;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/t51;->b:Z

    return-void
.end method


# virtual methods
.method public final i()Lyads/l51;
    .locals 0

    iget-object p0, p0, Lyads/t51;->a:Lyads/l51;

    return-object p0
.end method

.method public final setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lyads/t51;->a:Lyads/l51;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lyads/l51;

    iget-object v1, p1, Lyads/tt;->a:Lyads/vq0;

    invoke-direct {v0, v1, p3}, Lyads/l51;-><init>(Lyads/vq0;Landroid/view/View;)V

    iput-object v0, p0, Lyads/t51;->a:Lyads/l51;

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object p1, p1, Lyads/tt;->b:Lyads/fs2;

    iget-object v2, v0, Lyads/l51;->c:Lyads/f51;

    if-nez p2, :cond_1

    if-nez v2, :cond_1

    goto/16 :goto_20

    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p2, Lyads/f51;->a:Lyads/as2;

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    if-eqz v2, :cond_3

    iget-object v4, v2, Lyads/f51;->a:Lyads/as2;

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    invoke-static {v3, v4}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz p2, :cond_4

    iget-object v3, p2, Lyads/f51;->b:Lyads/p91;

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    if-eqz v2, :cond_5

    iget-object v4, v2, Lyads/f51;->b:Lyads/p91;

    goto :goto_3

    :cond_5
    move-object v4, v1

    :goto_3
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    goto :goto_c

    :cond_6
    if-eqz v3, :cond_7

    iget-object v5, v3, Lyads/p91;->c:Lyads/as2;

    goto :goto_4

    :cond_7
    move-object v5, v1

    :goto_4
    if-eqz v4, :cond_8

    iget-object v6, v4, Lyads/p91;->c:Lyads/as2;

    goto :goto_5

    :cond_8
    move-object v6, v1

    :goto_5
    invoke-static {v5, v6}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-eqz v3, :cond_9

    iget-object v5, v3, Lyads/p91;->d:Lyads/as2;

    goto :goto_6

    :cond_9
    move-object v5, v1

    :goto_6
    if-eqz v4, :cond_a

    iget-object v6, v4, Lyads/p91;->d:Lyads/as2;

    goto :goto_7

    :cond_a
    move-object v6, v1

    :goto_7
    invoke-static {v5, v6}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-eqz v3, :cond_b

    iget-object v5, v3, Lyads/p91;->b:Lyads/as2;

    goto :goto_8

    :cond_b
    move-object v5, v1

    :goto_8
    if-eqz v4, :cond_c

    iget-object v6, v4, Lyads/p91;->b:Lyads/as2;

    goto :goto_9

    :cond_c
    move-object v6, v1

    :goto_9
    invoke-static {v5, v6}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-eqz v3, :cond_d

    iget-object v3, v3, Lyads/p91;->a:Lyads/as2;

    goto :goto_a

    :cond_d
    move-object v3, v1

    :goto_a
    if-eqz v4, :cond_e

    iget-object v4, v4, Lyads/p91;->a:Lyads/as2;

    goto :goto_b

    :cond_e
    move-object v4, v1

    :goto_b
    invoke-static {v3, v4}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v3

    if-eqz v3, :cond_23

    :goto_c
    if-eqz p2, :cond_f

    iget-object v3, p2, Lyads/f51;->c:Lyads/as2;

    goto :goto_d

    :cond_f
    move-object v3, v1

    :goto_d
    if-eqz v2, :cond_10

    iget-object v4, v2, Lyads/f51;->c:Lyads/as2;

    goto :goto_e

    :cond_10
    move-object v4, v1

    :goto_e
    invoke-static {v3, v4}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz p2, :cond_11

    iget-object v3, p2, Lyads/f51;->d:Lyads/xz1;

    goto :goto_f

    :cond_11
    move-object v3, v1

    :goto_f
    if-eqz v2, :cond_12

    iget-object v4, v2, Lyads/f51;->d:Lyads/xz1;

    goto :goto_10

    :cond_12
    move-object v4, v1

    :goto_10
    if-nez v3, :cond_13

    if-nez v4, :cond_13

    goto/16 :goto_1d

    :cond_13
    if-eqz v3, :cond_14

    iget-object v5, v3, Lyads/xz1;->a:Lyads/as2;

    goto :goto_11

    :cond_14
    move-object v5, v1

    :goto_11
    if-eqz v4, :cond_15

    iget-object v6, v4, Lyads/xz1;->a:Lyads/as2;

    goto :goto_12

    :cond_15
    move-object v6, v1

    :goto_12
    invoke-static {v5, v6}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-eqz v3, :cond_16

    iget-object v5, v3, Lyads/xz1;->b:Lyads/as2;

    goto :goto_13

    :cond_16
    move-object v5, v1

    :goto_13
    if-eqz v4, :cond_17

    iget-object v6, v4, Lyads/xz1;->b:Lyads/as2;

    goto :goto_14

    :cond_17
    move-object v6, v1

    :goto_14
    invoke-static {v5, v6}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-eqz v3, :cond_18

    iget-object v5, v3, Lyads/xz1;->c:Lyads/as2;

    goto :goto_15

    :cond_18
    move-object v5, v1

    :goto_15
    if-eqz v4, :cond_19

    iget-object v6, v4, Lyads/xz1;->c:Lyads/as2;

    goto :goto_16

    :cond_19
    move-object v6, v1

    :goto_16
    invoke-static {v5, v6}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-eqz v3, :cond_1a

    iget-object v3, v3, Lyads/xz1;->d:Lyads/nv1;

    goto :goto_17

    :cond_1a
    move-object v3, v1

    :goto_17
    if-eqz v4, :cond_1b

    iget-object v4, v4, Lyads/xz1;->d:Lyads/nv1;

    goto :goto_18

    :cond_1b
    move-object v4, v1

    :goto_18
    if-nez v3, :cond_1c

    if-nez v4, :cond_1c

    goto :goto_1d

    :cond_1c
    if-eqz v3, :cond_1d

    iget-object v5, v3, Lyads/nv1;->a:Lyads/ac1;

    goto :goto_19

    :cond_1d
    move-object v5, v1

    :goto_19
    if-eqz v4, :cond_1e

    iget-object v6, v4, Lyads/nv1;->a:Lyads/ac1;

    goto :goto_1a

    :cond_1e
    move-object v6, v1

    :goto_1a
    invoke-static {v5, v6}, Lyads/gb1;->a(Lyads/ac1;Lyads/ac1;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-eqz v3, :cond_1f

    iget-object v3, v3, Lyads/nv1;->b:Lyads/ac1;

    goto :goto_1b

    :cond_1f
    move-object v3, v1

    :goto_1b
    if-eqz v4, :cond_20

    iget-object v4, v4, Lyads/nv1;->b:Lyads/ac1;

    goto :goto_1c

    :cond_20
    move-object v4, v1

    :goto_1c
    invoke-static {v3, v4}, Lyads/gb1;->a(Lyads/ac1;Lyads/ac1;)Z

    move-result v3

    if-eqz v3, :cond_23

    :goto_1d
    if-eqz p2, :cond_21

    iget-object v3, p2, Lyads/f51;->e:Lyads/l42;

    goto :goto_1e

    :cond_21
    move-object v3, v1

    :goto_1e
    if-eqz v2, :cond_22

    iget-object v2, v2, Lyads/f51;->e:Lyads/l42;

    goto :goto_1f

    :cond_22
    move-object v2, v1

    :goto_1f
    invoke-static {v3, v2}, Lyads/gb1;->a(Lyads/l42;Lyads/l42;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_20

    :cond_23
    invoke-interface {v0}, Lyads/hs2;->b()V

    iput-object p2, v0, Lyads/l51;->c:Lyads/f51;

    invoke-virtual {v0, p2, p1}, Lyads/l51;->a(Lyads/f51;Lyads/fs2;)V

    invoke-virtual {v0, p2, p1}, Lyads/l51;->b(Lyads/f51;Lyads/fs2;)V

    :cond_24
    :goto_20
    iget-object p1, p0, Lyads/t51;->a:Lyads/l51;

    if-nez p1, :cond_25

    goto :goto_21

    :cond_25
    iget-boolean v0, p0, Lyads/t51;->b:Z

    iget-boolean v2, p1, Lyads/l51;->n:Z

    if-ne v2, v0, :cond_26

    goto :goto_21

    :cond_26
    iput-boolean v0, p1, Lyads/l51;->n:Z

    invoke-virtual {p1}, Lyads/l51;->e()V

    iget-object p1, p1, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_21
    if-nez p2, :cond_27

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/view/View;->setElevation(F)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/view/View;->setClipToOutline(Z)V

    sget-object p1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p3, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-interface {p0}, Lyads/s51;->d()V

    iput-object v1, p0, Lyads/t51;->a:Lyads/l51;

    :cond_27
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setNeedClipping(Z)V
    .locals 2

    iget-object v0, p0, Lyads/t51;->a:Lyads/l51;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lyads/l51;->n:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, v0, Lyads/l51;->n:Z

    invoke-virtual {v0}, Lyads/l51;->e()V

    iget-object v0, v0, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_0
    iput-boolean p1, p0, Lyads/t51;->b:Z

    return-void
.end method
