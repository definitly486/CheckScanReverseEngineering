.class public final Lww;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.data.network.repositoryImpl.AuthRepositoryImpl"
    f = "AuthRepositoryImpl.kt"
    l = {
        0x6d
    }
    m = "addEmail"
.end annotation


# instance fields
.field public l:Ljava/lang/String;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ldx;

.field public o:I


# direct methods
.method public constructor <init>(Ldx;Lf02;)V
    .locals 0

    iput-object p1, p0, Lww;->n:Ldx;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lww;->m:Ljava/lang/Object;

    iget p1, p0, Lww;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lww;->o:I

    iget-object p1, p0, Lww;->n:Ldx;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ldx;->d(Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
