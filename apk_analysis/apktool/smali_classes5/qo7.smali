.class public final Lqo7;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.device.domain.useCases.SendDeviceInfoUseCase"
    f = "SendDeviceInfoUseCase.kt"
    l = {
        0x13,
        0x1b,
        0x1d
    }
    m = "invoke"
.end annotation


# instance fields
.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Lro7;

.field public u:I


# direct methods
.method public constructor <init>(Lro7;Lf02;)V
    .locals 0

    iput-object p1, p0, Lqo7;->t:Lro7;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lqo7;->s:Ljava/lang/Object;

    iget p1, p0, Lqo7;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lqo7;->u:I

    iget-object p1, p0, Lqo7;->t:Lro7;

    invoke-virtual {p1, p0}, Lro7;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
