.class public final Lob9;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.network.internal.UtilsKt"
    f = "utils.kt"
    l = {
        0x17
    }
    m = "readBuffer"
    v = 0x1
.end annotation


# instance fields
.field public l:Lb58;

.field public m:Lbu0;

.field public synthetic n:Ljava/lang/Object;

.field public o:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lob9;->n:Ljava/lang/Object;

    iget p1, p0, Lob9;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lob9;->o:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lqb9;->a(Lb58;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
