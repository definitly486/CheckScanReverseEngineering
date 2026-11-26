.class public final Lyads/la4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/la4;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/la4;

    invoke-direct {v0}, Lyads/la4;-><init>()V

    sput-object v0, Lyads/la4;->a:Lyads/la4;

    new-instance v1, Ls96;

    const-string v2, "com.monetization.ads.utils.logger.model.MobileAdsSdkLog"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "timestamp"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "type"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "tag"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "text"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/la4;->b:Ls96;

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

    const/4 p0, 0x4

    new-array p0, p0, [Ldf4;

    sget-object v0, Lgw4;->a:Lgw4;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lca8;->a:Lca8;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const/4 v1, 0x3

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 21

    sget-object v0, Lyads/la4;->b:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v0, v6}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v6

    invoke-interface {v1, v0, v5}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v4}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v3}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v19, v4

    move v15, v5

    move-wide/from16 v16, v6

    goto :goto_1

    :cond_0
    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    move-object v9, v2

    move v13, v5

    move v10, v6

    move-wide v11, v7

    move-object v7, v9

    move-object v8, v7

    :goto_0
    if-eqz v13, :cond_6

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    if-eqz v14, :cond_4

    if-eq v14, v5, :cond_3

    if-eq v14, v4, :cond_2

    if-ne v14, v3, :cond_1

    invoke-interface {v1, v0, v3}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v8

    or-int/lit8 v10, v10, 0x8

    goto :goto_0

    :cond_1
    invoke-static {v14}, Lpg;->h(I)V

    return-object v2

    :cond_2
    invoke-interface {v1, v0, v4}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v9

    or-int/lit8 v10, v10, 0x4

    goto :goto_0

    :cond_3
    invoke-interface {v1, v0, v5}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v7

    or-int/lit8 v10, v10, 0x2

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0, v6}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v11

    or-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    move v13, v6

    goto :goto_0

    :cond_6
    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object/from16 v19, v9

    move v15, v10

    move-wide/from16 v16, v11

    :goto_1
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v14, Lyads/na4;

    invoke-direct/range {v14 .. v20}, Lyads/na4;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v14
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/la4;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lyads/na4;

    sget-object p0, Lyads/la4;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    iget-wide v0, p2, Lyads/na4;->a:J

    const/4 v2, 0x0

    invoke-interface {p1, p0, v2, v0, v1}, Lgu1;->encodeLongElement(Lmp7;IJ)V

    iget-object v0, p2, Lyads/na4;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    iget-object v0, p2, Lyads/na4;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    iget-object p2, p2, Lyads/na4;->d:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, p0, v0, p2}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
