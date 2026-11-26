.class public final Ljy0;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.network.okhttp.internal.CallFactoryNetworkClient"
    f = "CallFactoryNetworkClient.kt"
    l = {
        0x18,
        0x18,
        0x19
    }
    m = "executeRequest-impl"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf02;"
    }
.end annotation


# instance fields
.field public l:Ljava/lang/Object;

.field public m:Lokhttp3/OkHttpClient;

.field public synthetic n:Ljava/lang/Object;

.field public o:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ljy0;->n:Ljava/lang/Object;

    iget p1, p0, Ljy0;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ljy0;->o:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lky0;->b(Lokhttp3/OkHttpClient;Ltm5;Lbm3;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
