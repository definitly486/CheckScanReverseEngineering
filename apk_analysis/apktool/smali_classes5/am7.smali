.class public final Lam7;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.selects.SelectImplementation"
    f = "Select.kt"
    l = {
        0x1c2,
        0x1c5
    }
    m = "doSelectSuspend"
    v = 0x1
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lzl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzl7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public n:I


# direct methods
.method public constructor <init>(Lzl7;Lf02;)V
    .locals 0

    iput-object p1, p0, Lam7;->m:Lzl7;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lam7;->l:Ljava/lang/Object;

    iget p1, p0, Lam7;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lam7;->n:I

    sget p1, Lzl7;->h:I

    iget-object p1, p0, Lam7;->m:Lzl7;

    invoke-virtual {p1, p0}, Lzl7;->h(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
