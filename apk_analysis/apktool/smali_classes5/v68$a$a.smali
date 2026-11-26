.class public final Lv68$a$a;
.super Lf02;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1"
    f = "SharingStarted.kt"
    l = {
        0x71
    }
    m = "collect"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv68$a;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public m:I

.field public final synthetic n:Lv68$a;


# direct methods
.method public constructor <init>(Lv68$a;Le02;)V
    .locals 0

    iput-object p1, p0, Lv68$a$a;->n:Lv68$a;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lv68$a$a;->l:Ljava/lang/Object;

    iget p1, p0, Lv68$a$a;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv68$a$a;->m:I

    iget-object p1, p0, Lv68$a$a;->n:Lv68$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lv68$a;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
