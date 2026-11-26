.class public final Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;->f:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->o:[Lze4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;->f:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->m:Landroidx/activity/result/ActivityResultLauncher;

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
