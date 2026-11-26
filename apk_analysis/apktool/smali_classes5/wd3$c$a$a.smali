.class public final Lwd3$c$a$a;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1"
    f = "Delay.kt"
    l = {
        0xcc
    }
    m = "emit"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwd3$c$a;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lwd3$c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwd3$c$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public n:I


# direct methods
.method public constructor <init>(Lwd3$c$a;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd3$c$a<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lwd3$c$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lwd3$c$a$a;->m:Lwd3$c$a;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lwd3$c$a$a;->l:Ljava/lang/Object;

    iget p1, p0, Lwd3$c$a$a;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lwd3$c$a$a;->n:I

    iget-object p1, p0, Lwd3$c$a$a;->m:Lwd3$c$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lwd3$c$a;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
