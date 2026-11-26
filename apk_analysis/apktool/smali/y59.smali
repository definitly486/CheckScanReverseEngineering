.class public final Ly59;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController"
    f = "UnityOfferwallController.kt"
    l = {
        0x51,
        0x53,
        0x56
    }
    m = "load"
.end annotation


# instance fields
.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ls59;

.field public p:I


# direct methods
.method public constructor <init>(Ls59;Lf02;)V
    .locals 0

    iput-object p1, p0, Ly59;->o:Ls59;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ly59;->n:Ljava/lang/Object;

    iget p1, p0, Ly59;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ly59;->p:I

    iget-object p1, p0, Ly59;->o:Ls59;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Ls59;->e(Ljava/lang/String;Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
