.class public final Lqh7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh7;->a:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 2

    sget-object p1, Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment;->j:Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lqh7;->a:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment;

    invoke-direct {p1}, Lcom/warefly/checkscan/presentation/profile/view/ProfileFlowFragment;-><init>()V

    new-instance v0, Lb36;

    const-string v1, "PROFILE_REASON_KEY"

    invoke-direct {v0, v1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0}, [Lb36;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-class p0, Lqh7;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lqh7;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lqh7;

    iget-object p0, p0, Lqh7;->a:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    iget-object p1, p1, Lqh7;->a:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lqh7;->a:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Profile(reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lqh7;->a:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
