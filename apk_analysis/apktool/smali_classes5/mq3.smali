.class public final Lmq3;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.gift.repositories.GiftRepositoryImpl"
    f = "GiftRepositoryImpl.kt"
    l = {
        0xa
    }
    m = "getGiftInfo"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lnq3;

.field public n:I


# direct methods
.method public constructor <init>(Lnq3;Lf02;)V
    .locals 0

    iput-object p1, p0, Lmq3;->m:Lnq3;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmq3;->l:Ljava/lang/Object;

    iget p1, p0, Lmq3;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmq3;->n:I

    iget-object p1, p0, Lmq3;->m:Lnq3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lnq3;->a(ILf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
