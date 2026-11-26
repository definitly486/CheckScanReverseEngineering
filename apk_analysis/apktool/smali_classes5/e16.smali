.class public final Le16;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.device.data.repositoriesImpl.PackageManagerRepositoryImpl"
    f = "PackageManagerRepositoryImpl.kt"
    l = {
        0x17
    }
    m = "getAppSchemes"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lf16;

.field public n:I


# direct methods
.method public constructor <init>(Lf16;Lf02;)V
    .locals 0

    iput-object p1, p0, Le16;->m:Lf16;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le16;->l:Ljava/lang/Object;

    iget p1, p0, Le16;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le16;->n:I

    iget-object p1, p0, Le16;->m:Lf16;

    invoke-virtual {p1, p0}, Lf16;->b(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
