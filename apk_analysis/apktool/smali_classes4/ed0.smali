.class public final synthetic Led0;
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

    iput p2, p0, Led0;->b:I

    iput-object p1, p0, Led0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Led0;->b:I

    iget-object p0, p0, Led0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/tracker/obfuscated/q2;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/q2;->a()V

    return-void

    :pswitch_0
    check-cast p0, Lyads/o25;

    invoke-static {p0}, Lyads/o25;->c(Lyads/o25;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/os/HandlerThread;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->c(Landroid/os/HandlerThread;)V

    return-void

    :pswitch_2
    check-cast p0, Lpn5;

    iget-object p0, p0, Lpn5;->d:Lzt0;

    invoke-virtual {p0}, Lzt0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_3
    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->loadMoreCategories()V

    return-void

    :pswitch_4
    check-cast p0, Lcom/my/tracker/campaign/CampaignService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :pswitch_5
    check-cast p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;

    sget v0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->i:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
