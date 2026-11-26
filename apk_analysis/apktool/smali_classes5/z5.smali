.class public final Lz5;
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
        "Lwc9;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lz5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lz5;->f:Lz5;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, La57;->a:Lz47;

    iget p0, p0, Lz47;->e:I

    const/16 p1, 0xc8

    if-eq p0, p1, :cond_2

    const/16 p1, 0xce

    if-eq p0, p1, :cond_1

    const/16 p1, 0x196

    if-eq p0, p1, :cond_0

    sget-object p0, Lwc9;->Supported:Lwc9;

    return-object p0

    :cond_0
    sget-object p0, Lwc9;->Unsupported:Lwc9;

    return-object p0

    :cond_1
    sget-object p0, Lwc9;->NewerAvailable:Lwc9;

    return-object p0

    :cond_2
    sget-object p0, Lwc9;->Supported:Lwc9;

    return-object p0
.end method
