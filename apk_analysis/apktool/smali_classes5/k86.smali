.class public final Lk86;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.scanner.presentation.crop.PickGalleryPictureToCropBehavior$resolvePictureToCrop$2"
    f = "PickGalleryPictureToCropBehavior.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Lid3<",
        "-",
        "Landroid/net/Uri;",
        ">;",
        "Ljava/lang/Throwable;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic l:Lg86;


# direct methods
.method public constructor <init>(Lg86;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg86;",
            "Le02<",
            "-",
            "Lk86;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk86;->l:Lg86;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Le02;

    new-instance p1, Lk86;

    iget-object p0, p0, Lk86;->l:Lg86;

    invoke-direct {p1, p0, p3}, Lk86;-><init>(Lg86;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lk86;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lk86;->l:Lg86;

    iget-object p0, p0, Lg86;->e:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    invoke-interface {p0}, Lg86$a;->onCropError()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
