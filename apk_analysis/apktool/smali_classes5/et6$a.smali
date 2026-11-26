.class public final Let6$a;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.reactive.PublisherAsFlow"
    f = "ReactiveFlow.kt"
    l = {
        0x59,
        0x5b
    }
    m = "collectImpl"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Let6;->l(Lo22;Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public l:Lid3;

.field public m:Lay6;

.field public n:J

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Let6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Let6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public q:I


# direct methods
.method public constructor <init>(Let6;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Let6<",
            "TT;>;",
            "Le02<",
            "-",
            "Let6$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Let6$a;->p:Let6;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Let6$a;->o:Ljava/lang/Object;

    iget p1, p0, Let6$a;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Let6$a;->q:I

    iget-object p1, p0, Let6$a;->p:Let6;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Let6;->l(Lo22;Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
