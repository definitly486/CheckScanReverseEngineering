.class public final Ldp8;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.tasks.repositories.TasksRepositoryImpl"
    f = "TasksRepositoryImpl.kt"
    l = {
        0x74
    }
    m = "claimRewardedMultiTaskSubTask"
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ltp8;

.field public o:I


# direct methods
.method public constructor <init>(Ltp8;Lf02;)V
    .locals 0

    iput-object p1, p0, Ldp8;->n:Ltp8;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ldp8;->m:Ljava/lang/Object;

    iget p1, p0, Ldp8;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ldp8;->o:I

    iget-object p1, p0, Ldp8;->n:Ltp8;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Ltp8;->o(IILf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
