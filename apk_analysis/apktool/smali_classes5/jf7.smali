.class public final Ljf7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lfi7;

.field public final c:J


# direct methods
.method public constructor <init>(JLfi7;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Ljf7;->a:Ljava/lang/String;

    iput-object p3, p0, Ljf7;->b:Lfi7;

    iput-wide p1, p0, Ljf7;->c:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 4

    sget-object p1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->h:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Ljf7;->b:Lfi7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ljf7;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;

    invoke-direct {v1}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;-><init>()V

    iget-wide v2, p0, Ljf7;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v2, Lb36;

    const-string v3, "CHEQUE_REQUEST_ID_KEY"

    invoke-direct {v2, v3, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lb36;

    const-string v3, "SPECIFY_REASON_KEY"

    invoke-direct {p0, v3, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lb36;

    const-string v3, "WAITING_QUEUE_RECEIPT_QR_KEY"

    invoke-direct {p1, v3, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, p0, p1}, [Lb36;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-class p0, Ljf7;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
