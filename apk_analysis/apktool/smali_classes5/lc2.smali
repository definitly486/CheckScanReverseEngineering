.class public abstract Llc2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llc2$a;,
        Llc2$b;,
        Llc2$c;,
        Llc2$d;,
        Llc2$e;
    }
.end annotation

.annotation runtime Lup7;
    with = Lmc2;
.end annotation


# static fields
.field public static final Companion:Llc2$a;

.field public static final a:Llc2$c;

.field public static final b:Llc2$d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Llc2$a;

    invoke-direct {v0}, Llc2$a;-><init>()V

    sput-object v0, Llc2;->Companion:Llc2$a;

    new-instance v0, Llc2$e;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Llc2$e;-><init>(J)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Llc2$e;->b(I)Llc2$e;

    move-result-object v0

    invoke-virtual {v0, v1}, Llc2$e;->b(I)Llc2$e;

    move-result-object v0

    invoke-virtual {v0, v1}, Llc2$e;->b(I)Llc2$e;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Llc2$e;->b(I)Llc2$e;

    move-result-object v0

    invoke-virtual {v0, v1}, Llc2$e;->b(I)Llc2$e;

    new-instance v0, Llc2$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Llc2$c;-><init>(I)V

    sput-object v0, Llc2;->a:Llc2$c;

    new-instance v2, Llc2$c;

    iget v0, v0, Llc2$c;->c:I

    const/4 v3, 0x7

    invoke-static {v0, v3}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    invoke-direct {v2, v0}, Llc2$c;-><init>(I)V

    new-instance v0, Llc2$d;

    invoke-direct {v0, v1}, Llc2$d;-><init>(I)V

    sput-object v0, Llc2;->b:Llc2$d;

    new-instance v1, Llc2$d;

    iget v0, v0, Llc2$d;->c:I

    const/4 v2, 0x3

    invoke-static {v0, v2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    invoke-direct {v1, v2}, Llc2$d;-><init>(I)V

    new-instance v1, Llc2$d;

    const/16 v2, 0xc

    invoke-static {v0, v2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    invoke-direct {v1, v0}, Llc2$d;-><init>(I)V

    new-instance v0, Llc2$d;

    iget v1, v1, Llc2$d;->c:I

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v1

    invoke-direct {v0, v1}, Llc2$d;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
