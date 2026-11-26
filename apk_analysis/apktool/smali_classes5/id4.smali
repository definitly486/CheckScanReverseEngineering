.class public final Lid4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Lgd4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lid4;

.field public static final b:Lop7;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lid4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lid4;->a:Lid4;

    sget-object v0, Lsp7$b;->a:Lsp7$b;

    const/4 v1, 0x0

    new-array v1, v1, [Lmp7;

    const-string v2, "kotlinx.serialization.json.JsonNull"

    invoke-static {v2, v0, v1}, Lrp7;->f(Ljava/lang/String;Lsp7;[Lmp7;)Lop7;

    move-result-object v0

    sput-object v0, Lid4;->b:Lop7;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltc0;->e(Lud2;)Lkc4;

    invoke-interface {p1}, Lud2;->decodeNotNullMark()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lud2;->decodeNull()Ljava/lang/Void;

    sget-object p0, Lgd4;->INSTANCE:Lgd4;

    return-object p0

    :cond_0
    new-instance p0, Lkotlinx/serialization/json/JsonDecodingException;

    const/4 p1, -0x1

    const/4 v0, 0x0

    const-string v1, "Expected \'null\' literal"

    invoke-static {p1, v1, v0, v0, v0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lid4;->b:Lop7;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lgd4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltc0;->f(Lux2;)V

    invoke-interface {p1}, Lux2;->encodeNull()V

    return-void
.end method
