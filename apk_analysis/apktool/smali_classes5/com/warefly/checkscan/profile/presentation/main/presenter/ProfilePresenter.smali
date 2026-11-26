.class public final Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcl6$a;
.implements Lfl6$a;
.implements Lnl6$a;
.implements Lxl6$a;
.implements Ljm6$a;
.implements Lsl6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;",
        ">;",
        "Lcl6$a;",
        "Lfl6$a;",
        "Lnl6$a;",
        "Lxl6$a;",
        "Ljm6$a;",
        "Lsl6;"
    }
.end annotation


# static fields
.field private static final AVATAR_FORM_DATA_NAME:Ljava/lang/String; = "file"

.field public static final Companion:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$a;


# instance fields
.field private final contentResolverProvider:Lhy1;

.field private final fetchProfileScreenUseCase:Ls73;

.field private final fetchReferralLinkUseCase:La83;

.field private final logoutInteractor:Llv4;

.field private final preferencesRepository:Ljf6;

.field private final profileRouter:Lsm6;

.field private final screenItems:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Li57<",
            "Ljava/util/List<",
            "Lpz3;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final uploadAvatarUseCase:Lk89;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->Companion:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$a;

    return-void
.end method

.method public constructor <init>(Ls73;Lhy1;Lsm6;Ljf6;Lk89;Llv4;La83;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->fetchProfileScreenUseCase:Ls73;

    iput-object p2, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->contentResolverProvider:Lhy1;

    iput-object p3, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->profileRouter:Lsm6;

    iput-object p4, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->preferencesRepository:Ljf6;

    iput-object p5, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->uploadAvatarUseCase:Lk89;

    iput-object p6, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->logoutInteractor:Llv4;

    iput-object p7, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->fetchReferralLinkUseCase:La83;

    sget-object p1, Li57$b;->a:Li57$b;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->screenItems:Lxg5;

    return-void
.end method

.method public static final synthetic access$getProfileRouter$p(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)Lsm6;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->profileRouter:Lsm6;

    return-object p0
.end method

.method public static final synthetic access$getScreenItems$p(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->screenItems:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$setShareReferralButtonLoading(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->setShareReferralButtonLoading(Z)V

    return-void
.end method

.method private final deleteAccount()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->logoutInteractor:Llv4;

    invoke-interface {v0}, Llv4;->a()Lp08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$b;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    new-instance v2, Lfm6;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lfm6;-><init>(Lgh4;I)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$c;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    new-instance v2, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$d;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$d;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    invoke-static {v1, v0, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final deleteAccount$lambda$5(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->deleteAccount$lambda$5(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$f;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->logout$lambda$4(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final findFileByUri(Ljava/io/InputStream;)Ljava/io/File;
    .locals 4

    const-string p0, "avatar"

    const-string v0, "tmp"

    invoke-static {p0, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private final logout()V
    .locals 3

    new-instance v0, Lkd$a$h$b;

    invoke-direct {v0}, Lkd$a$h$b;-><init>()V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->logoutInteractor:Llv4;

    invoke-interface {v0}, Llv4;->g()Lp08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$f;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$f;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    new-instance v2, Lgm6;

    invoke-direct {v2, v1}, Lgm6;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$f;)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$g;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$g;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    new-instance v2, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$h;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$h;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    invoke-static {v1, v0, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const-string v1, "logOut"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private static final logout$lambda$4(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final setShareReferralButtonLoading(Z)V
    .locals 11

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->screenItems:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li57;

    instance-of v1, v0, Li57$c;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->screenItems:Lxg5;

    :goto_0
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Li57;

    move-object v2, v0

    check-cast v2, Li57$c;

    iget-object v2, v2, Li57$c;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpz3;

    instance-of v5, v4, Lpl6;

    if-eqz v5, :cond_1

    check-cast v4, Lpl6;

    iget-object v6, v4, Lpl6;->a:Ljava/lang/String;

    iget-object v7, v4, Lpl6;->b:Ljava/lang/String;

    iget-object v8, v4, Lpl6;->c:Ljava/lang/String;

    iget-object v9, v4, Lpl6;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lpl6;

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lpl6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v5

    goto :goto_2

    :cond_1
    move v10, p1

    :goto_2
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move p1, v10

    goto :goto_1

    :cond_2
    move v10, p1

    new-instance p1, Li57$c;

    invoke-direct {p1, v3}, Li57$c;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1, p1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_3
    return-void

    :cond_3
    move p1, v10

    goto :goto_0
.end method

.method private final uploadUserAvatar(Ljava/io/File;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->uploadAvatarUseCase:Lk89;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lj89;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lj89;-><init>(Lk89;Ljava/io/File;Le02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$k;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$k;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method


# virtual methods
.method public final fetchProfileScreen()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->fetchProfileScreenUseCase:Ls73;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lr73;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lr73;-><init>(Ls73;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$e;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$e;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final handleDeleteResult(Z)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;->dismissDeleteWarningDialog()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->deleteAccount()V

    :cond_1
    return-void
.end method

.method public final handleLogOutResult(Z)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;->dismissLogoutWarningDialog()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->logout()V

    :cond_1
    return-void
.end method

.method public onActivatePromocodeClick(Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;->showPromocodeEnterBottomSheet(Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;)V

    :cond_0
    return-void
.end method

.method public onAddEmailClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->profileRouter:Lsm6;

    invoke-interface {p0}, Lsm6;->a()V

    return-void
.end method

.method public onCopyClick(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkd$l0$a;->e:Lkd$l0$a;

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;->copyInviteCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDeleteAccountClicked()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;->showWarningDeleteAccount()V

    :cond_0
    return-void
.end method

.method public onEditPersonalDataClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->profileRouter:Lsm6;

    invoke-interface {p0}, Lsm6;->onEditPersonalDataClicked()V

    return-void
.end method

.method public onElectroChequeClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->profileRouter:Lsm6;

    invoke-interface {p0}, Lsm6;->onElectroChequeClick()V

    return-void
.end method

.method public onExpiredSubscriptionClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFaqClick()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->N()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;->showFaqPage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFavouriteClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->profileRouter:Lsm6;

    invoke-interface {p0}, Lsm6;->onFavouriteClick()V

    return-void
.end method

.method public onFeedbackClick()V
    .locals 1

    new-instance v0, Lkd$a$h$d;

    invoke-direct {v0}, Lkd$a$h$d;-><init>()V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->profileRouter:Lsm6;

    invoke-interface {p0}, Lsm6;->onFeedbackClick()V

    return-void
.end method

.method public onFillMyDataClick(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->screenItems:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$i;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onHistoryShopClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->profileRouter:Lsm6;

    invoke-interface {p0}, Lsm6;->onHistoryShopClick()V

    return-void
.end method

.method public onLogoutClicked()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;->showWarningLogoutDialog()V

    :cond_0
    return-void
.end method

.method public onPhotoClicked()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;->requestGallery()V

    :cond_0
    return-void
.end method

.method public onPrivatePolicyClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShareCode()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->fetchReferralLinkUseCase:La83;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lz73;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lz73;-><init>(La83;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$j;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$j;-><init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final updateAvatar(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->contentResolverProvider:Lhy1;

    invoke-interface {v0}, Lhy1;->a()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->findFileByUri(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->uploadUserAvatar(Ljava/io/File;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    :try_start_2
    invoke-static {p1, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p1, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :goto_2
    return-void
.end method
