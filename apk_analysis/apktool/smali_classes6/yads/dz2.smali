.class public final Lyads/dz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/dz2;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/dz2;

    invoke-direct {v0}, Lyads/dz2;-><init>()V

    sput-object v0, Lyads/dz2;->a:Lyads/dz2;

    new-instance v1, Ls96;

    const-string v2, "com.monetization.ads.base.model.fonts.FontParameters"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "urls"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/dz2;->b:Ls96;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 2

    sget-object p0, Lyads/lz2;->a:Lyads/lz2;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ldf4;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 8

    sget-object p0, Lyads/dz2;->b:Ls96;

    invoke-interface {p1, p0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lyads/lz2;->a:Lyads/lz2;

    invoke-interface {p1, p0, v2, v0, v3}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/nz2;

    goto :goto_1

    :cond_0
    move v4, v1

    move v5, v2

    move-object v0, v3

    :goto_0
    if-eqz v4, :cond_3

    invoke-interface {p1, p0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    if-nez v6, :cond_1

    sget-object v5, Lyads/lz2;->a:Lyads/lz2;

    invoke-interface {p1, p0, v2, v5, v0}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/nz2;

    move v5, v1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lpg;->h(I)V

    return-object v3

    :cond_2
    move v4, v2

    goto :goto_0

    :cond_3
    move v1, v5

    :goto_1
    invoke-interface {p1, p0}, Ldu1;->endStructure(Lmp7;)V

    new-instance p0, Lyads/fz2;

    invoke-direct {p0, v1, v0}, Lyads/fz2;-><init>(ILyads/nz2;)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/dz2;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lyads/fz2;

    sget-object p0, Lyads/dz2;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    sget-object v0, Lyads/lz2;->a:Lyads/lz2;

    iget-object p2, p2, Lyads/fz2;->a:Lyads/nz2;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0, p2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
