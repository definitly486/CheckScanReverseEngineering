.class public final Lf78;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.decode.StaticImageDecoder"
    f = "StaticImageDecoder.kt"
    l = {
        0xa9
    }
    m = "decode"
    v = 0x1
.end annotation


# instance fields
.field public l:Lio7;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Le78;

.field public o:I


# direct methods
.method public constructor <init>(Le78;Lf02;)V
    .locals 0

    iput-object p1, p0, Lf78;->n:Le78;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lf78;->m:Ljava/lang/Object;

    iget p1, p0, Lf78;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lf78;->o:I

    iget-object p1, p0, Lf78;->n:Le78;

    invoke-virtual {p1, p0}, Le78;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
