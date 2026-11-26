.class public final Lio/appmetrica/analytics/impl/a4;
.super Lio/appmetrica/analytics/impl/a6;
.source "SourceFile"


# instance fields
.field public r:Ljava/util/HashMap;

.field public s:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

.field public t:Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

.field public u:Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

.field public v:Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;

.field public w:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;


# direct methods
.method public constructor <init>(ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;J)V
    .locals 1

    .line 34
    const-string v0, ""

    invoke-direct {p0, v0, v0, p1, p2}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 35
    invoke-virtual {p0, p3, p4}, Lio/appmetrica/analytics/impl/a6;->b(J)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 44
    const-string v1, ""

    const-string v2, ""

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 1

    .line 32
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/a6;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a4;->r:Ljava/util/HashMap;

    invoke-virtual {p0, p5}, Lio/appmetrica/analytics/impl/a4;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/a4;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/a4;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->a:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lio/appmetrica/analytics/impl/a6;->setType(I)V

    invoke-virtual {p0, p4}, Lio/appmetrica/analytics/impl/a6;->setCustomType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 33
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lio/appmetrica/analytics/impl/a6;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a4;->r:Ljava/util/HashMap;

    .line 38
    invoke-virtual {p0, p4}, Lio/appmetrica/analytics/impl/a4;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 39
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/a4;->a([B)V

    .line 40
    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/a4;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p3}, Lio/appmetrica/analytics/impl/a6;->setType(I)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;J)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 43
    invoke-virtual {p0, p5, p6}, Lio/appmetrica/analytics/impl/a6;->b(J)V

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/F;)Lio/appmetrica/analytics/impl/a4;
    .locals 3

    .line 255
    new-instance v0, Lio/appmetrica/analytics/impl/a4;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/a4;-><init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 256
    sget-object p0, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const p0, 0xa011

    .line 257
    iput p0, v0, Lio/appmetrica/analytics/impl/a6;->d:I

    .line 258
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/F;->a()Lb36;

    move-result-object p0

    .line 259
    new-instance p1, Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lb36;->b:Ljava/lang/Object;

    .line 261
    check-cast v1, [B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 262
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/a4;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    .line 263
    iget-object p0, p0, Lb36;->c:Ljava/lang/Object;

    .line 264
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 265
    iput p0, v0, Lio/appmetrica/analytics/impl/a6;->g:I

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/Xi;)Lio/appmetrica/analytics/impl/a4;
    .locals 6

    new-instance v0, Lio/appmetrica/analytics/impl/a4;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/a4;-><init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    sget-object p0, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const p0, 0xa010

    iput p0, v0, Lio/appmetrica/analytics/impl/a6;->d:I

    new-instance p0, Lio/appmetrica/analytics/impl/Vi;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Vi;-><init>()V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/Revenue;

    iget-object v1, v1, Lio/appmetrica/analytics/Revenue;->currency:Ljava/util/Currency;

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Vi;->b:[B

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/Revenue;

    iget-wide v1, v1, Lio/appmetrica/analytics/Revenue;->priceMicros:J

    iput-wide v1, p0, Lio/appmetrica/analytics/impl/Vi;->f:J

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Xi;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/16 v3, 0xc8

    const-string v4, "revenue productID"

    invoke-direct {v1, v3, v4, v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/Revenue;

    iget-object v2, v2, Lio/appmetrica/analytics/Revenue;->productID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Vi;->c:[B

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/Revenue;

    iget-object v1, v1, Lio/appmetrica/analytics/Revenue;->quantity:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lio/appmetrica/analytics/impl/Vi;->a:I

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Xi;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/Revenue;

    iget-object v2, v2, Lio/appmetrica/analytics/Revenue;->payload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Vi;->d:[B

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/Revenue;

    iget-object v1, v1, Lio/appmetrica/analytics/Revenue;->receipt:Lio/appmetrica/analytics/Revenue$Receipt;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lio/appmetrica/analytics/impl/Qi;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Qi;-><init>()V

    iget-object v3, p1, Lio/appmetrica/analytics/impl/Xi;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/SubstituteTrimmer;

    iget-object v4, p1, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/Revenue;

    iget-object v4, v4, Lio/appmetrica/analytics/Revenue;->receipt:Lio/appmetrica/analytics/Revenue$Receipt;

    iget-object v4, v4, Lio/appmetrica/analytics/Revenue$Receipt;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/SubstituteTrimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/Revenue;

    iget-object v4, v4, Lio/appmetrica/analytics/Revenue;->receipt:Lio/appmetrica/analytics/Revenue$Receipt;

    iget-object v4, v4, Lio/appmetrica/analytics/Revenue$Receipt;->data:Ljava/lang/String;

    invoke-static {v4, v3}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->equalsNullSafety(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/Revenue;

    iget-object v4, v4, Lio/appmetrica/analytics/Revenue;->receipt:Lio/appmetrica/analytics/Revenue$Receipt;

    iget-object v4, v4, Lio/appmetrica/analytics/Revenue$Receipt;->data:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v5, p1, Lio/appmetrica/analytics/impl/Xi;->d:Lio/appmetrica/analytics/coreutils/internal/limitation/SubstituteTrimmer;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/Revenue;

    iget-object p1, p1, Lio/appmetrica/analytics/Revenue;->receipt:Lio/appmetrica/analytics/Revenue$Receipt;

    iget-object p1, p1, Lio/appmetrica/analytics/Revenue$Receipt;->signature:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/SubstituteTrimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v1, Lio/appmetrica/analytics/impl/Qi;->a:[B

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v1, Lio/appmetrica/analytics/impl/Qi;->b:[B

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Vi;->e:Lio/appmetrica/analytics/impl/Qi;

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/a4;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/a6;->g:I

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/uo;)Lio/appmetrica/analytics/impl/a6;
    .locals 3

    .line 245
    invoke-static {}, Lio/appmetrica/analytics/impl/a4;->o()Lio/appmetrica/analytics/impl/a6;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/a6;->setValue(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/a6;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/a6;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v1, 0x1500

    iput v1, v0, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/a6;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static n()Lio/appmetrica/analytics/impl/a6;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/a6;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v1, 0x1600

    iput v1, v0, Lio/appmetrica/analytics/impl/a6;->d:I

    return-object v0
.end method

.method public static o()Lio/appmetrica/analytics/impl/a6;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/a6;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const v1, 0xa001

    iput v1, v0, Lio/appmetrica/analytics/impl/a6;->d:I

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/a4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lio/appmetrica/analytics/impl/Z3;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/appmetrica/analytics/impl/a4;"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a4;->r:Ljava/util/HashMap;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 4

    .line 229
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    const/16 v1, 0x3e8

    const-string v2, "event name"

    invoke-direct {v0, v1, v2, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a4;->s:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    .line 230
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

    const-string v1, "event value"

    const v2, 0x3c000

    invoke-direct {v0, v2, v1, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a4;->t:Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

    .line 231
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

    const v1, 0xfa000

    const-string v3, "event extended value"

    invoke-direct {v0, v1, v3, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a4;->u:Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

    .line 232
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;

    const-string v1, "event value bytes"

    invoke-direct {v0, v2, v1, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a4;->v:Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;

    .line 233
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    const/16 v1, 0xc8

    const-string v2, "user profile id"

    invoke-direct {v0, v1, v2, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a4;->w:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Z3;)V
    .locals 2

    .line 247
    invoke-static {p1, p2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->equalsNullSafety(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 248
    iget-object v1, p0, Lio/appmetrica/analytics/impl/a4;->r:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 249
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p2

    array-length p2, p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 250
    invoke-virtual {v1, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :goto_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/a4;->r:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 253
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p2, p3

    goto :goto_1

    .line 254
    :cond_1
    iput p2, p0, Lio/appmetrica/analytics/impl/a6;->g:I

    return-void
.end method

.method public final a([B)V
    .locals 5

    .line 234
    iget-object v0, p0, Lio/appmetrica/analytics/impl/a4;->v:Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 235
    sget-object v1, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/impl/Z3;

    .line 236
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-eqz p1, :cond_0

    .line 237
    array-length p1, p1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 238
    array-length v2, v0

    goto :goto_1

    :cond_1
    move v2, v3

    .line 239
    :goto_1
    iget-object v4, p0, Lio/appmetrica/analytics/impl/a4;->r:Ljava/util/HashMap;

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 240
    :cond_2
    iget-object p1, p0, Lio/appmetrica/analytics/impl/a4;->r:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :goto_2
    iget-object p1, p0, Lio/appmetrica/analytics/impl/a4;->r:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 242
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_3

    .line 243
    :cond_3
    iput v3, p0, Lio/appmetrica/analytics/impl/a6;->g:I

    .line 244
    invoke-super {p0, v0}, Lio/appmetrica/analytics/impl/a6;->setValueBytes([B)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a4;->w:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->h:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a4;->s:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lio/appmetrica/analytics/impl/Z3;->a:Lio/appmetrica/analytics/impl/Z3;

    invoke-virtual {p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/a4;->a(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Z3;)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a4;->t:Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/impl/Z3;

    invoke-virtual {p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/a4;->a(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Z3;)V

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lio/appmetrica/analytics/impl/a4;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a4;->u:Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lio/appmetrica/analytics/impl/Z3;->b:Lio/appmetrica/analytics/impl/Z3;

    invoke-virtual {p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/a4;->a(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Z3;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final p()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lio/appmetrica/analytics/impl/Z3;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a4;->r:Ljava/util/HashMap;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/a4;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->a:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/a4;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    return-void
.end method

.method public final setValueBytes([B)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/a4;->a([B)V

    return-void
.end method
