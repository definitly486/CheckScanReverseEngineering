.class public final Lly0;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.network.okhttp.internal.CallFactoryNetworkClientKt"
    f = "CallFactoryNetworkClient.kt"
    l = {
        0x27
    }
    m = "readByteString"
    v = 0x1
.end annotation


# instance fields
.field public l:Lbu0;

.field public synthetic m:Ljava/lang/Object;

.field public n:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lly0;->m:Ljava/lang/Object;

    iget p1, p0, Lly0;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lly0;->n:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lny0;->a(Lum5;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
