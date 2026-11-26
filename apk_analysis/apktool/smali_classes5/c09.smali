.class public final Lc09;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.repositories.impl.balance.TransferRepositoryImpl"
    f = "TransferRepositoryImpl.kt"
    l = {
        0x12
    }
    m = "getTransferSBPInfo"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ld09;

.field public n:I


# direct methods
.method public constructor <init>(Ld09;Lf02;)V
    .locals 0

    iput-object p1, p0, Lc09;->m:Ld09;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc09;->l:Ljava/lang/Object;

    iget p1, p0, Lc09;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc09;->n:I

    iget-object p1, p0, Lc09;->m:Ld09;

    invoke-virtual {p1, p0}, Ld09;->e(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
