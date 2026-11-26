.class public final synthetic Llh;
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

    iput p2, p0, Llh;->b:I

    iput-object p1, p0, Llh;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Llh;->b:I

    iget-object p0, p0, Llh;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/o25;

    invoke-static {p0}, Lyads/o25;->a(Lyads/o25;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/tracker/obfuscated/m2;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/m2;->c()V

    return-void

    :pswitch_1
    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->d(Ljava/util/ArrayList;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;

    iget-object v0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->h:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->getCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    invoke-interface {v1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->getCount()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->a(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->getCount()I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->getCount()I

    move-result v1

    sub-int/2addr v2, v1

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->f()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->e()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->e:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Lie9;->b(Landroid/view/View;I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->h:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->d()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->c()Lcom/warefly/checkscan/ui/dotindicator/a;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->c(Lgw5;)V

    invoke-interface {v0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lgw5;->b(FI)V

    :cond_3
    return-void

    :pswitch_3
    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource;

    invoke-static {p0}, Landroidx/camera/video/internal/audio/AudioSource;->l(Landroidx/camera/video/internal/audio/AudioSource;)V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->b(Landroidx/compose/ui/platform/AndroidComposeView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
