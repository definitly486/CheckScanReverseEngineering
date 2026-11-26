.class public final Lg86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg86$a;
    }
.end annotation


# instance fields
.field public final b:Landroidx/activity/result/ActivityResultRegistry;

.field public final c:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

.field public final d:Lav6;

.field public final e:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

.field public f:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;Lav6;Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg86;->b:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p2, p0, Lg86;->c:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    iput-object p3, p0, Lg86;->d:Lav6;

    iput-object p4, p0, Lg86;->e:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    new-instance v1, Lvq;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lvq;-><init>(Ljava/lang/Object;I)V

    iget-object v3, p0, Lg86;->b:Landroidx/activity/result/ActivityResultRegistry;

    const-string v4, "PICK_FROM_GALLERY"

    invoke-virtual {v3, v4, p1, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lg86;->f:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lwq;

    invoke-direct {v1, p0, v2}, Lwq;-><init>(Ljava/lang/Object;I)V

    const-string v2, "START_UCROP_FOR_RESULT"

    invoke-virtual {v3, v2, p1, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg86;->g:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method
