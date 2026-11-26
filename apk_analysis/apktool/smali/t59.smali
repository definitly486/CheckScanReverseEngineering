.class public final Lt59;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController"
    f = "UnityOfferwallController.kt"
    l = {
        0x61
    }
    m = "awaitConnect"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ls59;

.field public n:I


# direct methods
.method public constructor <init>(Ls59;Lf02;)V
    .locals 0

    iput-object p1, p0, Lt59;->m:Ls59;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lt59;->l:Ljava/lang/Object;

    iget p1, p0, Lt59;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lt59;->n:I

    iget-object p1, p0, Lt59;->m:Ls59;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ls59;->b(Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
