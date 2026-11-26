.class public final Lb76;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.personalform.domain.interactor.PersonalFormInteractor"
    f = "PersonalFormInteractor.kt"
    l = {
        0x98
    }
    m = "updateProfileCity"
.end annotation


# instance fields
.field public l:Ljava/lang/String;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lw66;

.field public o:I


# direct methods
.method public constructor <init>(Lw66;Lf02;)V
    .locals 0

    iput-object p1, p0, Lb76;->n:Lw66;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lb76;->m:Ljava/lang/Object;

    iget p1, p0, Lb76;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lb76;->o:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lb76;->n:Lw66;

    invoke-virtual {v1, p1, v0, p0}, Lw66;->g(ILjava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
