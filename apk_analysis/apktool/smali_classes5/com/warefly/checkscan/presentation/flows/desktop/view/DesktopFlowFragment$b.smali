.class public final Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$b;->f:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    const v0, 0x7f0600b6

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$b;->f:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
