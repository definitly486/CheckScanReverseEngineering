.class public final Lrs;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.compose.AsyncImagePreviewHandler$Companion$Default$1"
    f = "LocalAsyncImagePreviewHandler.kt"
    l = {
        0x26
    }
    m = "handle"
    v = 0x1
.end annotation


# instance fields
.field public l:Lb24;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lss$a;

.field public o:I


# direct methods
.method public constructor <init>(Lss$a;Lf02;)V
    .locals 0

    iput-object p1, p0, Lrs;->n:Lss$a;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lrs;->m:Ljava/lang/Object;

    iget p1, p0, Lrs;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lrs;->o:I

    iget-object p1, p0, Lrs;->n:Lss$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lss$a;->a(Lr14;Lb24;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
