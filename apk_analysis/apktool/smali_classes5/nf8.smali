.class public final Lnf8;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.support.data.repositoriesImpl.SupportRepositoryImpl"
    f = "SupportRepositoryImpl.kt"
    l = {
        0x17
    }
    m = "getForm"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lpf8;

.field public n:I


# direct methods
.method public constructor <init>(Lpf8;Lf02;)V
    .locals 0

    iput-object p1, p0, Lnf8;->m:Lpf8;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lnf8;->l:Ljava/lang/Object;

    iget p1, p0, Lnf8;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lnf8;->n:I

    iget-object p1, p0, Lnf8;->m:Lpf8;

    invoke-virtual {p1, p0}, Lpf8;->d(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
