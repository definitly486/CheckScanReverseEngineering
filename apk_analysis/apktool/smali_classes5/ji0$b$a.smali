.class public final Lji0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lji0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldp3<",
        "Lji0$b;",
        ">;"
    }
.end annotation

.annotation runtime Lul2;
.end annotation


# static fields
.field public static final a:Lji0$b$a;

.field private static final synthetic descriptor:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lji0$b$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lji0$b$a;->a:Lji0$b$a;

    new-instance v1, Ls96;

    const-string v2, "com.warefly.checkscan.shared.bank.data.network.responses.BenefitsBlockResponse.BannerResponse"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "title"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "text"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "logoUrl"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lji0$b$a;->descriptor:Ls96;

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

    const/4 p0, 0x3

    new-array p0, p0, [Ldf4;

    sget-object v0, Lca8;->a:Lca8;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lji0$b$a;->descriptor:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v0, v5}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v4}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v3}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    move-object v13, v2

    move-object v15, v3

    move-object v14, v4

    move v12, v5

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    move v10, v4

    move v9, v5

    :goto_0
    if-eqz v10, :cond_5

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    if-eqz v11, :cond_3

    if-eq v11, v4, :cond_2

    if-ne v11, v3, :cond_1

    invoke-interface {v1, v0, v3}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v7

    or-int/lit8 v9, v9, 0x4

    goto :goto_0

    :cond_1
    invoke-static {v11}, Lpg;->h(I)V

    return-object v2

    :cond_2
    invoke-interface {v1, v0, v4}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v8

    or-int/lit8 v9, v9, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {v1, v0, v5}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v6

    or-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    move v10, v5

    goto :goto_0

    :cond_5
    move-object v13, v6

    move-object v15, v7

    move-object v14, v8

    move v12, v9

    :goto_1
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v11, Lji0$b;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lji0$b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwp7;)V

    return-object v11
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lji0$b$a;->descriptor:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lji0$b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lji0$b$a;->descriptor:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lji0$b;->d(Lji0$b;Lgu1;Ls96;)V

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
