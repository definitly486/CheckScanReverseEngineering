.class public final Ltf1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La57<",
        "Lb57;",
        ">;",
        "Lec0;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ltf1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltf1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Ltf1;->f:Ltf1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, La57;->a:Lz47;

    iget p0, p0, Lz47;->e:I

    const/16 v0, 0xc8

    if-gt v0, p0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    sget-object p0, Lec0;->Ignored:Lec0;

    return-object p0

    :cond_0
    const/16 v0, 0x191

    if-ne p0, v0, :cond_1

    sget-object p0, Lec0;->Unauthorized:Lec0;

    return-object p0

    :cond_1
    new-instance p0, Lretrofit2/HttpException;

    invoke-direct {p0, p1}, Lretrofit2/HttpException;-><init>(La57;)V

    throw p0
.end method
