.class public final Lsg6$a;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.channels.ProduceKt"
    f = "Produce.kt"
    l = {
        0x169
    }
    m = "awaitClose"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg6;->a(Lug6;Lll3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public l:Lug6;

.field public m:Lll3;

.field public synthetic n:Ljava/lang/Object;

.field public o:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lsg6$a;->n:Ljava/lang/Object;

    iget p1, p0, Lsg6$a;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lsg6$a;->o:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lsg6;->a(Lug6;Lll3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
