.class public final Ltb8;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.SubscribedFlowCollector"
    f = "Share.kt"
    l = {
        0x1db,
        0x1df
    }
    m = "onSubscription"
    v = 0x1
.end annotation


# instance fields
.field public l:Lpb7;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lub8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lub8<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public o:I


# direct methods
.method public constructor <init>(Lub8;Lf02;)V
    .locals 0

    iput-object p1, p0, Ltb8;->n:Lub8;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ltb8;->m:Ljava/lang/Object;

    iget p1, p0, Ltb8;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltb8;->o:I

    iget-object p1, p0, Ltb8;->n:Lub8;

    invoke-virtual {p1, p0}, Lub8;->c(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
