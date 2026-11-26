.class public final Lw69;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# instance fields
.field public final a:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw69;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 2

    sget-object p1, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;->k:Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;

    invoke-direct {p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;-><init>()V

    new-instance v0, Lb36;

    const-string v1, "UNIVERSAL_WEB_VIEW_FLOW_ARGS_KEY"

    iget-object p0, p0, Lw69;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

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

    const-class p0, Lw69;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lw69;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lw69;

    iget-object p0, p0, Lw69;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    iget-object p1, p1, Lw69;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lw69;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebPageFlow(args="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lw69;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
