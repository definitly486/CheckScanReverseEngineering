.class public final Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ldf3;


# direct methods
.method public constructor <init>(Ldf3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$b;->b:Ldf3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$b$a;

    invoke-direct {v0, p1}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$b$a;-><init>(Lid3;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$b;->b:Ldf3;

    invoke-virtual {p0, v0, p2}, Ldf3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
