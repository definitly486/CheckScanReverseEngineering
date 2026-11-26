.class public final Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;

.field private static final TAG:Ljava/lang/String; = "ExcludedSupportedSizesQuirk"

.field private static final UNKNOWN_IMAGE_FORMAT:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getHuaweiP20LiteExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const-string p0, "0"

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x22

    if-eq p2, p0, :cond_0

    const/16 p0, 0x23

    if-eq p2, p0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x2d0

    invoke-direct {p0, p1, p1}, Landroid/util/Size;-><init>(II)V

    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x190

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    filled-new-array {p0, p1}, [Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method private final getNokia7PlusExcludedSizes(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const/16 p0, 0x23

    if-ne p1, p0, :cond_0

    new-instance v0, Landroid/util/Size;

    const/16 p0, 0xfc0

    const/16 p1, 0xbd0

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Landroid/util/Size;

    const/16 p0, 0xfa0

    const/16 v2, 0xbb8

    invoke-direct {v1, p0, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    const/16 p0, 0xcc0

    const/16 v3, 0x990

    invoke-direct {v2, p0, v3}, Landroid/util/Size;-><init>(II)V

    move p0, v3

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0xc80

    const/16 v5, 0x960

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, p1, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v5, Landroid/util/Size;

    const/16 p1, 0xba0

    invoke-direct {v5, p1, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, p0, p0}, Landroid/util/Size;-><init>(II)V

    filled-new-array/range {v0 .. v6}, [Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method private final getOnePlus6ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const-string p0, "0"

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x100

    if-ne p2, p0, :cond_0

    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x1040

    const/16 p2, 0xc30

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xfa0

    const/16 v0, 0xbb8

    invoke-direct {p1, p2, v0}, Landroid/util/Size;-><init>(II)V

    filled-new-array {p0, p1}, [Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method private final getOnePlus6TExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const-string p0, "0"

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x100

    if-ne p2, p0, :cond_0

    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x1040

    const/16 p2, 0xc30

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    new-instance p1, Landroid/util/Size;

    const/16 p2, 0xfa0

    const/16 v0, 0xbb8

    invoke-direct {p1, p2, v0}, Landroid/util/Size;-><init>(II)V

    filled-new-array {p0, p1}, [Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method private final getRedmiNote9ProExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const-string p0, "0"

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x100

    if-ne p2, p0, :cond_0

    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x2440

    const/16 p2, 0x1b20

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method private final getSamsungA05sExcludedSizes(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const/16 p0, 0x23

    if-ne p1, p0, :cond_0

    new-instance v0, Landroid/util/Size;

    const/16 p0, 0xf00

    const/16 p1, 0x870

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Landroid/util/Size;

    const/16 p0, 0xcc0

    const/16 p1, 0x990

    invoke-direct {v1, p0, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    const/16 p0, 0xc80

    const/16 p1, 0x960

    invoke-direct {v2, p0, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    const/16 p0, 0xa80

    const/16 p1, 0x5e8

    invoke-direct {v3, p0, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v4, Landroid/util/Size;

    const/16 p0, 0x798

    const/16 p1, 0xa20

    invoke-direct {v4, p1, p0}, Landroid/util/Size;-><init>(II)V

    new-instance v5, Landroid/util/Size;

    const/16 p0, 0x794

    invoke-direct {v5, p1, p0}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Landroid/util/Size;

    const/16 p0, 0x780

    const/16 p1, 0x5a0

    invoke-direct {v6, p0, p1}, Landroid/util/Size;-><init>(II)V

    filled-new-array/range {v0 .. v6}, [Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method private final getSamsungJ7Api27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "0"

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x23

    const/16 v4, 0x22

    const/16 v5, 0x438

    const/16 v6, 0x480

    const/16 v7, 0x600

    const/16 v8, 0x780

    const/16 v9, 0x800

    if-eqz v2, :cond_2

    if-eq v1, v4, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_4

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v9, v7}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v9, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v8, v5}, Landroid/util/Size;-><init>(II)V

    filled-new-array {v0, v1, v2}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v1, Landroid/util/Size;

    const/16 v0, 0xc18

    const/16 v2, 0x1020

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    new-instance v0, Landroid/util/Size;

    const/16 v3, 0x912

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    const/16 v2, 0xc10

    invoke-direct {v3, v2, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v4, Landroid/util/Size;

    const/16 v2, 0x990

    const/16 v10, 0xcc0

    invoke-direct {v4, v10, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    const/16 v11, 0x72c

    invoke-direct {v2, v10, v11}, Landroid/util/Size;-><init>(II)V

    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v9, v7}, Landroid/util/Size;-><init>(II)V

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v9, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v8, v5}, Landroid/util/Size;-><init>(II)V

    move-object v5, v2

    move-object v8, v6

    move-object v6, v10

    move-object v2, v0

    filled-new-array/range {v1 .. v8}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v2, "1"

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    new-instance v10, Landroid/util/Size;

    const/16 v0, 0xa10

    const/16 v1, 0x78c

    invoke-direct {v10, v0, v1}, Landroid/util/Size;-><init>(II)V

    new-instance v11, Landroid/util/Size;

    const/16 v0, 0xa00

    const/16 v1, 0x5a0

    invoke-direct {v11, v0, v1}, Landroid/util/Size;-><init>(II)V

    new-instance v12, Landroid/util/Size;

    invoke-direct {v12, v8, v8}, Landroid/util/Size;-><init>(II)V

    new-instance v13, Landroid/util/Size;

    invoke-direct {v13, v9, v7}, Landroid/util/Size;-><init>(II)V

    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v9, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v15, Landroid/util/Size;

    invoke-direct {v15, v8, v5}, Landroid/util/Size;-><init>(II)V

    filled-new-array/range {v10 .. v15}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v0, Lkx2;->b:Lkx2;

    return-object v0
.end method

.method private final getSamsungJ7PrimeApi27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "0"

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x23

    const/16 v4, 0x22

    const/16 v5, 0x438

    const/16 v6, 0x480

    const/16 v7, 0x600

    const/16 v8, 0x72c

    const/16 v9, 0x780

    const/16 v10, 0x990

    const/16 v11, 0x800

    const/16 v12, 0xcc0

    if-eqz v2, :cond_2

    const/16 v0, 0x912

    const/16 v2, 0x1020

    const/16 v13, 0xc10

    if-eq v1, v4, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_4

    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v2, v0}, Landroid/util/Size;-><init>(II)V

    new-instance v15, Landroid/util/Size;

    invoke-direct {v15, v13, v13}, Landroid/util/Size;-><init>(II)V

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v12, v10}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v12, v8}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v11, v7}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v11, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v9, v5}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    filled-new-array/range {v14 .. v20}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v1, Landroid/util/Size;

    const/16 v3, 0xc18

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v0}, Landroid/util/Size;-><init>(II)V

    move-object v2, v3

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v13, v13}, Landroid/util/Size;-><init>(II)V

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v12, v10}, Landroid/util/Size;-><init>(II)V

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v12, v8}, Landroid/util/Size;-><init>(II)V

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v11, v7}, Landroid/util/Size;-><init>(II)V

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v11, v6}, Landroid/util/Size;-><init>(II)V

    move-object v6, v8

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v9, v5}, Landroid/util/Size;-><init>(II)V

    move-object v5, v0

    filled-new-array/range {v1 .. v8}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v2, "1"

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    new-instance v13, Landroid/util/Size;

    invoke-direct {v13, v12, v10}, Landroid/util/Size;-><init>(II)V

    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v12, v8}, Landroid/util/Size;-><init>(II)V

    new-instance v15, Landroid/util/Size;

    invoke-direct {v15, v10, v10}, Landroid/util/Size;-><init>(II)V

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v9, v9}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v11, v7}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v11, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v9, v5}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    filled-new-array/range {v13 .. v19}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v0, Lkx2;->b:Lkx2;

    return-object v0
