.class public final Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$l;->a:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$l;->a:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->setScrollState(Z)V

    return p2

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->setScrollState(Z)V

    return p2
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public final onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
