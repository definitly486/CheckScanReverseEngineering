.class public final Lg66;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.personalform.data.network.repositoryImpl.PersonalDataFormRepositoryImpl"
    f = "PersonalDataFormRepositoryImpl.kt"
    l = {
        0x14
    }
    m = "updateProfileCity"
.end annotation


# instance fields
.field public l:I

.field public m:Ljava/lang/String;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lh66;

.field public p:I


# direct methods
.method public constructor <init>(Lh66;Lf02;)V
    .locals 0

    iput-object p1, p0, Lg66;->o:Lh66;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lg66;->n:Ljava/lang/Object;

    iget p1, p0, Lg66;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg66;->p:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lg66;->o:Lh66;

    invoke-virtual {v1, p1, v0, p0}, Lh66;->a(ILjava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
