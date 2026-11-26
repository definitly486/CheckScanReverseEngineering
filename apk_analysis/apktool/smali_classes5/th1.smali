.class public final synthetic Lth1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lth1;->b:Landroid/view/View;

    iput-object p2, p0, Lth1;->c:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->q:[Lze4;

    const v0, 0x7f0a0313

    iget-object v1, p0, Lth1;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lth1;->c:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->sendMiniBannerWatched()V

    :cond_1
    return-void
.end method
