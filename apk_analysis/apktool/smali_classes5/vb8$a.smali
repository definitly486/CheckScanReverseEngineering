.class public final Lvb8$a;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.SubscribedSharedFlow"
    f = "Share.kt"
    l = {
        0x1ba
    }
    m = "collect"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvb8;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lvb8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb8<",
            "TT;>;"
        }
    .end annotation
.end field

.field public n:I


# direct methods
.method public constructor <init>(Lvb8;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb8<",
            "TT;>;",
            "Le02<",
            "-",
            "Lvb8$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lvb8$a;->m:Lvb8;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lvb8$a;->l:Ljava/lang/Object;

    iget p1, p0, Lvb8$a;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lvb8$a;->n:I

    iget-object p1, p0, Lvb8$a;->m:Lvb8;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lvb8;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
