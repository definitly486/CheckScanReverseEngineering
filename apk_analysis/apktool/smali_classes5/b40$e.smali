.class public final Lb40$e;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor"
    f = "BalanceInteractor.kt"
    l = {
        0x9b,
        0x9e,
        0xa4,
        0xab
    }
    m = "fetchBalanceBlocks"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb40;->c(ZZLe02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public l:Z

.field public m:Z

.field public n:Ljava/util/Collection;

.field public o:Ljava/lang/Object;

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lb40;

.field public r:I


# direct methods
.method public constructor <init>(Lb40;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb40;",
            "Le02<",
            "-",
            "Lb40$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lb40$e;->q:Lb40;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lb40$e;->p:Ljava/lang/Object;

    iget p1, p0, Lb40$e;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lb40$e;->r:I

    iget-object p1, p0, Lb40$e;->q:Lb40;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lb40;->c(ZZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
