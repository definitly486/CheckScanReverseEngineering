.class public final Lop8;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.tasks.repositories.TasksRepositoryImpl"
    f = "TasksRepositoryImpl.kt"
    l = {
        0x42,
        0x43,
        0x45
    }
    m = "getPromocodeTaskDetails"
.end annotation


# instance fields
.field public l:Lbo8;

.field public m:Ljq6;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ltp8;

.field public p:I


# direct methods
.method public constructor <init>(Ltp8;Lf02;)V
    .locals 0

    iput-object p1, p0, Lop8;->o:Ltp8;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lop8;->n:Ljava/lang/Object;

    iget p1, p0, Lop8;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lop8;->p:I

    iget-object p1, p0, Lop8;->o:Ltp8;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ltp8;->i(ILf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
