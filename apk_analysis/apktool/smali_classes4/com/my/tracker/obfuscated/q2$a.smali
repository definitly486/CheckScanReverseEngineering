.class Lcom/my/tracker/obfuscated/q2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/w0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/tracker/obfuscated/q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:[Lcom/my/tracker/obfuscated/w2;

.field private b:J


# direct methods
.method private constructor <init>([Lcom/my/tracker/obfuscated/w2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/q2$a;->a:[Lcom/my/tracker/obfuscated/w2;

    return-void
.end method

.method public static a([Lcom/my/tracker/obfuscated/w2;)Lcom/my/tracker/obfuscated/q2$a;
    .locals 1

    .line 41
    new-instance v0, Lcom/my/tracker/obfuscated/q2$a;

    invoke-direct {v0, p0}, Lcom/my/tracker/obfuscated/q2$a;-><init>([Lcom/my/tracker/obfuscated/w2;)V

    return-object v0
.end method

.method private a(Lcom/my/tracker/obfuscated/w2;Lcom/my/tracker/obfuscated/q;)V
    .locals 1

    .line 43
    :try_start_0
    invoke-virtual {p1}, Lcom/my/tracker/obfuscated/w2;->b()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/my/tracker/obfuscated/v1;->b([B)I

    .line 44
    iget-wide p0, p0, Lcom/my/tracker/obfuscated/q2$a;->b:J

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p0, p1}, Lcom/my/tracker/obfuscated/v1;->a(IJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 45
    :catch_0
    const-string p0, "TimeSpentPacketSender: something went wrong while extracting protobuf data, return empty result"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 40
    const-string p0, "application/octet-stream"

    return-object p0
.end method

.method public a(J)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/my/tracker/obfuscated/q2$a;->b:J

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 6

    new-instance v0, Lcom/my/tracker/obfuscated/q;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/my/tracker/obfuscated/q;-><init>(I)V

    new-instance v2, Lcom/my/tracker/obfuscated/q;

    invoke-direct {v2, v1}, Lcom/my/tracker/obfuscated/q;-><init>(I)V

    iget-object v1, p0, Lcom/my/tracker/obfuscated/q2$a;->a:[Lcom/my/tracker/obfuscated/w2;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q;->a()V

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/q;->a()V

    invoke-direct {p0, v5, v2}, Lcom/my/tracker/obfuscated/q2$a;->a(Lcom/my/tracker/obfuscated/w2;Lcom/my/tracker/obfuscated/q;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2}, Lcom/my/tracker/obfuscated/v1;->a(ILcom/my/tracker/obfuscated/q;)I

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/q;->a(Ljava/io/OutputStream;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()[Lcom/my/tracker/obfuscated/w2;
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/q2$a;->a:[Lcom/my/tracker/obfuscated/w2;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/my/tracker/obfuscated/q2$a;->a:[Lcom/my/tracker/obfuscated/w2;

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/my/tracker/obfuscated/q2$a;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ChunkProtobufPacket]\n| sendTimestamp = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/my/tracker/obfuscated/q2$a;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n| contain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/q2$a;->a:[Lcom/my/tracker/obfuscated/w2;

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " packets: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n| content (base64): "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n[/ChunkProtobufPacket]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
