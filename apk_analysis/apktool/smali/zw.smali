.class public final Lzw;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.data.network.repositoryImpl.AuthRepositoryImpl"
    f = "AuthRepositoryImpl.kt"
    l = {
        0x22
    }
    m = "signIn"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ldx;

.field public n:I


# direct methods
.method public constructor <init>(Ldx;Lf02;)V
    .locals 0

    iput-object p1, p0, Lzw;->m:Ldx;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lzw;->l:Ljava/lang/Object;

    iget p1, p0, Lzw;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lzw;->n:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lzw;->m:Ldx;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Ldx;->e(Ljava/lang/String;ZLdw1;Ljava/lang/String;Ljava/lang/Boolean;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
