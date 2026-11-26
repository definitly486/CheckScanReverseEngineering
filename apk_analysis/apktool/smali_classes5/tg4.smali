.class public final Ltg4;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "retrofit2.KotlinExtensions"
    f = "KotlinExtensions.kt"
    l = {
        0x77
    }
    m = "suspendAndThrow"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public m:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ltg4;->l:Ljava/lang/Object;

    iget p1, p0, Ltg4;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltg4;->m:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lqg4;->c(Ljava/lang/Throwable;Le02;)La32;

    move-result-object p0

    return-object p0
.end method
