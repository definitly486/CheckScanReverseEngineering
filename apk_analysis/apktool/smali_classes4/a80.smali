.class public final synthetic La80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, La80;->b:I

    iput-object p1, p0, La80;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, La80;->b:I

    iget-object p0, p0, La80;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lr07;

    invoke-static {p0}, Lyads/qi1;->a(Lr07;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/tapjoy/TapjoyConnectCore;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->b()V

    return-void

    :pswitch_1
    check-cast p0, Li80;

    iget-object v0, p0, Li80;->c:Li80$a;

    iget-object v1, v0, Li80$a;->v:Ln80;

    sget-object v2, Li80$b;->e:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const v0, 0x7f01000e

    goto :goto_0

    :cond_1
    iget-object v0, v0, Li80$a;->k:Lzr;

    sget-object v1, Li80$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    const v0, 0x7f01001a

    goto :goto_0

    :cond_2
    invoke-static {}, Lme0;->e()V

    goto :goto_2

    :cond_3
    const v0, 0x7f01001b

    goto :goto_0

    :cond_4
    const v0, 0x7f010019

    goto :goto_0

    :cond_5
    const v0, 0x7f01001c

    goto :goto_0

    :cond_6
    iget-object v0, v0, Li80$a;->k:Lzr;

    sget-object v1, Li80$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    const v0, 0x7f010013

    goto :goto_0

    :cond_7
    invoke-static {}, Lme0;->e()V

    goto :goto_2

    :cond_8
    const v0, 0x7f010014

    goto :goto_0

    :cond_9
    const v0, 0x7f010011

    goto :goto_0

    :cond_a
    const v0, 0x7f010015

    :goto_0
    iget-object v1, p0, Li80;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_b

    iget-object p0, p0, Li80;->d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    iget-object p0, p0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloon:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_b
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
