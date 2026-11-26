.class public final Lx88$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx88;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldp3<",
        "Lx88;",
        ">;"
    }
.end annotation

.annotation runtime Lul2;
.end annotation


# static fields
.field public static final a:Lx88$a;

.field private static final synthetic descriptor:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lx88$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx88$a;->a:Lx88$a;

    new-instance v1, Ls96;

    const-string v2, "com.warefly.checkscan.shared.bank.data.network.responses.StepsBlockResponse"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "title"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "banners"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lx88$a;->descriptor:Ls96;

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ldf4<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lx88;->c:[Lcl4;

    const/4 v0, 0x2

    new-array v0, v0, [Ldf4;

    const/4 v1, 0x0

    sget-object v2, Lca8;->a:Lca8;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lx88$a;->descriptor:Ls96;

    invoke-interface {p1, p0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    sget-object v0, Lx88;->c:[Lcl4;

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p1, p0, v3}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxl2;

    invoke-interface {p1, p0, v2, v0, v4}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x3

    goto :goto_1

    :cond_0
    move v7, v2

    move v6, v3

    move-object v1, v4

    move-object v5, v1

    :goto_0
    if-eqz v7, :cond_4

    invoke-interface {p1, p0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    if-eqz v8, :cond_2

    if-ne v8, v2, :cond_1

    aget-object v8, v0, v2

    invoke-interface {v8}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lxl2;

    invoke-interface {p1, p0, v2, v8, v1}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    or-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v8}, Lpg;->h(I)V

    return-object v4

    :cond_2
    invoke-interface {p1, p0, v3}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v7, v3

    goto :goto_0

    :cond_4
    move-object v0, v1

    move-object v1, v5

    move v2, v6

    :goto_1
    invoke-interface {p1, p0}, Ldu1;->endStructure(Lmp7;)V

    new-instance p0, Lx88;

    invoke-direct {p0, v2, v1, v0, v4}, Lx88;-><init>(ILjava/lang/String;Ljava/util/List;Lwp7;)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lx88$a;->descriptor:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lx88;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lx88$a;->descriptor:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lx88;->c(Lx88;Lgu1;Ls96;)V

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
