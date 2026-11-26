.class public final Lco1$a$a$a;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1"
    f = "Combine.kt"
    l = {
        0x1d,
        0x1e
    }
    m = "emit"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco1$a$a;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lco1$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco1$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public n:I


# direct methods
.method public constructor <init>(Lco1$a$a;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco1$a$a<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lco1$a$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lco1$a$a$a;->m:Lco1$a$a;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lco1$a$a$a;->l:Ljava/lang/Object;

    iget p1, p0, Lco1$a$a$a;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lco1$a$a$a;->n:I

    iget-object p1, p0, Lco1$a$a$a;->m:Lco1$a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lco1$a$a;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
