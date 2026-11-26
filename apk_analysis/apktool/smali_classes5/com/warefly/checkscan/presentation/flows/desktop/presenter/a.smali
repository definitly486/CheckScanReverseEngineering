.class public final Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

.field public final b:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

.field public final c:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;

.field public final d:Lz68;

.field public final e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lri8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->a:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->b:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->c:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->a(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)Lri8;

    move-result-object p1

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d:Lz68;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    sget-object p2, Lri8;->Bonuses:Lri8;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->e:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final a(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)Lri8;
    .locals 1

    instance-of v0, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Bonuses;

    if-eqz v0, :cond_0

    sget-object p0, Lri8;->Bonuses:Lri8;

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;

    if-eqz v0, :cond_1

    sget-object p0, Lri8;->Discount:Lri8;

    return-object p0

    :cond_1
    sget-object v0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Cheques;->c:Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Cheques;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lri8;->Cheques:Lri8;

    return-object p0

    :cond_2
    instance-of v0, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;

    if-eqz v0, :cond_3

    sget-object p0, Lri8;->Balance:Lri8;

    return-object p0

    :cond_3
    instance-of v0, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Tasks;

    if-eqz v0, :cond_4

    sget-object p0, Lri8;->Tasks:Lri8;

    return-object p0

    :cond_4
    sget-object v0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$ProductsDeeplink;->c:Lcom/warefly/checkscan/presentation/Deeplink$Desktop$ProductsDeeplink;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lri8;->Discount:Lri8;

    return-object p0

    :cond_5
    instance-of p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Games;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->c:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lri8;->Games:Lri8;

    return-object p0

    :cond_6
    sget-object p0, Lri8;->Bonuses:Lri8;

    return-object p0

    :cond_7
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lri8;)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d:Lz68;

    invoke-virtual {v0, p1}, Lz68;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->b:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationTab(Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->c(Lri8;)V

    sget-object p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_6

    const/4 p1, 0x3

    if-eq p0, p1, :cond_5

    const/4 p1, 0x4

    if-eq p0, p1, :cond_4

    const/4 p1, 0x5

    if-eq p0, p1, :cond_3

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lkd$q0$a$a;

    const-string p1, "Games"

    invoke-direct {p0, p1}, Lkd$q0$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->c()V

    return-void

    :cond_3
    new-instance p0, Lkd$a$c$a;

    const-string p1, "CB_CLICKED"

    const-string v0, "CashBack"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Account"

    invoke-direct {p0, v0, p1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lkd;->a()V

    sget-object p0, Lkd$s$a$a;->e:Lkd$s$a$a;

    invoke-virtual {p0}, Lkd;->a()V

    return-void

    :cond_4
    new-instance p0, Lkd$q0$a$c$a;

    const-string p1, "Discounts"

    const-string v0, "Search"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lkd$q0$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->a()V

    return-void

    :cond_5
    sget-object p0, Lkd$r0;->e:Lkd$r0;

    invoke-virtual {p0}, Lkd;->a()V

    return-void

    :cond_6
    new-instance p0, Lkd$q0$a$b;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lkd$q0$a$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

.method public final c(Lri8;)V
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->b:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationSelectedIcon(Lri8;)V

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setGamesToolbar()V

    return-void

    :pswitch_1
    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationSelectedIcon(Lri8;)V

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->showToolbar(Z)V

    return-void

    :pswitch_2
    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationSelectedIcon(Lri8;)V

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setDiscountToolbar()V

    return-void

    :pswitch_3
    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationSelectedIcon(Lri8;)V

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBonusesToolbar()V

    return-void

    :pswitch_4
    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationSelectedIcon(Lri8;)V

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setTasksToolbar()V

    return-void

    :pswitch_5
    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationSelectedIcon(Lri8;)V

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setChequesToolbar()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lri8;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->e:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->c:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->b:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    invoke-interface {v2, v1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationTabs(Z)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lri8;->Discount:Lri8;

    goto :goto_0

    :cond_0
    sget-object v0, Lri8;->Games:Lri8;

    :goto_0
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->e:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d:Lz68;

    invoke-virtual {v3}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1

    sget-object v0, Lri8;->Bonuses:Lri8;

    invoke-virtual {v3, v0}, Lz68;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationTab(Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->c(Lri8;)V

    :cond_1
    return-void
.end method
