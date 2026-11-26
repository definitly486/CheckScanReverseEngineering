.class public final Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lcom/warefly/checkscan/presentation/flows/desktop/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment$a;->f:Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment$a;->f:Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/desktop/view/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p0}, Lzp;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;)V

    return-object v1
.end method
