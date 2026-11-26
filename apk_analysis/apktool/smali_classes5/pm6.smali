.class public final Lpm6;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.profile.data.repositories.ProfileRepositoryImpl"
    f = "ProfileRepositoryImpl.kt"
    l = {
        0x17,
        0x18
    }
    m = "fetchProfile"
.end annotation


# instance fields
.field public l:Lrm6;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lqm6;

.field public o:I


# direct methods
.method public constructor <init>(Lqm6;Lf02;)V
    .locals 0

    iput-object p1, p0, Lpm6;->n:Lqm6;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lpm6;->m:Ljava/lang/Object;

    iget p1, p0, Lpm6;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lpm6;->o:I

    iget-object p1, p0, Lpm6;->n:Lqm6;

    invoke-virtual {p1, p0}, Lqm6;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