.end method

.method private final getSamsungZFold4ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const-string p0, "1"

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x23

    if-ne p2, p0, :cond_0

    new-instance v0, Landroid/util/Size;

    const/16 p0, 0x500

    const/16 p1, 0x2d0

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Landroid/util/Size;

    const/16 p0, 0x780

    const/16 p1, 0x438

    invoke-direct {v1, p0, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    const/16 p2, 0x900

    const/16 v3, 0x510

    invoke-direct {v2, p2, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    const/16 p2, 0x280

    const/16 v4, 0x168

    invoke-direct {v3, p2, v4}, Landroid/util/Size;-><init>(II)V

    new-instance v4, Landroid/util/Size;

    const/16 p2, 0xb1

    const/16 v5, 0x90

    invoke-direct {v4, p2, v5}, Landroid/util/Size;-><init>(II)V

    new-instance v5, Landroid/util/Size;

    const/16 p2, 0x920

    invoke-direct {v5, p2, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Landroid/util/Size;

    const/16 p2, 0x960

    invoke-direct {v6, p2, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v7, Landroid/util/Size;

    const/16 p1, 0x338

    invoke-direct {v7, p0, p1}, Landroid/util/Size;-><init>(II)V

    new-instance v8, Landroid/util/Size;

    const/16 p0, 0x440

    invoke-direct {v8, p0, p0}, Landroid/util/Size;-><init>(II)V

    new-instance v9, Landroid/util/Size;

    const/16 p0, 0x6c0

    invoke-direct {v9, p0, p0}, Landroid/util/Size;-><init>(II)V

    new-instance v10, Landroid/util/Size;

    const/16 p0, 0xab0

    invoke-direct {v10, p0, p0}, Landroid/util/Size;-><init>(II)V

    new-instance v11, Landroid/util/Size;

    const/16 p0, 0x720

    const/16 p1, 0x2c8

    invoke-direct {v11, p0, p1}, Landroid/util/Size;-><init>(II)V

    filled-new-array/range {v0 .. v11}, [Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method


# virtual methods
.method public final getExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isOnePlus6$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getOnePlus6ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isOnePlus6T$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getOnePlus6TExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isHuaweiP20Lite$camera_camera2()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2, v2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getHuaweiP20LiteExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungJ7PrimeApi27Above$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, v2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7PrimeApi27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungJ7Api27Above$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2, v2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7Api27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isRedmiNote9Pro$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getRedmiNote9ProExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungA05s$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungA05sExcludedSizes(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isNokia7Plus$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getNokia7PlusExcludedSizes(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungZFold4$camera_camera2()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungZFold4ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p0, "ExcludedSupportedSizesQuirk"

    const-string p1, "Cannot retrieve list of supported sizes to exclude on this device."

    invoke-static {p0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public final getExcludedSizes(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isHuaweiP20Lite$camera_camera2()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v2, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getHuaweiP20LiteExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungJ7PrimeApi27Above$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0, p1, v2, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7PrimeApi27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 118
    :cond_1
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungJ7Api27Above$camera_camera2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-direct {p0, p1, v2, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7Api27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 120
    :cond_2
    const-string p0, "ExcludedSupportedSizesQuirk"

    const-string p1, "Cannot retrieve list of supported sizes to exclude on this device."

    invoke-static {p0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method
