.class public final Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lll3<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowFragment$a;->b:Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowFragment$a;->b:Lcom/warefly/checkscan/presentation/flows/verification/view/VerificationFlowFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Fragment "

    const-string v1, " has null arguments"

    invoke-static {p0, v0, v1}, Lc9;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
