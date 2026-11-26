.class public final Lz66;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.personalform.domain.interactor.PersonalFormInteractor"
    f = "PersonalFormInteractor.kt"
    l = {
        0x174
    }
    m = "updateEmail"
.end annotation


# instance fields
.field public l:Ljava/util/ArrayList;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lw66;

.field public p:I


# direct methods
.method public constructor <init>(Lw66;Lf02;)V
    .locals 0

    iput-object p1, p0, Lz66;->o:Lw66;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lz66;->n:Ljava/lang/Object;

    iget p1, p0, Lz66;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz66;->p:I

    iget-object p1, p0, Lz66;->o:Lw66;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lw66;->e(ZLf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
