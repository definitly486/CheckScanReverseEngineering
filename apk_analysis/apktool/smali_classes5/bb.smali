.class public final Lbb;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.repositories.impl.bonuses.AdvantageRepositoryImpl"
    f = "AdvantageRepositoryImpl.kt"
    l = {
        0xa
    }
    m = "getBeforeRegistrationSlides"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcb;

.field public n:I


# direct methods
.method public constructor <init>(Lcb;Lf02;)V
    .locals 0

    iput-object p1, p0, Lbb;->m:Lcb;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lbb;->l:Ljava/lang/Object;

    iget p1, p0, Lbb;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lbb;->n:I

    iget-object p1, p0, Lbb;->m:Lcb;

    invoke-virtual {p1, p0}, Lcb;->a(Lf02;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
