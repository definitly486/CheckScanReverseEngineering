.class public final Lmy0;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.network.okhttp.internal.CallFactoryNetworkClientKt"
    f = "CallFactoryNetworkClient.kt"
    l = {
        0x20
    }
    m = "toRequest"
    v = 0x1
.end annotation


# instance fields
.field public l:Ltm5;

.field public m:Lb37$a;

.field public n:Lb37$a;

.field public o:Ljava/lang/String;

.field public synthetic p:Ljava/lang/Object;

.field public q:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmy0;->p:Ljava/lang/Object;

    iget p1, p0, Lmy0;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmy0;->q:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lny0;->c(Ltm5;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
