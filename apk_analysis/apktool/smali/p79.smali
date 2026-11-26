.class public final Lp79;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.account.domain.useCases.UpdateAccountInfoUseCase"
    f = "UpdateAccountInfoUseCase.kt"
    l = {
        0xe
    }
    m = "invoke"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lq79;

.field public n:I


# direct methods
.method public constructor <init>(Lq79;Lf02;)V
    .locals 0

    iput-object p1, p0, Lp79;->m:Lq79;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp79;->l:Ljava/lang/Object;

    iget p1, p0, Lp79;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp79;->n:I

    iget-object p1, p0, Lp79;->m:Lq79;

    invoke-virtual {p1, p0}, Lq79;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
