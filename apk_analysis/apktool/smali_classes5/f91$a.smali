.class public final Lf91$a;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowKt"
    f = "ChannelFlow.kt"
    l = {
        0xdd
    }
    m = "withContextUndispatched"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf91;->a(Lo22;Ljava/lang/Object;Ljava/lang/Object;Lbm3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lf02;"
    }
.end annotation


# instance fields
.field public l:Lo22;

.field public m:Ljava/lang/Object;

.field public n:Lo22;

.field public o:Ljava/lang/Object;

.field public synthetic p:Ljava/lang/Object;

.field public q:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lf91$a;->p:Ljava/lang/Object;

    iget p1, p0, Lf91$a;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lf91$a;->q:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1, p0}, Lf91;->a(Lo22;Ljava/lang/Object;Ljava/lang/Object;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
