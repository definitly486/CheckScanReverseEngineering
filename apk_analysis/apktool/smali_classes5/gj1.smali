.class public final synthetic Lgj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgj1;->b:Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->j:[Lze4;

    iget-object p0, p0, Lgj1;->b:Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lle9;->b(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
