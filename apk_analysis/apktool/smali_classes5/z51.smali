.class public final Lz51;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.repositories.impl.cashback.CashBackRepositoryImpl"
    f = "CashBackRepositoryImpl.kt"
    l = {
        0xa1
    }
    m = "sendEventFloatingClickV3"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ld61;

.field public n:I


# direct methods
.method public constructor <init>(Ld61;Lf02;)V
    .locals 0

    iput-object p1, p0, Lz51;->m:Ld61;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lz51;->l:Ljava/lang/Object;

    iget p1, p0, Lz51;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz51;->n:I

    iget-object p1, p0, Lz51;->m:Ld61;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Ld61;->j(JLf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
