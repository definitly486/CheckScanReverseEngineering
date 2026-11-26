.class public final Lue3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lue3;->c(Lhd3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lid3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr07;


# direct methods
.method public constructor <init>(Lr07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lue3$c;->b:Lr07;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p2, p0, Lue3$c;->b:Lr07;

    iput-object p1, p2, Lr07;->b:Ljava/lang/Object;

    new-instance p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
