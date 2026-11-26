.class public final Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lcom/warefly/checkscan/core/ui/base/architecture/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
            "TVB;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment$a;->f:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment$a;->f:Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/core/ui/base/architecture/a;

    invoke-direct {v2, p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/a;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;)V

    return-object v2
.end method
