.class public final Lef3$a;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$1$1"
    f = "Transform.kt"
    l = {
        0x43
    }
    m = "emit"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lef3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lef3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public n:I


# direct methods
.method public constructor <init>(Lef3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lef3<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lef3$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lef3$a;->m:Lef3;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lef3$a;->l:Ljava/lang/Object;

    iget p1, p0, Lef3$a;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lef3$a;->n:I

    iget-object p1, p0, Lef3$a;->m:Lef3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lef3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
