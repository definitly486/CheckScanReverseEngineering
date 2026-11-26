.class public final Lsn0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsn0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldp3<",
        "Lsn0$b;",
        ">;"
    }
.end annotation

.annotation runtime Lul2;
.end annotation


# static fields
.field public static final a:Lsn0$b$a;

.field private static final synthetic descriptor:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsn0$b$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsn0$b$a;->a:Lsn0$b$a;

    new-instance v1, Ls96;

    const-string v2, "com.warefly.checkscan.shared.bank.data.network.responses.BonusBlockResponse.BannerResponse"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "logoUrl"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "aspectRatio"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lsn0$b$a;->descriptor:Ls96;

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ldf4<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [Ldf4;

    sget-object v0, Lca8;->a:Lca8;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lpq2;->a:Lpq2;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lsn0$b$a;->descriptor:Ls96;

    invoke-interface {p1, p0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0, v2}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v1}, Ldu1;->decodeDoubleElement(Lmp7;I)D

    move-result-wide v1

    const/4 v3, 0x3

    move-object v10, v0

    move-wide v11, v1

    move v9, v3

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    move v7, v1

    move v6, v2

    move-wide v4, v3

    move-object v3, v0

    :goto_0
    if-eqz v7, :cond_4

    invoke-interface {p1, p0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    if-eqz v8, :cond_2

    if-ne v8, v1, :cond_1

    invoke-interface {p1, p0, v1}, Ldu1;->decodeDoubleElement(Lmp7;I)D

    move-result-wide v4

    or-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v8}, Lpg;->h(I)V

    return-object v0

    :cond_2
    invoke-interface {p1, p0, v2}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v3

    or-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v7, v2

    goto :goto_0

    :cond_4
    move-object v10, v3

    move-wide v11, v4

    move v9, v6

    :goto_1
    invoke-interface {p1, p0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v8, Lsn0$b;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lsn0$b;-><init>(ILjava/lang/String;DLwp7;)V

    return-object v8
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lsn0$b$a;->descriptor:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lsn0$b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lsn0$b$a;->descriptor:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lsn0$b;->b(Lsn0$b;Lgu1;Ls96;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ldf4<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
