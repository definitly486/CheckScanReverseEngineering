.class public final Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lx43;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$c;->f:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lx43;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$c;->f:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lx43;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
