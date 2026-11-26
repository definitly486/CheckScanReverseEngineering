.class public final Lbj0;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.decode.BitmapFactoryDecoder"
    f = "BitmapFactoryDecoder.kt"
    l = {
        0xd5,
        0x28
    }
    m = "decode"
    v = 0x1
.end annotation


# instance fields
.field public l:Leo7;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Laj0;

.field public o:I


# direct methods
.method public constructor <init>(Laj0;Lf02;)V
    .locals 0

    iput-object p1, p0, Lbj0;->n:Laj0;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lbj0;->m:Ljava/lang/Object;

    iget p1, p0, Lbj0;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lbj0;->o:I

    iget-object p1, p0, Lbj0;->n:Laj0;

    invoke-virtual {p1, p0}, Laj0;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
