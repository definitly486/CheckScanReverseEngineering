.class public final synthetic Lvd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lxl3;
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;
.implements Landroidx/arch/core/util/Function;
.implements Lyads/gd5;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lvd0;->b:I

    iput-object p1, p0, Lvd0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvd0;->c:Ljava/lang/Object;

    check-cast p0, Lyads/ks3;

    invoke-static {p0}, Lyads/ks3;->b(Lyads/ks3;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lvd0;->b:I

    iget-object p0, p0, Lvd0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lzh;

    invoke-static {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProvider$Companion;->b(Lzh;Ljava/lang/Object;)Landroidx/camera/lifecycle/LifecycleCameraProvider;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lo42;

    invoke-virtual {p0, p1}, Lo42;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm32;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lvd0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    check-cast p1, Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->d(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    iget-object p0, p0, Lvd0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    sget-object v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->s:[Lze4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->o:I

    invoke-static {}, Lri8;->values()[Lri8;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->r(Lri8;)I

    move-result v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->onTabClicked(Lri8;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "Array contains no element matching the predicate."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    return v2
.end method
