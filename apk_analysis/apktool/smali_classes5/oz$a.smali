.class public final Loz$a;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.AwaitKt"
    f = "Await.kt"
    l = {
        0x3a
    }
    m = "joinAll"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loz;->b(Ljava/util/Collection;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public l:Ljava/util/Iterator;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public o:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Loz$a;->n:Ljava/lang/Object;

    iget p1, p0, Loz$a;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Loz$a;->o:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Loz;->b(Ljava/util/Collection;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
