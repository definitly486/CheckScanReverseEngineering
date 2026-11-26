.class public final Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/profile/presenter/ProfileView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/profile/presenter/ProfileView;"
    }
.end annotation


# static fields
.field public static final j:Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment$a;

.field public static final synthetic k:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public presenter:Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment;->k:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment;->j:Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final providePresenter()Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v4, 0x0

    const-string v5, "PROFILE_REASON_KEY"

    if-lt v2, v3, :cond_0

    const-class v2, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v2, v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    if-nez v2, :cond_1

    move-object v1, v4

    :cond_1
    check-cast v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    :goto_0
    check-cast v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    if-eqz v1, :cond_2

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Ljf6;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v3, Liw2;

    invoke-static {v3, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liw2;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;-><init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;Ljf6;Liw2;)V

    return-object v0

    :cond_2
    const-string p0, "Profile reason can not be null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4
.end method
